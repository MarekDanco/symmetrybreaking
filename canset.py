"""Compute the reduced canonizing set of permutations."""

from pysat.solvers import Solver
from pysat.formula import IDPool
from basics import pick_one, print_cnf, debug_model, Timer
from minmod import larger_set, inv
from itertools import product
from phi import canset_var, Group, Quasigroup, Same


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
    """Substitute the conjunct on the right-hand side of iso formula with a variable."""
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


def one_hot(ids, s, alg):
    clauses = []
    rng = range(s)
    for x, y in product(rng, repeat=2):
        clauses += pick_one([canset_var(ids, True, alg, [x, y], d) for d in rng])
    return clauses


def iso(ids, s):
    """Constraints for isomorphism of magmas."""
    rng = range(s)
    clauses = sub_rhs(ids, s)
    clauses += one_hot(ids, s, "a")
    clauses += one_hot(ids, s, "b")
    for x, i, j in product(rng, repeat=3):
        # =>
        clauses += [
            [canset_var(ids, False, "b", [i, j], x)]
            + [rhs(ids, x, i, j, y, k, l) for y, k, l in product(rng, repeat=3)]
        ]
        # <=
        clauses += [
            [canset_var(ids, True, "b", [i, j], x), -rhs(ids, x, i, j, y, k, l)]
            for y, k, l in product(rng, repeat=3)
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
    clauses = []
    grt = -grtr(ids, cell)
    clauses += [
        [grt, canset_var(ids, False, "a", cell, d)]
        + [canset_var(ids, True, "b", cell, d2) for d2 in range(d)]
        for d in range(s)
    ]
    return clauses


def sub_eql_grtr(ids, cell, s):
    clauses = []
    eq = -eql_grtr(ids, cell)
    clauses += [
        [eq, canset_var(ids, False, "a", cell, d), canset_var(ids, True, "b", cell, d)]
        for d in range(s)
    ]
    return clauses


def greater(ids, s):
    """Constraints for A>B."""
    clauses = []
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
        r = -r_grtr(ids, i - 1)  # relaxation variable from the previous cell
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
    clauses += [
        [
            e,
            canset_var(ids, True, "a", cell, d),
            canset_var(ids, False, "a", [inverse[arg] for arg in cell], inverse[d]),
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

        r = -r_min(ids, pi, i - 1)  # relaxation variable from the previous cell
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

    cnf += perm(ids, s)
    cnf += iso(ids, s)
    cnf += greater(ids, s)
    cnf += Same(ids, s).encode()

    solver = Solver(name="cd", bootstrap_with=cnf)

    perms = []
    while solver.solve():
        model = solver.get_model()
        # cl = []  # blocking clause for current permutation
        prm = []  # current permutation
        print_table(ids, model, "a", s)
        print_table(ids, model, "b", s)
        for i, d in product(range(s), repeat=2):
            if model[canset_var(ids, True, "pi", i, d) - 1] > 0:
                # cl.append(canset_var(ids, False, "pi", i, d))
                prm.append(d)
        print(prm, "\n=====")
        # solver.add_clause(cl)
        solver.append_formula(minimality(ids, s, prm))
        perms += [prm]
    solver.delete()
    return perms


def smaller_set(pi, d, s):
    """Return the set of values smaller than d under permutation pi."""
    return {i for i in range(s) if pi[i] < d}


def grtr2(ids, pi, cell):
    return ids.id(f"grtr_{pi}_{cell}")


def sub_grtr2(ids, pi, cell, s):
    clauses = []
    grt = -grtr2(ids, pi, cell)
    inverse = inv(pi)
    clauses += [
        [grt, canset_var(ids, False, "a", cell, d)]
        + [
            canset_var(ids, True, "a", [inverse[arg] for arg in cell], d2)
            for d2 in smaller_set(pi, d, s)
        ]
        for d in range(s)
    ]
    return clauses


def assump2(ids, pi):
    """Assumptions for A > pi(A) constraints."""
    return ids.id(f"assump2_{pi}")


def greater2(ids, s, pi, assumptions=False):
    """Constraints for A>pi(A)."""
    clauses = []
    asmp = []
    if assumptions:
        asmp.append(assump2(ids, pi))
    rng = range(s)
    cells = [[x, y] for x in rng for y in rng]

    for cell in cells:
        clauses += sub_grtr2(ids, pi, cell, s)
        clauses += sub_eql_min(ids, pi, cell, s)

    # constraints for the first cell
    clauses += [
        [grtr(ids, [0, 0]), eql_min(ids, pi, [0, 0])] + asmp,
        [grtr(ids, [0, 0]), r_grtr(ids, 0)] + asmp,
    ]

    for i, cell in enumerate(cells):
        if i in [0, s**2 - 1]:
            continue
        r = -r_grtr(ids, i - 1)  # relaxation variable from the previous cell
        g = grtr(ids, cell)
        e = eql_min(ids, pi, cell)

        clauses += [[r, g, e] + asmp, [r, g, r_grtr(ids, i)] + asmp]

    # constraints for the last cell
    clauses += [[-r_grtr(ids, s**2 - 2), grtr(ids, [s - 1, s - 1])] + asmp]
    return clauses


def alg2(s, p):
    ids = IDPool()
    oh = one_hot(ids, s, "a")
    g = Group(ids, s).group()
    p_reduce = list(p)
    for pi in p:
        print(".", end="", flush=True)
        cnf = []
        cnf += oh
        cnf += g
        p_reduce.pop(p_reduce.index(pi))
        for perm in p_reduce:
            cnf += minimality(ids, s, perm)
        cnf += greater2(ids, s, pi)
        solver = Solver(name="cd", bootstrap_with=cnf)
        if solver.solve():
            p_reduce.append(pi)
    solver.delete()
    return p_reduce


def alg2_assumps(s, p):
    ids = IDPool()
    cnf = one_hot(ids, s, "a")
    cnf += Same(ids, s).encode()
    for pi in p:
        cnf += minimality(ids, s, pi, assumptions=True)
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


if __name__ == "__main__":
    s = 8
    t = Timer()
    t.start(text="")
    print()
    p = alg1(s)
    t.stop()
    print(f"Size of the canonizing set: {len(p)}")
    p2 = alg2_assumps(s, p)
    print(f"Size of the reduced canonizing set: {len(p2)}")
    print(p2)
