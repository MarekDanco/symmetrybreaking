"""Compute the reduced canonizing set of permutations for the parsed algebra."""

import argparse
from pysat.solvers import Solver
from pysat.formula import IDPool
from basics import pick_one, print_cnf, debug_model, Timer, out, var_enc
from minmod import minimality, inv, assump, equal_values
from itertools import product
from grounding import Grounding
from parsing import (
    Parser,
    transform,
    Const,
    collect,
    find_inv,
    tostr,
)


def canset_var(ids, sign, op, args, d):
    """Propositional variable for equality of terms."""
    rv = ids.id(f"{op}_{args}={d}")
    return rv if sign else -rv


def perm(ids, s):
    """CNF encoding of a permutation."""
    rng = range(s)
    clauses = []
    for i in rng:
        clauses += pick_one([canset_var(ids, True, "pi", i, d) for d in rng])  # 1-hot
    for d in rng:
        clauses += [
            [canset_var(ids, False, "pi", i, d), canset_var(ids, False, "pi", j, d)]
            for i in rng
            for j in rng
            if i < j
        ]  # all different
    return clauses


def rhs(ids, *args):
    """Variable for the conjuncts in "cell>pi(inv(cell))" and
    "cell=pi(inv(cell))" formulas."""
    return ids.id(("rhs", args))


def sub_rhs(ids, s):
    """Substitute the conjuncts on the right-hand side of "cell>pi(inv(cell))" and
    "cell=pi(inv(cell))" formulas with variables."""
    clauses = []
    for x, i, j, y, k, l in product(range(s), repeat=6):
        clauses += [
            [-rhs(ids, x, i, j, y, k, l), canset_var(ids, True, "pi", y, x)],
            [-rhs(ids, x, i, j, y, k, l), canset_var(ids, True, "pi", k, i)],
            [-rhs(ids, x, i, j, y, k, l), canset_var(ids, True, "pi", l, j)],
            [-rhs(ids, x, i, j, y, k, l), var_enc(s, True, k, l, y)],
        ]
        clauses += [
            [
                rhs(ids, x, i, j, y, k, l),
                canset_var(ids, False, "pi", y, x),
                canset_var(ids, False, "pi", k, i),
                canset_var(ids, False, "pi", l, j),
                var_enc(s, False, k, l, y),
            ]
        ]
    return clauses


def r_grtr(ids, i):
    """Variable for "following cells are greater" in A>pi(A) constraints."""
    return ids.id(("r", i))


def grtr(ids, cell):
    """Variable for "cell is greater than pi(inv(cell))" in A>pi(A) constraints."""
    return ids.id(("grtr", tuple(cell)))


def eql_grtr(ids, cell):
    """Variable for "cell is equal to pi(inv(cell))" in A>pi(A) constraints."""
    return ids.id(("eqlg", tuple(cell)))


def sub_grtr(ids, cell, s):
    """Substitute "cell is greater than pi(inv(cell))" in A>pi(A) constraints with a variable.
    Here pi is a variable."""
    rng = range(s)
    clauses = []
    grt = -grtr(ids, cell)
    clauses += [
        [grt, var_enc(s, False, cell[0], cell[1], x)]
        + [
            rhs(ids, d, cell[0], cell[1], y, k, l)
            for d, y, k, l in product(rng, repeat=4)
            if d < x
        ]
        for x in rng
    ]
    return clauses


def sub_eql_grtr(ids, cell, s):
    """Substitute "cell is equal to pi(inv(cell))" in A>pi(A) constraints with a variable.
    Here pi is a variable."""
    rng = range(s)
    clauses = []
    eq = -eql_grtr(ids, cell)
    clauses += [
        [eq, var_enc(s, False, cell[0], cell[1], x)]
        + [rhs(ids, x, cell[0], cell[1], y, k, l) for y, k, l in product(rng, repeat=3)]
        for x in rng
    ]
    return clauses


def greater(ids, s, cells):
    """Constraints for A>pi(A) where pi is a variable."""
    clauses = []
    clauses += sub_rhs(ids, s)
    rng = range(s)

    for cell in cells:
        clauses += sub_grtr(ids, cell, s)
        clauses += sub_eql_grtr(ids, cell, s)

    clauses += [
        [-eql_grtr(ids, cell) for cell in cells]
    ]  # at least one pair of cells is not equal

    # constraints for the first cell
    clauses += [
        [grtr(ids, [0, 0]), eql_grtr(ids, [0, 0])],
        [grtr(ids, [0, 0]), r_grtr(ids, 0)],
    ]

    for i, cell in enumerate(cells):
        if i in [0, s**2 - 1]:
            continue
        r = -r_grtr(ids, i - 1)
        g = grtr(ids, cell)
        e = eql_grtr(ids, cell)

        clauses += [[r, g, e], [r, g, r_grtr(ids, i)]]

    # constraints for the last cell
    clauses += [
        [
            -r_grtr(ids, s**2 - 2),
            grtr(ids, [s - 1, s - 1]),
            eql_grtr(ids, [s - 1, s - 1]),
        ]
    ]
    return clauses


def alg1(ids, phi, s, solver_name, main=False, constants=None, cells: list = None):
    """Compute canonical set of permutations for given problem phi."""
    cnf = []

    cnf += phi
    cnf += perm(ids, s)
    if not cells:
        cells = [(x, y) for x in range(s) for y in range(s)]
    cnf += greater(ids, s, cells)
    solver = Solver(name=solver_name, bootstrap_with=cnf)

    perms = []
    counter = 0
    t = Timer()
    while True:
        counter += 1
        t.start(out=False)
        sat = solver.solve()
        time = t.stop(out=False)
        if sat:
            model = solver.get_model()
            if main:
                out(model, s, counter, time, ids, constants)
        else:
            break
        prm = tuple(
            d
            for i, d in product(range(s), repeat=2)
            if model[canset_var(ids, True, "pi", i, d) - 1] > 0
        )
        assert len(prm) == s, "Found permutation has wrong length."
        if main:
            print(f"permutation: {prm}")
        solver.append_formula(minimality(ids, cells, prm, s))
        perms += [prm]
    solver.delete()
    return perms


def smaller_set(pi, d, s):
    """Compute the set of values smaller than d under permutation pi."""
    return {i for i in range(s) if pi[i] < d}


def grtr2(ids, pi, cell):
    """Variable for "cell is greater than pi(inv(cell))" in A>pi(A) constraints
    in canonical set reduction algorithm."""
    return ids.id(("grtr", pi, tuple(cell)))


def eql_grtr2(ids, pi, cell):
    """Variable for "cell is equal to pi(inv(cell))" in A>pi(A) constraints
    in canonical set reduction algorithm."""
    return ids.id(("eqlg", pi, tuple(cell)))


def greater_values(pi):
    """Set of values x>pi(x)."""
    return {i for i, val in enumerate(pi) if i > val}


def sub_grtr2(ids, pi, cell, s):
    """Substitute "cell is greater than pi(inv(cell))" in A>pi(A) constraints with a variable."""
    clauses = []
    grt = -grtr2(ids, pi, cell)
    inverse = inv(pi)
    if (pi[cell[0]] == cell[0]) and (pi[cell[1]] == cell[1]):
        clauses += [
            [grt] + [var_enc(s, True, cell[0], cell[1], d) for d in greater_values(pi)]
        ]
    else:
        clauses += [
            [grt, var_enc(s, False, cell[0], cell[1], d)]
            + [
                var_enc(s, True, inverse[cell[0]], inverse[cell[1]], d2)
                for d2 in smaller_set(pi, d, s)
            ]
            for d in range(s)
        ]
    return clauses


def sub_eql_grtr2(ids, pi, cell, s):
    """Substitute "cell is equal to pi(inv(cell))" in A>pi(A) constraints with a variable."""
    clauses = []
    e = -eql_grtr2(ids, pi, cell)
    inverse = inv(pi)
    if (pi[cell[0]] == cell[0]) and (pi[cell[1]] == cell[1]):
        clauses += [
            [e] + [var_enc(s, True, cell[0], cell[1], d) for d in equal_values(pi)]
        ]
    else:
        clauses += [
            [
                e,
                var_enc(s, False, cell[0], cell[1], d),
                var_enc(s, True, inverse[cell[0]], inverse[cell[1]], inverse[d]),
            ]
            for d in range(s)
        ]
    return clauses


def assump2(ids, pi):
    """Assumptions for A>pi(A) constraints."""
    return ids.id(("assump2", pi))


def greater2(ids, cells, pi, s, assumptions=False):
    """Constraints for A>pi(A)."""
    clauses = []
    asmp = []
    if assumptions:
        asmp.append(assump2(ids, pi))

    clauses += [
        [-eql_grtr2(ids, pi, cell) for cell in cells]
    ]  # at least one pair of cells is not equal

    for cell in cells:
        clauses += sub_grtr2(ids, pi, cell, s)
        clauses += sub_eql_grtr2(ids, pi, cell, s)

    # constraints for the first cell
    clauses += [
        [grtr2(ids, pi, [0, 0]), eql_grtr2(ids, pi, [0, 0])] + asmp,
        [grtr2(ids, pi, [0, 0]), r_grtr(ids, 0)] + asmp,
    ]

    for i, cell in enumerate(cells):
        if i in [0, s**2 - 1]:
            continue
        r = -r_grtr(ids, i - 1)  # relaxation variable from the previous cell
        g = grtr2(ids, pi, cell)
        e = eql_grtr2(ids, pi, cell)

        clauses += [[r, g, e] + asmp, [r, g, r_grtr(ids, i)] + asmp]

    # constraints for the last cell
    clauses += [
        [
            -r_grtr(ids, s**2 - 2),
            grtr2(ids, pi, [s - 1, s - 1]),
            eql_grtr2(ids, pi, [s - 1, s - 1]),
        ]
        + asmp
    ]
    return clauses


def alg2(ids, phi, s, p, solver_name, cells: list = None):
    """Reduce canonical set p."""
    cnf = []
    cnf += phi
    if not cells:
        cells = [(x, y) for x in range(s) for y in range(s)]
    for pi in p:
        cnf += minimality(ids, cells, pi, s, assumptions=True)
        cnf += greater2(ids, cells, pi, s, assumptions=True)

    solver = Solver(name=solver_name, bootstrap_with=cnf)
    p_reduce = list(p)
    for pi in p:
        p_reduce.pop(p_reduce.index(pi))
        asmps = (
            [-assump2(ids, pi)]
            + [-assump(ids, prm) for prm in p_reduce]
            + [assump2(ids, prm) for prm in p if prm != pi]
            + [assump(ids, prm) for prm in p if prm not in p_reduce]
        )
        if solver.solve(assumptions=asmps):
            p_reduce.append(pi)  # pi is not redundant
    solver.delete
    return p_reduce


def testme(inp):
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument(
        "domain",
        type=int,
        help="domain size",
    )
    arg_parser.add_argument("solver", default="cd15", nargs="?", type=str)
    args = arg_parser.parse_args()
    p = Parser()
    tree = p.parse(inp)
    inverses = find_inv(tree)
    constants = tuple(sorted(collect(tree, Const)))
    flattened = transform(tree)

    s = args.domain
    ids = IDPool(occupied=[[1, s**3]])
    phi = []
    # print(tostr(flattened), flush=True)

    t = Timer()
    t.start(text="grounding")
    g = Grounding(s, ids)
    phi += g.ground(flattened)
    phi += g.one_hot(constants, inverses)
    t.stop()

    cells = [(x, y) for x in range(s) for y in range(s)]
    # cells.sort(key=lambda e: max(e[0], e[1]))

    p = alg1(ids, phi, s, args.solver, main=True, constants=constants, cells=cells)
    print("Canonical set: ", flush=True)
    print(p)

    print("Reduced canonical set: ", flush=True)
    p2 = alg2(ids, phi, s, p, args.solver, cells=cells)
    print(p2)


# TODO concentric, domain, solver ukladat v args a tie posielat ako parameter
# TODO module sa spracovanie argumentov

if __name__ == "__main__":
    # testme("x*y=z*w.")
    # testme("e*x = x. x*e = x. x*x'=e. x'*x=e. x*(y*z)=(x*y)*z. c*d!=d*c.")
    testme("(x*y)*z = (((z*e)*x) * ((y*z)*e))*e. (e*e)*e = e.")
    # testme("x*(y*z)=(x*y)*z.")
