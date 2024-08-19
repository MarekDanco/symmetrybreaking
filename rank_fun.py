#!/usr/bin/env python3
# File:  rank_fun.py
# Author:  mikolas
# Created on:  Thu Jul 25 11:24:24 CEST 2024
# Copyright (C) 2024, Mikolas Janota

import random
from sympy import Symbol, Expr, sympify, Mul, Add, Abs


def eval_fun(e: Expr, s) -> float:
    """evaluate a function under a substitution"""
    return float(e.subs(s).simplify())


class RankFuns:
    """a utility for ranking functions"""

    def __init__(self) -> None:
        self.symbols = list(map(Symbol, ["r", "c", "n"]))
        self.r, self.c, self.n = self.symbols
        self.symbol_dictionary = {s.name: s for s in self.symbols}

    def make_random(self, depth: int = 3) -> Expr:
        """create randomk function"""

        def minus(a: Expr, b: Expr) -> Expr:
            return a - b

        if depth <= 0:
            return random.choice(
                self.symbols + [sympify(s) for s in ["1", "0", "-1", "1/2"]]
            )
        op, arity = random.choice([(minus, 2), (Mul, 2), (Add, 2), (Abs, 1)])
        return op(*[self.make_random(depth=depth - 1) for _ in range(arity)])

    def from_string(self, s: str) -> Expr:
        """create a function from a string"""
        return sympify(s, locals=self.symbol_dictionary)


def run_main():
    """For testing purposes only."""
    random.seed(973)
    rf = RankFuns()
    val = {rf.c: 0, rf.r: 1, rf.n: 5}
    print(">> generate some random functions")
    rnd_fs = {rf.make_random(5) for _ in range(20)}
    rnd_fs = {f for f in rnd_fs if not f.is_constant()}
    for f in rnd_fs:
        print(f, ":", eval_fun(f, val))

    print()
    print(">> convert functions from strings")
    for s in ["r+c", "abs(r - c)", "n*r + c"]:
        f = rf.from_string(s)
        print(f'"{s}"', "->", f, ":", eval_fun(f, val))


if __name__ == "__main__":
    run_main()
