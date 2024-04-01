"""Compute the reduced canonizing set of permutations without use of algebra B."""

from pysat.solvers import Solver
from pysat.formula import IDPool
from basics import pick_one, print_cnf, debug_model, Timer
from minmod import larger_set, inv
from itertools import product
from phi import canset_var, Group, Quasigroup, Same


def one_hot(ids, s, alg):
    clauses = []
    rng = range(s)
    for x, y in product(rng, repeat=2):
        clauses += pick_one([canset_var(ids, True, alg, [x, y], d) for d in rng])
    return clauses


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
            [-rhs(ids, x, i, j, y, k, l), canset_var(ids, True, "a", [k, l], y)],
        ]
        clauses += [
            [
                rhs(ids, x, i, j, y, k, l),
                canset_var(ids, False, "pi", y, x),
                canset_var(ids, False, "pi", k, i),
                canset_var(ids, False, "pi", l, j),
                canset_var(ids, False, "a", [k, l], y),
            ]
        ]
    return clauses


def r_grtr(ids, i):
    """Variable for "following cells are greater" in A>B constraints."""
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
        [grt, canset_var(ids, False, "a", cell, x)]
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
        [eq, canset_var(ids, False, "a", cell, x)]
        + [rhs(ids, x, cell[0], cell[1], y, k, l) for y, k, l in product(rng, repeat=3)]
        for x in rng
    ]
    return clauses


def greater(ids, s):
    """Constraints for A>B."""
    clauses = []
    clauses += sub_rhs(ids, s)
    rng = range(s)
    cells = [[x, y] for x in rng for y in rng]

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


def r_min(ids, pi, i):
    """Variable for "following cells are less than or equal" in A <= pi(A) constraints."""
    return ids.id(f"r_{pi}_{i}")


def less(ids, pi, cell):
    return ids.id(f"less_{pi}_{cell}")


def eql_min(ids, pi, cell):
    return ids.id(f"eqlm_{pi}_{cell}")


def sub_less(ids, pi, cell, s):
    """Substitute "cell is less than pi(inv(cell))" constraint with a variable."""
    clauses = []
    l = -less(ids, pi, cell)
    inverse = inv(pi)
    clauses += [
        [l, canset_var(ids, False, "a", cell, d)]
        + [
            canset_var(ids, True, "a", [inverse[arg] for arg in cell], d2)
            for d2 in larger_set(pi, d)
        ]
        for d in range(s)
    ]
    return clauses


def sub_eql_min(ids, pi, cell, s):
    """Substitute "cell and pi(inv(cell)) are equal" constraint with a variable."""
    clauses = []
    e = -eql_min(ids, pi, cell)
    inverse = inv(pi)
    clauses += [
        [
            e,
            canset_var(ids, False, "a", cell, d),
            canset_var(ids, True, "a", [inverse[arg] for arg in cell], inverse[d]),
        ]
        for d in range(s)
    ]
    return clauses


def assump(ids, pi):
    """Assumptions for A <= pi(A) constraints."""
    return ids.id(f"assump1_{pi}")


def minimality(ids, s, pi, assumptions=False):
    """Constraints for A <= pi(A)."""
    clauses = []
    asmp = []
    if assumptions:
        asmp.append(assump(ids, pi))
    rng = range(s)
    cells = [[x, y] for x in rng for y in rng]

    for cell in cells:
        clauses += sub_less(ids, pi, cell, s)
        clauses += sub_eql_min(ids, pi, cell, s)

    # constraints for the first cell
    clauses += [
        [less(ids, pi, [0, 0]), eql_min(ids, pi, [0, 0])] + asmp,
        [less(ids, pi, [0, 0]), r_min(ids, pi, 0)] + asmp,
    ]

    for i, cell in enumerate(cells):
        if i in [0, s**2 - 1]:
            continue

        r = -r_min(ids, pi, i - 1)
        l = less(ids, pi, cell)
        e = eql_min(ids, pi, cell)
        clauses += [[r, l, e] + asmp, [r, l, r_min(ids, pi, i)] + asmp]

    # constraints for the last cell
    clauses += [
        [
            -r_min(ids, pi, s**2 - 2),
            less(ids, pi, [s - 1, s - 1]),
            eql_min(ids, pi, [s - 1, s - 1]),
        ]
        + asmp
    ]
    return clauses


def print_table(ids, model, alg, s):
    for x, y in product(range(s), repeat=2):
        for d in range(s):
            if model[canset_var(ids, True, alg, [x, y], d) - 1] > 0:
                print(d, end=" ")
        if y == s - 1:
            print()
    print()


def alg1(s):
    ids = IDPool()
    cnf = []

    cnf += one_hot(ids, s, "a")
    cnf += perm(ids, s)
    cnf += greater(ids, s)
    cnf += Same(ids, s).encode()

    solver = Solver(name="cd", bootstrap_with=cnf)

    perms = []
    while solver.solve():
        model = solver.get_model()
        prm = []  # current permutation
        print_table(ids, model, "a", s)
        for i, d in product(range(s), repeat=2):
            if model[canset_var(ids, True, "pi", i, d) - 1] > 0:
                prm.append(d)
        print(prm, "\n=====")
        solver.append_formula(minimality(ids, s, prm))
        perms += [prm]
    solver.delete()
    return perms


if __name__ == "__main__":
    s = 8
    t = Timer()
    t.start(text="")
    print()
    p = alg1(s)
    t.stop()
    print(f"Size of the canonizing set: {len(p)}")
    print(p)
