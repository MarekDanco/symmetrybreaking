"""Functions for encoding model minimality with respect to some ordering."""

from basics import var, print_cnf
from itertools import permutations, product
from pysat.formula import IDPool


def inv(pi):
    """Calculate the inverse of a given permutation."""
    rv = [-1] * len(pi)
    for i, v in enumerate(pi):
        rv[v] = i
    return rv


def larger_set(pi, d, s):
    """Return the set of values larger than d under permutation pi."""
    return {i for i in range(s) if pi[i] > d}


def relax(ids, pi, i):
    """Relaxation variable for "following cells are less or equal"."""
    return ids.id(("r", pi, i))


def less(ids, pi, cell):
    """Relaxation variable for "cell is less than another cell"."""
    return ids.id(("l", pi, tuple(cell)))


def equal(ids, pi, cell):
    """Relaxation variable for "cells are equal"."""
    return ids.id(("e", pi, tuple(cell)))


def sub_l(ids, pi, cell, s):
    """Substitute "cell is less than pi(inv(cell))" constraint with a variable."""
    clauses = []
    l = -less(ids, pi, cell)
    inverse = inv(pi)
    clauses += [
        [l, var(ids, False, "*", cell, d)]
        + [
            var(ids, True, "*", [inverse[arg] for arg in cell], d2)
            for d2 in larger_set(pi, d, s)
        ]
        for d in range(s)
    ]
    return clauses


def sub_e(ids, pi, cell, s):
    """Substitute "cell and pi(inv(cell)) are equal" constraint with a variable."""
    clauses = []
    e = -equal(ids, pi, cell)
    inverse = inv(pi)
    clauses += [
        [
            e,
            var(ids, False, "*", cell, d),
            var(ids, True, "*", [inverse[arg] for arg in cell], inverse[d]),
        ]
        for d in range(s)
    ]
    clauses += [
        [
            e,
            var(ids, True, "*", cell, d),
            var(ids, False, "*", [inverse[arg] for arg in cell], inverse[d]),
        ]
        for d in range(s)
    ]

    return clauses


def transps(s):
    """Calculate all transpositions on range(s)."""
    tps = []
    id = [i for i in range(s)]

    for i in range(s):
        for j in range(i + 1, s):
            tpn = id[:]
            tpn[i], tpn[j] = tpn[j], tpn[i]
            tps.append(tuple(tpn))
    return tps


def lnh(ids, s, cells):
    """Least number heuristic for binary functions only."""
    clauses = []
    for i, cell in enumerate(cells):
        layer = max(cell[0], cell[1])
        if layer + 2 == s:  # whole domain allowed
            break
        for d in range(layer + 2, s):
            clauses += [
                [var(ids, False, "*", cell, d)]
                + [var(ids, True, "*", cells[j], d - 1) for j in range(i)]
            ]
    return clauses


def minimal(ids, s, transpositions, concentric):
    """Compute CNF for minimal model."""
    clauses = []
    rng = range(s)

    perms = transps(s) if transpositions else permutations(rng)
    cells = [(x, y) for x in rng for y in rng]
    if concentric:
        cells.sort(key=lambda e: max(e[0], e[1]))
    if transpositions:
        clauses += lnh(ids, s, cells)

    for pi in perms:
        # skip identity permutation
        if pi == tuple([i for i in rng]):
            continue

        for cell in product(rng, repeat=2):
            clauses += sub_l(ids, pi, cell, s)
            clauses += sub_e(ids, pi, cell, s)

        # constraints for the first cell
        clauses += [
            [less(ids, pi, [0, 0]), equal(ids, pi, [0, 0])],
            [less(ids, pi, [0, 0]), relax(ids, pi, 0)],
        ]

        for i, cell in enumerate(cells):
            if i in [0, s**2 - 1]:
                continue

            r = -relax(ids, pi, i - 1)  # relaxation variable from the previous cell
            l = less(ids, pi, cell)
            e = equal(ids, pi, cell)
            clauses += [[r, l, e], [r, l, relax(ids, pi, i)]]

        # constraints for the last cell
        clauses += [
            [
                -relax(ids, pi, s**2 - 2),
                less(ids, pi, [s - 1, s - 1]),
                equal(ids, pi, [s - 1, s - 1]),
            ]
        ]
    return clauses


if __name__ == "__main__":
    s = 5
    ids = IDPool()
    cells = [[x, y] for x in range(s) for y in range(s)]
    cells.sort(key=lambda e: max(e[0], e[1]))
    cnf = lnh(ids, s, cells)
    print_cnf(ids, cnf)
