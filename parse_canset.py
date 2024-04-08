"""Compute the reduced canonizing set of permutations for the parsed algebra."""

import argparse
from pysat.solvers import Solver
from pysat.formula import IDPool
from basics import pick_one, print_cnf, debug_model, Timer, out, var
from minmod import minimality, inv, assump
from itertools import product
from phi import canset_var
from parsing import (
    Parser,
    Grounding,
    transform,
    Const,
    collect,
    find_inv,
    tostr,
)


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
    return ids.id(("rhs", args))


def sub_rhs(ids, s):
    """Substitute the conjuncts on the right-hand side of cell>pi(inv(cell)) and
    cell=pi(inv(cell)) formulas with variables."""
    clauses = []
    for x, i, j, y, k, l in product(range(s), repeat=6):
        clauses += [
            [-rhs(ids, x, i, j, y, k, l), canset_var(ids, True, "pi", y, x)],
            [-rhs(ids, x, i, j, y, k, l), canset_var(ids, True, "pi", k, i)],
            [-rhs(ids, x, i, j, y, k, l), canset_var(ids, True, "pi", l, j)],
            [-rhs(ids, x, i, j, y, k, l), var(ids, True, "*", [k, l], y)],
        ]
        clauses += [
            [
                rhs(ids, x, i, j, y, k, l),
                canset_var(ids, False, "pi", y, x),
                canset_var(ids, False, "pi", k, i),
                canset_var(ids, False, "pi", l, j),
                var(ids, False, "*", [k, l], y),
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
    rng = range(s)
    clauses = []
    grt = -grtr(ids, cell)
    clauses += [
        [grt, var(ids, False, "*", cell, x)]
        + [
            rhs(ids, d, cell[0], cell[1], y, k, l)
            for d, y, k, l in product(rng, repeat=4)
            if d < x
        ]
        for x in rng
    ]
    return clauses


def sub_eql_grtr(ids, cell, s):
    rng = range(s)
    clauses = []
    eq = -eql_grtr(ids, cell)
    clauses += [
        [eq, var(ids, False, "*", cell, x)]
        + [rhs(ids, x, cell[0], cell[1], y, k, l) for y, k, l in product(rng, repeat=3)]
        for x in rng
    ]
    return clauses


def greater(ids, s, sub_g, sub_e):
    """Constraints for A>pi(A) where pi is a variable."""
    clauses = []
    clauses += sub_rhs(ids, s)
    rng = range(s)
    cells = [[x, y] for x in rng for y in rng]

    for cell in cells:
        clauses += sub_g(ids, cell, s)
        clauses += sub_e(ids, cell, s)

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


def alg1(ids, phi, s, main=False):
    """Compute canonical set of permutations for given problem phi."""
    cnf = []

    cnf += phi
    cnf += perm(ids, s)
    cnf += greater(ids, s, sub_grtr, sub_eql_grtr)
    solver = Solver(name="cd", bootstrap_with=cnf)

    perms = []
    cells = [(x, y) for x in range(s) for y in range(s)]
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
                out(ids, model, s, cells, counter, time)
                print()
        else:
            break
        prm = tuple(
            d
            for i, d in product(range(s), repeat=2)
            if model[canset_var(ids, True, "pi", i, d) - 1] > 0
        )
        assert len(prm) == s
        if main:
            print(prm, "\n=====")
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


def sub_grtr2(ids, pi, cell, s):
    clauses = []
    grt = -grtr2(ids, pi, cell)
    inverse = inv(pi)
    clauses += [
        [grt, var(ids, False, "*", cell, d)]
        + [
            var(ids, True, "*", [inverse[arg] for arg in cell], d2)
            for d2 in smaller_set(pi, d, s)
        ]
        for d in range(s)
    ]
    return clauses


def sub_eql_grtr2(ids, pi, cell, s):
    clauses = []
    e = -eql_grtr2(ids, pi, cell)
    inverse = inv(pi)
    clauses += [
        [
            e,
            var(ids, False, "*", cell, d),
            var(ids, True, "*", [inverse[arg] for arg in cell], inverse[d]),
        ]
        for d in range(s)
    ]
    return clauses


def assump2(ids, pi):
    """Assumptions for A>pi(A) constraints."""
    return ids.id(("assump2", pi))


def greater2(ids, s, pi, assumptions=False):
    """Constraints for A>pi(A)."""
    clauses = []
    asmp = []
    if assumptions:
        asmp.append(assump2(ids, pi))
    rng = range(s)
    cells = [[x, y] for x in rng for y in rng]

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


def alg2(ids, phi, s, p):
    """Reduce canonical set p."""
    cnf = []
    cnf += phi
    cells = [(x, y) for x in range(s) for y in range(s)]
    for pi in p:
        cnf += minimality(ids, cells, pi, s, assumptions=True)
        cnf += greater2(ids, s, pi, assumptions=True)

    solver = Solver(name="cd", bootstrap_with=cnf)
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
        "s",
        type=int,
        help="domain size",
    )
    args = arg_parser.parse_args()
    p = Parser()
    tree = p.parse(inp)
    inverses = find_inv(tree)
    constants = collect(tree, Const)
    flattened = transform(tree)

    s = args.s
    ids = IDPool()
    phi = []
    print(tostr(flattened), flush=True)

    t = Timer()
    t.start(text="grounding")
    g = Grounding(s, ids)
    for clause in flattened.clauses:
        phi += g.ground(clause)
    phi += g.one_hot(constants, inverses)
    t.stop()

    p = alg1(ids, phi, s, main=True)
    print(p)

    p2 = alg2(ids, phi, s, p)
    print(p2)


if __name__ == "__main__":
    # testme("x*y=z*w.")
    testme("(x*y)*z = (((z*e)*x) * ((y*z)*e))*e. (e*e)*e = e.")
