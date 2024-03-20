"""CNF encodings for different algebraic structures. Compatible with canset.py"""

from basics import pick_one
from itertools import product


def var(ids, sign, op, args, d):
    """Propositional variable for equality of terms."""
    rv = ids.id(f"{op}_{args}={d}")
    return rv if sign else -rv


class Group:

    def __init__(self, ids, s):
        self.ids = ids
        self.s = s

    def e(self, sign, d):
        rv = self.ids.id(f"e={d}")
        return rv if sign else -rv

    def inv(self, sign, x, d):
        rv = self.ids.id(f"{x}'={d}")
        return rv if sign else -rv

    def group(self):
        clauses = []
        rng = range(self.s)
        clauses += pick_one([self.e(True, d) for d in rng])
        for x in range(self.s):
            clauses += pick_one([self.inv(True, x, d) for d in rng])

        # axiom 1
        for x, y in product(rng, repeat=2):
            clauses += [[var(self.ids, True, "a", [x, y], x), self.e(False, y)]]
            clauses += [[var(self.ids, True, "a", [y, x], x), self.e(False, y)]]

        # axiom 2
        for x, y, z in product(rng, repeat=3):
            clauses += [
                [
                    var(self.ids, True, "a", [x, y], z),
                    self.inv(False, x, y),
                    self.e(False, z),
                ]
            ]
            clauses += [
                [
                    var(self.ids, True, "a", [y, x], z),
                    self.inv(False, x, y),
                    self.e(False, z),
                ]
            ]

        # axiom 3
        for u, v, w, x, y, z in product(rng, repeat=6):
            clauses += [
                [
                    var(self.ids, True, "a", [w, z], u),
                    var(self.ids, False, "a", [x, v], u),
                    var(self.ids, False, "a", [x, y], w),
                    var(self.ids, False, "a", [y, z], v),
                ]
            ]
        return clauses
