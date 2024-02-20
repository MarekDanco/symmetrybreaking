"""Functions for encoding the lexicographically minimal model into cnf."""

from basics import var
from itertools import permutations, product
import datetime
import timeit


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
    """Substitute "cell is less than inv(cell)" constraint with a variable."""
    clauses = []
    less_subclause = -less(ids, pi, cell)
    inverse = inv(pi)
    clauses += [
        [less_subclause, var(ids, False, "*", cell, d)]
        + [
            var(ids, True, "*", [inverse[arg] for arg in cell], d2)
            for d2 in larger_set(pi, d, s)
        ]
        for d in range(s)
    ]
    return clauses


def sub_e(ids, pi, cell, s):
    """Substitute "cell and inv(cell) are equal" constraint with a variable."""
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


class Timer:
    """Measure time used."""

    def __init__(self, round_ndigits: int = 0):
        self._round_ndigits = round_ndigits
        self._start_time = timeit.default_timer()

    def __call__(self) -> float:
        return timeit.default_timer() - self._start_time

    def __str__(self) -> str:
        return str(datetime.timedelta(seconds=round(self(), self._round_ndigits)))


def minimal(ids, s, transpositions):
    """Compute CNF for lexicographically smallest model."""
    clauses = []
    rng = range(s)

    perms = transps(s) if transpositions else permutations(rng)
    cells = [(x, y) for x in rng for y in rng]

    print("encoding minimality to cnf")
    timer = Timer()
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

        i = -1
        for cell in cells:
            i += 1
            if cell == (0, 0) or cell == (s - 1, s - 1):
                continue

            r = -relax(ids, pi, i - 1)
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
    print(f"finished, time elapsed: {timer}")
    return clauses
