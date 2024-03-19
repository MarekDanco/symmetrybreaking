"""Parse, flatten and ground input."""

from copy import deepcopy
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
        if isinstance(term2, Apply):
            for arg in term2.args:
                if not isinstance(arg, Var):
                    return False
            return True
    return False


def shallow3(lit):
    """Check shallow literals of the form 3 from paradoxpaper.
    Return values: 1 -> x!=y, 2 -> possibly form 2, 3 -> form 3."""
    term1, term2 = get_terms(lit)
    if isinstance(term1, Var):
        if isinstance(term2, Var):
            if lit.op == Parser.EQ:
                return 3
            return 1
    return 2


def var_first(lit):
    """Transform a shallow literal to the form "Var=Term"."""
    term1, term2 = get_terms(lit)
    return Apply(op=lit.op, args=[term1, term2])


class Flatten:
    """MACE like flattening for shallow literals of the form 2."""

    def __init__(self):
        self.rewritten_terms = dict()
        self.var_index = 0

    def update_atrbs(self, pos, index, hs):
        v = get_var(pos, index)
        self.var_index += 1
        self.rewritten_terms.update({hs: v})
        return v

    def rewrite(self, lit, pos, index):
        """Rewrite subterm of literal with a new variable."""
        term1, term2 = get_terms(lit)
        for i, arg in enumerate(term2.args):
            if not isinstance(arg, Var):
                arg_hash = tostr(arg)
                if arg_hash in self.rewritten_terms:
                    v = self.rewritten_terms[arg_hash]
                    term2.args[i] = v
                    l = Apply(op=lit.op, args=[term1, term2])
                    return l
                else:
                    v = self.update_atrbs(pos, index, arg_hash)
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
        while q:
            top = q.pop()
            if shallow(top):
                top = var_first(top)
                cl.literals.append(top)
            elif shallow3(top) == 3:
                cl.literals.append(top)
            else:
                term1, term2 = get_terms(top)
                if isinstance(term1, Var):
                    x = self.rewrite(top, pos, self.var_index)
                    q.append(x) if isinstance(x, Apply) else q.extend(x)
                else:  # none of the terms is Var
                    v = self.update_atrbs(pos, self.var_index, tostr(term2))
                    q.append(Apply(op=top.op, args=[v, term1]))
                    q.append(Apply(op="!=", args=[v, term2]))
        return cl


class Rename:
    """Rename nodes according to a given dict."""

    def __init__(self, rn):
        self.rn = rn

    def transform(self, t):
        """Entry point to the class. Call to obtain the transformed tree."""
        mapping = {
            Var: self.transform_Var,
            Const: self.transform_Const,
            Apply: self.transform_Apply,
            Clause: self.transform_Clause,
            CNF: self.transform_CNF,
        }
        return mapping[type(t)](t)

    def transform_Var(self, t):
        return self.rn.get(t, t)

    def transform_Const(self, t):
        """Transform given const, identity by default."""
        return t

    def transform_Apply(self, t):
        """Transform given const, identity by default."""
        return Apply(op=t.op, args=self.transform_all(t.args))

    def transform_Clause(self, t):
        """Transform given clause, identity by default."""
        return Clause(literals=self.transform_all(t.literals))

    def transform_CNF(self, t):
        """Transform given cnf, identity by default."""
        return CNF(clauses=self.transform_all(t.clauses))

    def transform_all(self, ts):
        """Given a sequence of trees it produces a list of transformed trees."""
        changed = False
        rv = []
        for t in ts:
            t1 = self.transform(t)
            changed = changed or (t1 is not t)
            rv.append(t1)
        return rv if changed else ts


def transform(tree):
    """Transform parsed tree into formula with clauses only containing shallow literals."""
    new_tree = CNF(clauses=[])
    for clause in tree.clauses:
        new_clause = Clause(literals=deepcopy(clause.literals))
        while True:
            unchanged = True
            rn = dict()  # rename dictionary
            for i, lit in enumerate(new_clause.literals):
                if shallow3(lit) == 1:
                    unchanged = False
                    rn.update({lit.args[0]: lit.args[1]})
                    new_clause = Clause(
                        literals=[
                            l for j, l in enumerate(new_clause.literals) if j != i
                        ]
                    )
                    break
            if unchanged:
                break
            new_clause = Rename(rn).transform(new_clause)
        new_tree.clauses.append(new_clause)

    flattened = CNF(clauses=[])
    for clause in new_tree.clauses:
        cl = Clause(literals=[])
        f = Flatten()
        for j, lit in enumerate(clause.literals):
            if shallow3(lit) == 1:
                print(lit)
                assert False
            cl.literals.extend(f.flatten(lit, j).literals)
        flattened.clauses.append(cl)
    return flattened


def get_prms(tup, lit, names):
    """Get parameters for a propositional variable."""
    sign = True if lit.op == Parser.EQ else False
    d = tup[names[lit.args[0].name]]  # first arg in equality is always Var
    func = lit.args[1]  # second is always Term
    if isinstance(func, Const):
        op = "_"
        args = [func.name]
    if isinstance(func, Apply):
        op = func.op
        args = [tup[names[arg.name]] for arg in func.args]
    return sign, op, args, d


def ground(ids, cl, s):
    """Ground a clause with elements of domain of size s."""
    clauses = []
    vars = collect(cl, Var)
    rep = len(vars)
    vars_names = [v.name for v in vars]
    names = {vars_names[i]: i for i in range(rep)}

    for tup in product(range(s), repeat=rep):
        gr = []  # grounding for current tuple
        add_gr = True
        for lit in cl.literals:
            add_lit = True
            if shallow3(lit) == 3:
                v1, v2 = get_terms(lit)
                if tup[names[v1.name]] == tup[names[v2.name]]:
                    add_gr = False
                    break
                else:
                    add_lit = False
            if add_lit:
                sign, op, args, d = get_prms(tup, lit, names)
                gr.append(var(ids, sign, op, args, d))  # dont append if x=y is false
        if add_gr:
            clauses += [gr]  # dont add grounding if x=y is true
    return clauses


def testme(inp):
    """Test the formula on input."""
    p = Parser()
    tree = p.parse(inp)

    print("input:")
    print(tostr(tree))

    flattened = transform(tree)
    print("flattened:")
    print(f"{tostr(flattened)}\n")


if __name__ == "__main__":
    testme("c*d!=d*c.")
    testme("(x*y)*(x*y)=w.")
    testme("d*e=d*x | e*x=d*w.")
    testme("x*y!= x*z | y=z.")
    testme("x*y=w | x*y = z | x!=y | y!=z | w!=z.")
