"""Find models for FOL formulas using MACE"""

import argparse
import time
from pysat.solvers import Solver
from pysat.formula import IDPool
from parsing import Parser, transform, ground, tostr, Const, collect
from minmod import minimal
from basics import one_hot, out, print_cnf


def testme(inp):
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument(
        "-p",
        "--permutations",
        help="encode minimality under all permutations",
        action="store_false",
    )
    arg_parser.add_argument(
        "-d",
        "--debug",
        help="print the encoded cnf",
        action="store_true",
    )
    args = arg_parser.parse_args()
    p = Parser()

    tree = p.parse(inp)
    flattened = transform(tree)

    s = 6
    ids = IDPool()
    cnf = []

    print("grounding: ", end="", flush=True)
    start = time.perf_counter()
    for clause in flattened.clauses:
        cnf += ground(ids, clause, s)
    end = time.perf_counter()
    print(f"{(end - start):.5f} seconds")

    if args.debug:
        print("parsed clauses after flattening:")
        print(tostr(flattened))
        print_cnf(ids, cnf)

    constants = collect(flattened, Const)
    cnf += one_hot(ids, constants, s)

    print("minimality: ", end="", flush=True)
    start = time.perf_counter()
    cnf += minimal(ids, s, args.permutations)
    end = time.perf_counter()
    print(f"{(end - start):.5f} seconds")

    solver = Solver(name="cd", bootstrap_with=cnf)
    counter = 0
    while True:
        counter += 1
        print("===", counter, flush=True)
        if solver.solve():
            model = solver.get_model()
            cl = out(ids, model, s)
            solver.add_clause(cl)  # find a new model
        else:
            print("unsat")
            break


if __name__ == "__main__":
    testme("x*e=x. e*x=x. x*x'=e. x'*x=e. (x*y)*z=x*(y*z). c*d!=d*c.")
