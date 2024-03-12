"""Compute the instance-independent canonizing set of permutations."""

from pysat.solvers import Solver
from pysat.formula import IDPool
from basics import pick_one, print_cnf, debug_model
from minmod import larger_set, inv
from itertools import product


def var(ids, sign, op, args, d):
    """Propositional variable for equality of terms."""
    rv = ids.id(f"{op}_{args}={d}")
    return rv if sign else -rv


def perm(ids, s):
    """CNF encoding for a permutation."""
    rng = range(s)
    clauses = []
    for i in rng:
        clauses += pick_one([var(ids, True, "pi", i, d) for d in rng])  # 1-hot
    for d in rng:
        clauses += [
            [var(ids, False, "pi", i, d), var(ids, False, "pi", j, d)]
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
            [-rhs(ids, x, i, j, y, k, l), var(ids, True, "pi", y, x)],
            [-rhs(ids, x, i, j, y, k, l), var(ids, True, "pi", k, i)],
            [-rhs(ids, x, i, j, y, k, l), var(ids, True, "pi", l, j)],
            [-rhs(ids, x, i, j, y, k, l), var(ids, True, "a", [k, l], y)],
        ]
        clauses += [
            [
                rhs(ids, x, i, j, y, k, l),
                var(ids, False, "pi", y, x),
                var(ids, False, "pi", k, i),
                var(ids, False, "pi", l, j),
                var(ids, False, "a", [k, l], y),
            ]
        ]
    return clauses


def one_hot(ids, s, alg):
    clauses = []
    rng = range(s)
    for x, y in product(rng, repeat=2):
        clauses += pick_one([var(ids, True, alg, [x, y], d) for d in rng])
    return clauses


def iso(ids, s):
    """Constraints for isomorphism of algebras."""
    rng = range(s)
    clauses = sub_rhs(ids, s)
    clauses += one_hot(ids, s, "a")
    clauses += one_hot(ids, s, "b")
    for x, i, j in product(rng, repeat=3):
        # =>
        clauses += [
            [var(ids, False, "b", [i, j], x)]
            + [rhs(ids, x, i, j, y, k, l) for y, k, l in product(rng, repeat=3)]
        ]
        # <=
        clauses += [
            [var(ids, True, "b", [i, j], x), -rhs(ids, x, i, j, y, k, l)]
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
        [grt, var(ids, False, "a", cell, d)]
        + [var(ids, True, "b", cell, d2) for d2 in range(d)]
        for d in range(s)
    ]
    return clauses


def sub_eql_grtr(ids, cell, s):
    clauses = []
    eq = -eql_grtr(ids, cell)
    clauses += [
        [eq, var(ids, False, "a", cell, d), var(ids, True, "b", cell, d)]
        for d in range(s)
    ]
    clauses += [
        [eq, var(ids, True, "a", cell, d), var(ids, False, "b", cell, d)]
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

    clauses += [[-r_grtr(ids, s**2 - 2), grtr(ids, [s - 1, s - 1])]]
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
        [l, var(ids, False, "a", cell, d)]
        + [
            var(ids, True, "a", [inverse[arg] for arg in cell], d2)
            for d2 in larger_set(pi, d, s)
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
            var(ids, False, "a", cell, d),
            var(ids, True, "a", [inverse[arg] for arg in cell], inverse[d]),
        ]
        for d in range(s)
    ]
    clauses += [
        [
            e,
            var(ids, True, "a", cell, d),
            var(ids, False, "a", [inverse[arg] for arg in cell], inverse[d]),
        ]
        for d in range(s)
    ]

    return clauses


def minimality(ids, s, pi):
    """Constraints for A <= pi(A)."""
    clauses = []
    rng = range(s)
    cells = [[x, y] for x in rng for y in rng]

    for cell in product(rng, repeat=2):
        clauses += sub_less(ids, pi, cell, s)
        clauses += sub_eql_min(ids, pi, cell, s)

    clauses += [
        [less(ids, pi, [0, 0]), eql_min(ids, pi, [0, 0])],
        [less(ids, pi, [0, 0]), r_min(ids, pi, 0)],
    ]

    for i, cell in enumerate(cells):
        if i in [0, s**2 - 1]:
            continue

        r = -r_min(ids, pi, i - 1)  # relaxation variable from the previous cell
        l = less(ids, pi, cell)
        e = eql_min(ids, pi, cell)
        clauses += [[r, l, e], [r, l, r_min(ids, pi, i)]]

    # constraints for the last cell
    clauses += [
        [
            -r_min(ids, pi, s**2 - 2),
            less(ids, pi, [s - 1, s - 1]),
            eql_min(ids, pi, [s - 1, s - 1]),
        ]
    ]
    return clauses


def print_table(ids, model, alg, s):
    for x, y in product(range(s), repeat=2):
        for d in range(s):
            if model[var(ids, True, alg, [x, y], d) - 1] > 0:
                print(d, end=" ")
        if y == s - 1:
            print()
    print()


def testme(s):
    ids = IDPool()
    cnf = []

    cnf += perm(ids, s)
    cnf += iso(ids, s)
    cnf += greater(ids, s)

    solver = Solver(name="lgl", bootstrap_with=cnf)

    perms = []
    while solver.solve():
        model = solver.get_model()
        cl = []  # blocking clause for current permutation
        prm = []  # current permutation
        print_table(ids, model, "a", s)
        print_table(ids, model, "b", s)
        for i, d in product(range(s), repeat=2):
            if model[var(ids, True, "pi", i, d) - 1] > 0:
                cl.append(var(ids, False, "pi", i, d))
                prm.append(d)
        print(prm, "\n=====")
        solver.add_clause(cl)
        solver.append_formula(minimality(ids, s, prm))
        perms += [prm]
    print(len(perms))


if __name__ == "__main__":
    testme(4)
