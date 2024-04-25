"""Functions for encoding model minimality with respect to some ordering."""

from basics import var, print_cnf, var_enc
from itertools import permutations, product
from pysat.formula import IDPool


def inv(pi):
    """Calculate the inverse of a given permutation."""
    rv = [-1] * len(pi)
    for i, v in enumerate(pi):
        rv[v] = i
    return rv


def larger_set(pi, d):
    """Return the set of values larger than d under permutation pi."""
    return {i for i, val in enumerate(pi) if val > d}


def relax(ids, pi, i):
    """Relaxation variable for "following cells are less or equal"."""
    return ids.id(("r", pi, i))


def less(ids, pi, cell):
    """Relaxation variable for "cell is less than another cell"."""
    return ids.id(("l", pi, tuple(cell)))


def equal(ids, pi, cell):
    """Relaxation variable for "cells are equal"."""
    return ids.id(("e", pi, tuple(cell)))


def smaller_values(pi):
    """Set of values x<pi(x)."""
    return {i for i, val in enumerate(pi) if i < val}


def equal_values(pi):
    """Set of values x=pi(x)."""
    return {i for i, val in enumerate(pi) if i == val}


def sub_l(ids, pi, cell, s):
    """Substitute "cell is less than pi(inv(cell))" constraint with a variable."""
    clauses = []
    l = -less(ids, pi, cell)
    inverse = inv(pi)
    if (pi[cell[0]] == cell[0]) and (pi[cell[1]] == cell[1]):
        clauses += [
            [l] + [var_enc(s, True, cell[0], cell[1], d) for d in smaller_values(pi)]
        ]
    else:
        clauses += [
            [l, var_enc(s, False, cell[0], cell[1], d)]
            + [
                var_enc(s, True, inverse[cell[0]], inverse[cell[1]], d2)
                for d2 in larger_set(pi, d)
            ]
            for d in range(s)
        ]
    return clauses


def sub_e(ids, pi, cell, s):
    """Substitute "cell and pi(inv(cell)) are equal" constraint with a variable."""
    clauses = []
    e = -equal(ids, pi, cell)
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


def assump(ids, pi):
    """Assumptions for A<=pi(A) constraints."""
    return ids.id(("assump", pi))


def minimality(ids, cells, pi: tuple, s, assumptions=False):
    """Constraints for A <= pi(A)."""
    clauses = []
    asmp = []
    if assumptions:
        asmp.append(assump(ids, pi))
    for cell in cells:
        clauses += sub_l(ids, pi, cell, s)
        clauses += sub_e(ids, pi, cell, s)

        # constraints for the first cell
        clauses += [
            [less(ids, pi, [0, 0]), equal(ids, pi, [0, 0])] + asmp,
            [less(ids, pi, [0, 0]), relax(ids, pi, 0)] + asmp,
        ]

        for i, cell in enumerate(cells):
            if i in [0, s**2 - 1]:
                continue

            r = -relax(ids, pi, i - 1)  # relaxation variable from the previous cell
            l = less(ids, pi, cell)
            e = equal(ids, pi, cell)
            clauses += [[r, l, e] + asmp, [r, l, relax(ids, pi, i)] + asmp]

        # constraints for the last cell
        clauses += [
            [
                -relax(ids, pi, s**2 - 2),
                less(ids, pi, [s - 1, s - 1]),
                equal(ids, pi, [s - 1, s - 1]),
            ]
            + asmp
        ]
    return clauses


def minimal(ids, s, args, perms: list = None):
    """Compute CNF for minimal model."""
    clauses = []
    rng = range(s)

    cells = [(x, y) for x in rng for y in rng]
    if args.concentric:
        cells.sort(key=lambda e: max(e[0], e[1]))

    if perms is None:
        perms = transps(s) if args.transpositions else permutations(rng)

    for pi in perms:
        # skip identity permutation
        if pi == tuple([i for i in rng]):
            continue
        clauses += minimality(ids, cells, pi, s)
    return clauses


def lnh(ids, s, args, constants=None, inverses=None):
    """Least number heuristic for binary functions."""
    clauses = []
    rng = range(s)

    cells = [(x, y) for x in rng for y in rng]
    if args.concentric:
        cells.sort(key=lambda e: max(e[0], e[1]))

    # TODO inverses ?

    for i, cnst in enumerate(constants):
        if i + 1 == s:  # whole domain allowed
            break
        for d in range(i + 1, s):
            clauses += [
                [var(ids, False, "_", cnst.name, d)]
                + [var(ids, True, "_", constants[j].name, d - 1) for j in range(i)]
            ]

    for i, cell in enumerate(cells):
        layer = max(cell[0], cell[1])
        if layer + 2 == s:  # whole domain allowed
            break
        for d in range(layer + 2, s):
            clauses += [
                [var_enc(s, False, cell[0], cell[1], d)]
                + [var_enc(s, True, cells[j][0], cells[j][1], d - 1) for j in range(i)]
                + [var(ids, True, "_", cnst.name, d - 1) for cnst in constants]
            ]
    return clauses


if __name__ == "__main__":
    s = 5
    ids = IDPool()
    cells = [[x, y] for x in range(s) for y in range(s)]
    cells.sort(key=lambda e: max(e[0], e[1]))
    cnf = lnh(ids, s, cells)
    print_cnf(ids, cnf)
