"""Functions for printing and basic cnf encodings."""

from itertools import product
import time


class TimerError(Exception):
    """A custom exception used to report errors in use of Timer class."""


class Timer:
    """Basic timer."""

    def __init__(self) -> None:
        self._start_time = None

    def start(self, text="elapsed time"):
        """Start a new timer."""
        if self._start_time is not None:
            raise TimerError(f"Timer is running. Use .stop() to stop it")

        self._start_time = time.perf_counter()
        print(f"{text}: ", end="", flush=True)

    def stop(self):
        """Stop the timer, and report the elapsed time."""
        if self._start_time is None:
            raise TimerError(f"Timer is not running. Use .start() to start it")

        elapsed_time = time.perf_counter() - self._start_time
        self._start_time = None
        print(f"{elapsed_time:.5f} seconds")
        return elapsed_time


def var2str(ids, var):
    """Print nicely a CNF var."""
    obj = ids.obj(var)
    return obj if obj is not None else "#" + str(var)


def lit2str(ids, lit):
    """Print nicely a CNF literal."""
    return ("-" if lit < 0 else "+") + "{" + "".join(var2str(ids, abs(lit))) + "}"


def debug_model(ids, model, s):
    """Print nicely a  SAT model."""
    print("[")
    for i, lit in enumerate(model):
        print(lit2str(ids, lit), end=" ")
        if (i + 1) % s == 0 or i == len(model) - 1:
            print()
    print("]")


def prn_clause(ids, clause):
    """Print nicely a CNF clause."""

    if isinstance(clause, int):
        print("ERROR:", lit2str(ids, clause))
    else:
        print("[", " ".join([lit2str(ids, lit) for lit in clause]), "]")


def print_cnf(ids, cnf):
    """Print nicely a CNF."""
    print("[")
    for clause in cnf:
        prn_clause(ids, clause)
    print("]")


def out(ids, model, s):
    """Print the function table and return a clause blocking the current model."""
    cl = []
    rng = range(s)

    for x, y in product(rng, repeat=2):
        for d in rng:
            if model[var(ids, True, "*", [x, y], d) - 1] > 0:
                cl.append(var(ids, False, "*", [x, y], d))
                print(d, end=" ", flush=True)
        if y == s - 1:
            print()
    return cl


def var(ids, sign, op, args, d):
    """Return propositional variable for equality of terms."""
    if op == "*":
        rv = ids.id(f"{args[0]}*{args[1]}={d}")
    if op == "_":  # constants
        rv = ids.id(f"{args[0]}={d}")
    if op == "'":
        rv = ids.id(f"{args[0]}'={d}")
    return rv if sign else -rv


def pick_one(lits):
    """Exactly one of the lits is true."""
    return [lits] + at_most_one(lits)


def at_most_one(lits):
    """At most one of the lits is true."""
    return [[-v1, -v2] for v1 in lits for v2 in lits if v1 < v2]


def one_hot(ids, constants, inverses: bool, s):
    """Ensure 1-hot of all functions."""
    clauses = []
    rng = range(s)

    # *
    for x, y in product(rng, repeat=2):
        clauses += pick_one([var(ids, True, "*", [x, y], d) for d in rng])
    # '
    if inverses:
        for x in rng:
            clauses += pick_one([var(ids, True, "'", [x], d) for d in rng])
    # constants
    for cnst in constants:
        clauses += pick_one([var(ids, True, "_", [cnst.name], d) for d in rng])
    return clauses
