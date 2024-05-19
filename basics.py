"""Functions for printing and basic MACE encodings."""

from itertools import product
import time


class TimerError(Exception):
    """A custom exception used to report errors in use of Timer class."""


class Timer:
    """Basic timer."""

    def __init__(self) -> None:
        self._start_time = None

    def start(self, text="elapsed time", out=True):
        """Start a new timer."""
        if self._start_time is not None:
            raise TimerError(f"Timer is running. Use .stop() to stop it")

        self._start_time = time.perf_counter()
        if out:
            print(f"{text}: ", end="", flush=True)

    def stop(self, out=True):
        """Stop the timer and report the elapsed time."""
        if self._start_time is None:
            raise TimerError(f"Timer is not running. Use .start() to start it")

        elapsed_time = time.perf_counter() - self._start_time
        self._start_time = None
        if out:
            print(f"{elapsed_time:.4f} seconds")
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
