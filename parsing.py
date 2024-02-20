"""~"""

from collections import namedtuple, deque
from pyparsing import Suppress, Word, Forward, Optional, ZeroOrMore, Literal
from pysat.solvers import Solver
from pysat.formula import IDPool
from itertools import product
from basics import out, print_cnf, var, one_hot
from minmod import minimal


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
    """Return terms of literal so that the first one is Var if possible."""
    term1, term2 = lit.args
    if isinstance(term2, Var):
        term1, term2 = term2, term1
    return term1, term2


def shallow(lit):
    """Checks shallow literals of the form 2 from paradoxpaper."""
    term1, term2 = get_terms(lit)
    if isinstance(term1, Var):
        if isinstance(term2, Const):
            return True
        for arg in term2.args:
            if not isinstance(arg, Var):
                return False
        return True
    return False


def sub(lit, i, pos, count):
    """Rewrite subterm of literal with a variable."""
    term1, term2 = get_terms(lit)
    v = get_var(pos, count)
    l1 = Apply(op="!=", args=[v, term2.args[i]])
    term2.args[i] = v
    l2 = Apply(op=lit.op, args=[term1, term2])
    return l2, l1


def var_first(lit):
    """Transform a shallow literal on input to the form "Var=Term"."""
    term1, term2 = get_terms(lit)
    return Apply(op=lit.op, args=[term1, term2])


def flatten(lit, pos):
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
                for i, arg in enumerate(term2.args):
                    if not isinstance(arg, Var):
                        q.extend(sub(top, i, pos, count))
                        count += 1
                        break
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
        for j, lit in enumerate(clause.literals):
            cl.literals.extend(flatten(lit, j).literals)
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
    """Test on string inp."""
    p = Parser()

    tree = p.parse(inp)
    flattened = transform(tree)

    s = 6
    ids = IDPool()
    cnf = []
    for clause in flattened.clauses:
        cnf += ground(ids, clause, s)

    constants = collect(flattened, Const)
    cnf += one_hot(ids, constants, s)
    cnf += minimal(ids, s, False)

    solver = Solver(name="cd", bootstrap_with=cnf)
    counter = 0
    while True:
        counter += 1
        print("===", counter, flush=True)
        if solver.solve():
            model = solver.get_model()
            cl = out(ids, model, s)
            solver.add_clause(cl)  # find a new model
        else:
            print("unsat")
            break


if __name__ == "__main__":
    testme("x*e=x. e*x=x. x*x'=e. x'*x=e. (x*y)*z=x*(y*z). c*d!=d*c.")
