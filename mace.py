"""Find models for an algebra using MACE."""

import argparse
from pysat.solvers import Solver
from pysat.formula import IDPool
from parsing import Parser, transform, ground, Const, collect
from minmod import minimal
from basics import one_hot, out, Timer


def testme(inp):
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument(
        "-p",
        "--permutations",
        help="encode minimality under all permutations",
        action="store_false",
    )
    arg_parser.add_argument(
        "-c",
        "--concentric",
        help="encode minimality with respect to concentric ordering",
        action="store_true",
    )
    args = arg_parser.parse_args()

    p = Parser()
    t = Timer()
    t.start(text="parsing")
    tree = p.parse(inp)
    t.stop()
    constants = collect(tree, Const)

    t.start(text="flattening")
    flattened = transform(tree)
    t.stop()

    s = 8
    ids = IDPool()
    cnf = []

    t.start(text="grounding")
    for clause in flattened.clauses:
        cnf += ground(ids, clause, s)
    t.stop()

    t.start(text="1-hot")
    cnf += one_hot(ids, constants, s)
    t.stop()

    t.start(text="minimality")
    canset = [
        [0, 7, 4, 2, 3, 5, 6, 1],
        [0, 3, 1, 2, 4, 7, 6, 5],
        [0, 1, 4, 7, 5, 2, 3, 6],
        [4, 0, 1, 7, 6, 3, 2, 5],
        [6, 0, 2, 7, 4, 3, 1, 5],
        [5, 0, 6, 7, 4, 3, 2, 1],
        [7, 1, 2, 4, 5, 3, 6, 0],
        [7, 1, 2, 4, 5, 3, 0, 6],
        [7, 6, 2, 4, 1, 3, 0, 5],
        [1, 6, 0, 4, 7, 3, 2, 5],
        [0, 1, 3, 6, 4, 7, 5, 2],
        [0, 1, 6, 7, 4, 5, 3, 2],
        [0, 1, 2, 7, 4, 3, 5, 6],
        [0, 1, 2, 7, 3, 4, 5, 6],
        [0, 1, 2, 3, 4, 6, 5, 7],
        [0, 1, 2, 3, 5, 6, 7, 4],
        [7, 0, 2, 1, 5, 3, 6, 4],
        [2, 5, 0, 3, 7, 6, 4, 1],
        [2, 7, 0, 3, 6, 5, 1, 4],
        [3, 5, 0, 2, 1, 6, 4, 7],
        [3, 0, 4, 2, 1, 7, 6, 5],
        [0, 1, 4, 3, 6, 5, 2, 7],
        [5, 4, 1, 6, 0, 3, 2, 7],
        [5, 1, 2, 3, 0, 6, 7, 4],
        [1, 4, 6, 7, 0, 5, 2, 3],
        [7, 4, 2, 1, 0, 6, 5, 3],
        [3, 5, 2, 4, 0, 1, 7, 6],
        [5, 1, 6, 4, 0, 2, 7, 3],
        [5, 1, 7, 4, 0, 2, 3, 6],
        [0, 6, 3, 1, 2, 5, 4, 7],
        [0, 6, 2, 3, 7, 1, 4, 5],
        [0, 6, 4, 3, 7, 1, 5, 2],
        [0, 4, 2, 7, 1, 6, 3, 5],
        [0, 1, 5, 4, 2, 3, 7, 6],
        [0, 7, 6, 1, 5, 3, 2, 4],
        [0, 7, 1, 6, 3, 5, 2, 4],
        [0, 3, 1, 2, 5, 6, 4, 7],
        [0, 1, 5, 4, 7, 6, 3, 2],
        [0, 1, 2, 3, 5, 4, 6, 7],
        [0, 2, 3, 1, 4, 6, 7, 5],
        [0, 1, 3, 2, 4, 5, 7, 6],
    ]
    cnf += minimal(ids, s, args.permutations, args.concentric, canset)
    t.stop()

    solver = Solver(name="cd19", bootstrap_with=cnf)
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
            print("===")
            break


if __name__ == "__main__":
    # testme("x*y!=x*z | z=y. y*x!=z*x | z=y. e*x = x. x*e = x.")
    testme("e*x = x. x*e = x. x*x'=e. x'*x=e. x*(y*z)=(x*y)*z.")
