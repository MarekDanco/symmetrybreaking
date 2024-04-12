"""Parse, flatten and ground input."""

from copy import deepcopy
from collections import namedtuple, deque
from pyparsing import Suppress, Word, Forward, Optional, ZeroOrMore, Literal
from itertools import product
from basics import var, pick_one, print_cnf
from pysat.formula import IDPool


Apply = namedtuple("Apply", ["op", "args", "tag"])  # function applications, tag = 0
Var = namedtuple("Var", ["name", "tag"])  # variable nodes, tag = 1
Const = namedtuple("Const", ["name", "tag"])  # constants, tag = 2
Clause = namedtuple("Clause", ["literals"])
CNF = namedtuple("CNF", ["clauses"])


def mk_pref(_string, _location, tokens):
    """Auxiliary function that changes binary infix and unary postfix to prefix
    and creates the appropriate AST node."""
    if len(tokens) == 1:
        return tokens
    if len(tokens) == 2:
        a, b = tokens
        return Apply(op=b, args=[a], tag=0)
    a, b, c = tokens
    return Apply(op=b, args=[a, c], tag=0)


class Parser:
    """Simple parser for MACE like input."""

    DOT, VERTICAL, LPAR, RPAR = map(Suppress, ".|()")
    EQ, NEQ, PRIME, ASTERISK = map(Literal, ["=", "!=", "'", "*"])

    def __init__(self):
        var = Word("wxyz").set_parse_action(lambda s, loc, ts: Var(name=ts[0], tag=1))
        const = Word("cdefg").set_parse_action(
            lambda s, loc, ts: Const(name=ts[0], tag=2)
        )
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
        ).set_parse_action(lambda s, loc, ts: Clause(literals=list(ts)))
        self.clauses = ZeroOrMore(clause).set_parse_action(
            lambda s, loc, ts: CNF(clauses=list(ts))
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


def find_inv(t):
    """Check if the parsed tree contains inverses."""
    if isinstance(t, Apply) and t.op == Parser.PRIME:
        return True
    if isinstance(t, Var) or isinstance(t, Const):
        return False

    if isinstance(t, Apply):
        for arg in t.args:
            res = find_inv(arg)
            if res:
                return True
    if isinstance(t, Clause):
        for lit in t.literals:
            res = find_inv(lit)
            if res:
                return True
    if isinstance(t, CNF):
        for cl in t.clauses:
            res = find_inv(cl)
            if res:
                return True
    return False


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
    return Var(name=f"<{pos},{count}>", tag=1)


def get_terms(lit):
    """Return terms of Apply so that the first one is Var if possible."""
    term1, term2 = lit.args
    if term2.tag == 1:
        term1, term2 = term2, term1
    return term1, term2


def shallow(lit):
    """Check shallow literals of the form 2 from paradoxpaper."""
    term1, term2 = get_terms(lit)
    if term1.tag == 1:
        if term2.tag == 2:
            return True
        if term2.tag == 0:
            for arg in term2.args:
                if arg.tag != 1:
                    return False
            return True
    return False


def shallow3(lit):
    """Check shallow literals of the form 3 from paradoxpaper.
    Return values: 1 -> x!=y, 2 -> possibly form 2, 3 -> form 3."""
    term1, term2 = get_terms(lit)
    if term1.tag == 1:
        if term2.tag == 1:
            if lit.op == "=":
                return 3
            return 1
    return 2


def var_first(lit):
    """Transform a shallow literal to the form "Var=Term"."""
    term1, term2 = get_terms(lit)
    return Apply(op=lit.op, args=[term1, term2], tag=0)


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
            if arg.tag != 1:
                arg_hash = tostr(arg)
                if arg_hash in self.rewritten_terms:
                    v = self.rewritten_terms[arg_hash]
                    term2.args[i] = v
                    l = Apply(op=lit.op, args=[term1, term2], tag=0)
                    return l
                else:
                    v = self.update_atrbs(pos, index, arg_hash)
                    l1 = Apply(op="!=", args=[v, term2.args[i]], tag=0)
                    term2.args[i] = v
                    l2 = Apply(op=lit.op, args=[term1, term2], tag=0)
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
                if term1.tag == 1:
                    x = self.rewrite(top, pos, self.var_index)
                    q.append(x) if isinstance(x, Apply) else q.extend(x)
                else:  # none of the terms is Var
                    v = self.update_atrbs(pos, self.var_index, tostr(term2))
                    q.append(Apply(op=top.op, args=[v, term1], tag=0))
                    q.append(Apply(op="!=", args=[v, term2], tag=0))
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


class Grounding:
    """Clause grounding."""

    def __init__(self, s: int, ids) -> None:
        self.s = s
        rng = range(s)
        self.pairs = {self.s * x + y: (x, y) for x in rng for y in rng}
        self.ids = ids

    def get_prms(self, tup, lit, names):
        """Get parameters for a propositional variable."""
        sign = lit.op == "="
        d = tup[names[lit.args[0].name]]  # first arg in equality is always Var
        func = lit.args[1]  # second is always Term
        if func.tag == 2:
            op = "_"
            args = func.name
        if func.tag == 0:
            op = func.op
            if len(func.args) == 1:
                args = tup[names[func.args[0].name]]
            if len(func.args) == 2:
                x = tup[names[func.args[0].name]]
                y = tup[names[func.args[1].name]]
                args = self.pairs[self.s * x + y]
        return sign, op, args, d

    def ground(self, cl):
        """Ground a clause with elements of domain of size s."""
        clauses = []
        vars = set(sorted(collect(cl, Var)))
        rep = len(vars)
        vars_names = tuple(sorted([v.name for v in vars]))
        names = {vars_names[i]: i for i in range(rep)}

        for tup in product(range(self.s), repeat=rep):
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
                if add_lit:  # dont append if x!=y
                    sign, op, args, d = self.get_prms(tup, lit, names)
                    gr.append(var(self.ids, sign, op, args, d))
            if add_gr:  # dont add grounding if x=y
                clauses += [gr]
        return clauses

    def one_hot(self, constants, inverses):
        """Ensure 1-hot of all functions."""
        clauses = []
        rng = range(self.s)

        # *
        for x, y in product(rng, repeat=2):
            clauses += pick_one(
                [var(self.ids, True, "*", self.pairs[self.s * x + y], d) for d in rng]
            )
        # '
        if inverses:
            for x in rng:
                clauses += pick_one([var(self.ids, True, "'", x, d) for d in rng])
        # constants
        for cnst in constants:
            clauses += pick_one([var(self.ids, True, "_", cnst.name, d) for d in rng])
        return clauses


def testme(inp):
    """Test the formula on input."""
    p = Parser()
    tree = p.parse(inp)

    print("input:")
    print(tostr(tree))
    print(sorted(collect(tree, Var)))
    cl = tree.clauses[0]
    lit = cl.literals[0]
    op = lit.op
    print(op, type(op).__name__)


if __name__ == "__main__":
    testme("x=y.")
    # testme("x*y=w | x*y = z | x!=y | y!=z | w!=z.")
    # testme("x*e=x. e*x=x. x*(y*z)=(x*y)*z. x*x'=e. x'*x=e.")
    # testme("(x*y)*z = (((z*e)*x) * ((y*z)*e))*e. (e*e)*e = e.")
