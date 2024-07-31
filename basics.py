"""Functions for printing and basic MACE encodings."""

from itertools import product
from rank_fun import RankFuns, eval_fun
import time
import random


class TimerError(Exception):
    """A custom exception used to report errors in use of Timer class."""


class Timer:
    """Basic timer."""

    def __init__(self) -> None:
        self._start_time = None

    def transform(self, secs):
        if secs < 60:
            return f"{secs:.4f} seconds"
        mins = secs // 60
        secs %= 60
        if mins < 60:
            word_min = "minute" if mins == 1 else "minutes"
            return f"{mins:.0f} {word_min} {secs:.4f} seconds"
        hours = mins // 60
        mins %= 60
        word_hour = "hour" if hours == 1 else "hours"
        if mins > 0:
            word_min = "minute" if mins == 1 else "minutes"
            return f"{hours:.0f} {word_hour} {mins:.0f} {word_min} {secs:.4f} seconds"
        return f"{hours:.0f} {word_hour} {secs:.4f} seconds"

    def start(self, text="computing", out=True):
        """Start a new timer."""
        if self._start_time is not None:
            raise TimerError(f"Timer is running. Use .stop() to stop it")

        self._start_time = time.perf_counter()
        if out:
            print(f"{text}:", flush=True)

    def stop(self, text="computation took", out=True):
        """Stop the timer and report the elapsed time."""
        if self._start_time is None:
            raise TimerError(f"Timer is not running. Use .start() to start it")

        elapsed_time = time.perf_counter() - self._start_time
        self._start_time = None
        if out:
            print(f"{text}: {self.transform(elapsed_time)}", flush=True)
        return elapsed_time


def decode(var, s):
    """Get parameters of a propositional variable for "*". Inverse function of var_enc."""
    var -= 1
    x = var // s**2
    var %= s**2
    y = var // s
    var %= s
    return f"{x}*{y}={var}"


def var2str(ids, var, s):
    """Print nicely a CNF var."""
    obj = ids.obj(var)
    return str(obj) if obj is not None else decode(var, s)


def lit2str(ids, lit, s):
    """Print nicely a CNF literal."""
    return ("-" if lit < 0 else "+") + "{" + "".join(var2str(ids, abs(lit), s)) + "}"


def debug_model(ids, model, s):
    """Print nicely a  SAT model."""
    print("[")
    for i, lit in enumerate(model):
        print(lit2str(ids, lit), end=" ")
        if (i + 1) % s == 0 or i == len(model) - 1:
            print()
    print("]")


def prn_clause(ids, clause, s):
    """Print nicely a CNF clause."""

    if isinstance(clause, int):
        print("ERROR:", lit2str(ids, clause, s))
    else:
        print("[", " ".join([lit2str(ids, lit, s) for lit in clause]), "]")


def print_cnf(ids, cnf, s):
    """Print nicely a CNF."""
    print("[")
    for clause in cnf:
        prn_clause(ids, clause, s)
    print("]")


def out(model, s, counter, time, ids=None, constants=None, inverses=False):
    """Print the function table and return a clause blocking the current model."""
    cl = []
    rng = range(s)
    print(f"model: {counter}, time: {time:.4f} seconds", flush=True)
    for x, y in product(rng, repeat=2):
        for d in rng:
            enc = var_enc(s, True, x, y, d)
            if model[enc - 1] > 0:
                cl.append(-enc)
                print(d, end=" ", flush=True)
                break
        if y == s - 1:
            print()
    if constants:
        for c in constants:
            for d in rng:
                enc = var(ids, True, "_", c.name, d)
                if model[enc - 1] > 0:
                    # cl.append(-enc)
                    print(f"{c.name}={d}", end=" ")
                    break
        print()
    if inverses:
        for x in rng:
            for d in rng:
                enc = var(ids, True, "'", x, d)
                if model[enc - 1] > 0:
                    # cl.append(-enc)
                    print(f"{x}'={d}", end=" ")
                    break
        print()
    return cl


def var_pred(ids, sign, op, args):
    """Propositional variable for a splitting predicate."""
    rv = ids.id((op, args))
    return rv if sign else -rv


def var_enc(s, sign, x, y, d):
    """Propositional variable for "*" operation."""
    rv = x * s**2 + y * s + d + 1
    return rv if sign else -rv


def var(ids, sign, op, arg, d):
    """Return propositional variable for equality of terms."""
    if op == "*":
        # rv = ids.id(("*", args[0], args[1], d))
        assert False, 'Use var_enc to encode variables for "*".'
    if op == "_":  # constants
        rv = ids.id(("_", arg, d))
    if op == "'":
        rv = ids.id(("'", arg, d))
    return rv if sign else -rv


def pick_one(lits):
    """Exactly one of the lits is true."""
    return [lits] + at_most_one(lits)


def at_most_one(lits):
    """At most one of the lits is true."""
    return [[-v1, -v2] for v1 in lits for v2 in lits if v1 < v2]


def order_old(s, args):
    """Order cells according to the given parameter."""
    rng = range(s)
    cells = [(x, y) for x in rng for y in rng]
    if args.concentric:
        cells.sort(key=lambda e: max(e[0], e[1]))
    elif args.diagonal:
        diagonal = [pair for pair in cells if pair[0] == pair[1]]
        non_diagonal = [pair for pair in cells if pair[0] != pair[1]]
        cells = diagonal + non_diagonal
    return cells


def order(s, args):
    """Order cells according to the given parameter."""
    rng = range(s)
    cells = [(x, y) for x in rng for y in rng]
    f = None
    if args.rows:
        pass
    elif args.concentric:
        cells.sort(key=lambda e: max(e[0], e[1]))
    elif args.diagonal:
        diagonal = [pair for pair in cells if pair[0] == pair[1]]
        non_diagonal = [pair for pair in cells if pair[0] != pair[1]]
        cells = diagonal + non_diagonal
    else:
        rf = RankFuns()
        f = rf.make_random(5)
        while f.is_constant():
            f = rf.make_random(5)
        cells.sort(
            key=lambda cell: eval_fun(f, {rf.r: cell[0], rf.c: cell[1], rf.n: s})
        )
    return cells, f
