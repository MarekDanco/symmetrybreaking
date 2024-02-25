"""Parse, flatten and ground input."""

from collections import namedtuple, deque
from pyparsing import Suppress, Word, Forward, Optional, ZeroOrMore, Literal
from itertools import product
from basics import var


Apply = namedtuple("Apply", ["op", "args"])  # function applications
Var = namedtuple("Var", ["name"])  # variable nodes
Const = namedtuple("Const", ["name"])  # constants
Clause = namedtuple("Clause", ["literals"])
CNF = namedtuple("CNF", ["clauses"])


def mk_pref(_string, _location, tokens):
    """Auxiliary function that changes binary infix and unary postfix to prefix
    and creates the appropriate AST node."""
    if len(tokens) == 1:
        return tokens
    if len(tokens) == 2:
        a, b = tokens
        return Apply(op=b, args=[a])
    a, b, c = tokens
    return Apply(op=b, args=[a, c])


class Parser:
    """Simple parser for MACE like input."""

    DOT, VERTICAL, LPAR, RPAR = map(Suppress, ".|()")
    EQ, NEQ, PRIME, ASTERISK = map(Literal, ["=", "!=", "'", "*"])

    def __init__(self):
        var = Word("wxyz").set_parse_action(lambda s, loc, ts: Var(ts[0]))
        const = Word("cdefg").set_parse_action(lambda s, loc, ts: Const(ts[0]))
        term = Forward()
        leaf = var | const
        inversion = (leaf + Optional(Parser.PRIME)).set_parse_action(mk_pref)
        nested = Parser.LPAR + term + Parser.RPAR
        factor = nested | inversion
        mul = (factor + Optional(Parser.ASTERISK + factor)).set_parse_action(mk_pref)
        term <<= mul
        rel_op = Parser.EQ | Parser.NEQ
        bin_op = (term + rel_op + term).set_parse_action(mk_pref)
        lit = bin_op
        clause = (
            lit + ZeroOrMore(Parser.VERTICAL + lit) + Parser.DOT
        ).set_parse_action(lambda s, loc, ts: Clause(list(ts)))
        self.clauses = ZeroOrMore(clause).set_parse_action(
            lambda s, loc, ts: CNF(list(ts))
        )

    def parse(self, string):
        """Parse the given string and return an AST."""
        return self.clauses.parse_string(string)[0]


def collect(t, tp):
    """Collects all vars/constants in the tree t."""
    rv = {t} if isinstance(t, tp) else set()
    if isinstance(t, Var):
        return rv
    if isinstance(t, Const):
        return rv
    if isinstance(t, Apply):
        return rv | {v for a in t.args for v in collect(a, tp)}
    if isinstance(t, Clause):
        return rv | {v for a in t.literals for v in collect(a, tp)}
    if isinstance(t, CNF):
        return rv | {v for a in t.clauses for v in collect(a, tp)}
    print(t, type(t).__name__)
    assert False


def tostr(t):
    """Basic print for ASTs."""
    if isinstance(t, (Var, Const)):
        return t.name
    if isinstance(t, Apply):
        return t.op + "(" + " ".join(map(tostr, t.args)) + ")"
    if isinstance(t, Clause):
        return " | ".join(map(tostr, t.literals)) + "."
    if isinstance(t, CNF):
        return "\n".join(map(tostr, t.clauses))
    print(t, type(t).__name__)
    assert False


def get_var(pos, count):
    """Return new variable for rewriting."""
    return Var(f"<{pos},{count}>")


def get_terms(lit):
    """Return terms of Apply so that the first one is Var if possible."""
    term1, term2 = lit.args
    if isinstance(term2, Var):
        term1, term2 = term2, term1
    return term1, term2


def shallow(lit):
    """Check shallow literals of the form 2 from paradoxpaper."""
    term1, term2 = get_terms(lit)
    if isinstance(term1, Var):
        if isinstance(term2, Const):
            return True
        for arg in term2.args:
            if not isinstance(arg, Var):
                return False
        return True
    return False


def var_first(lit):
    """Transform a shallow literal to the form "Var=Term"."""
    term1, term2 = get_terms(lit)
    return Apply(op=lit.op, args=[term1, term2])


class Flattener:
    """MACE like flattening."""

    def __init__(self):
        self.rewritten_constants = dict()

    def rewrite(self, lit, pos, count):
        """Rewrite subterm of literal with a new variable."""
        term1, term2 = get_terms(lit)
        for i, arg in enumerate(term2.args):
            if not isinstance(arg, Var):
                v = get_var(pos, count)
                l1 = Apply(op="!=", args=[v, term2.args[i]])
                term2.args[i] = v
                l2 = Apply(op=lit.op, args=[term1, term2])
                return l2, l1
        print(lit, type(lit).__name__)
        assert False

    def flatten(self, lit, pos):
        """Flatten a literal using stack."""
        q = deque()
        q.append(lit)
        cl = Clause(literals=[])
        count = 0  # counter for new variable index
        while q:
            top = q.pop()
            if shallow(top):
                top = var_first(top)
                cl.literals.append(top)
            else:
                term1, term2 = get_terms(top)
                if isinstance(term1, Var):
                    q.extend(self.rewrite(top, pos, count))
                    count += 1
                else:  # none of the terms is Var
                    v = get_var(pos, count)
                    q.append(Apply(op=top.op, args=[v, term1]))
                    q.append(Apply(op="!=", args=[v, term2]))
                    count += 1
        return cl


def transform(tree):
    """Transform parsed tree into formula with clauses only containing shallow literals."""
    flattened = CNF(clauses=[])
    for clause in tree.clauses:
        cl = Clause(literals=[])
        f = Flattener()
        for j, lit in enumerate(clause.literals):
            cl.literals.extend(f.flatten(lit, j).literals)
        flattened.clauses.append(cl)
    return flattened


def ground(ids, cl, s):
    """Ground a clause with elements of domain of size s."""
    clauses = []
    vars = collect(cl, Var)
    rep = len(vars)
    vars_names = [v.name for v in vars]

    names = {vars_names[i]: i for i in range(rep)}
    for tup in product(range(s), repeat=rep):
        gr = []  # grounding for current tuple
        for lit in cl.literals:
            sign = True if lit.op == "=" else False
            d = tup[names[lit.args[0].name]]  # first arg in equality is always Var
            func = lit.args[1]  # second is always Term
            if isinstance(func, Const):
                op = "_"
                args = [func.name]
            if isinstance(func, Apply):
                op = func.op
                args = [tup[names[arg.name]] for arg in func.args]
            gr.append(var(ids, sign, op, args, d))
        clauses += [gr]
    return clauses


def testme(inp):
    """Test the formula on input."""
    p = Parser()
    tree = p.parse(inp)

    print("input:")
    print(tostr(tree))

    flattened = transform(tree)
    print("flattened:")
    print(tostr(flattened))


if __name__ == "__main__":
    testme("c*d!=d*c.")
    testme("(x*y)*z=(x*y).")
    testme("(x*y)*(x*y)=w.")
    testme("(x*y)*z=x*((y*y)*z).")
