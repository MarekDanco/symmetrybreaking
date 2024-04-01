"""Compute the reduced canonizing set of permutations for the parsed algebra."""

from pysat.solvers import Solver
from pysat.formula import IDPool
from basics import pick_one, print_cnf, debug_model, Timer, one_hot, out, var
from minmod import minimality
from itertools import product
from phi import canset_var
from parsing import Parser, transform, ground, Const, collect, find_inv


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
    return ids.id(f"rhs_{args}")


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
    return ids.id(f"r_{i}")


def grtr(ids, cell):
    return ids.id(f"grtr_{cell}")


def eql_grtr(ids, cell):
    return ids.id(f"eqlg_{cell}")


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
    """Constraints for A>B."""
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


def alg1(ids, phi, s):
    cnf = []

    cnf += phi
    cnf += perm(ids, s)
    cnf += greater(ids, s, sub_grtr, sub_eql_grtr)
    solver = Solver(name="cd", bootstrap_with=cnf)

    perms = []
    cells = [(x, y) for x in range(s) for y in range(s)]
    while solver.solve():
        model = solver.get_model()
        out(ids, model, s)
        print()
        prm = []  # current permutation
        for i, d in product(range(s), repeat=2):
            if model[canset_var(ids, True, "pi", i, d) - 1] > 0:
                prm.append(d)
        print(prm, "\n=====")
        solver.append_formula(minimality(ids, cells, tuple(prm), s))
        perms += [prm]
    solver.delete()
    return perms


def testme(inp):
    p = Parser()
    tree = p.parse(inp)
    inverses = find_inv(tree)
    constants = collect(tree, Const)
    flattened = transform(tree)

    s = 8
    ids = IDPool()
    phi = []

    for clause in flattened.clauses:
        phi += ground(ids, clause, s)
    phi += one_hot(ids, constants, inverses, s)

    t = Timer()
    t.start(text="")
    print()
    p = alg1(ids, phi, s)
    t.stop()
    print(p)


if __name__ == "__main__":
    testme("x*y=z*w.")
