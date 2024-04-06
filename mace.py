"""Find models for an algebra using MACE."""

import argparse
from pysat.solvers import Solver
from pysat.formula import IDPool
from parsing import Parser, transform, ground, Const, collect, find_inv
from minmod import minimal
from basics import one_hot, out, Timer
from parse_canset import alg1, alg2


def testme(inp):
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument(
        "-p",
        "--permutations",
        help="encode minimality under all permutations",
        action="store_true",
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
    inverses = find_inv(tree)
    constants = collect(tree, Const)

    t.start(text="flattening")
    flattened = transform(tree)
    t.stop()

    s = 6
    ids = IDPool()
    cnf = []

    t.start(text="grounding")
    for clause in flattened.clauses:
        cnf += ground(ids, clause, s)
    t.stop()

    t.start(text="1-hot")
    cnf += one_hot(ids, constants, inverses, s)
    t.stop()

    t.start(text="canonical set")
    p = alg1(ids, cnf, s)
    t.stop()

    t.start(text="reduced canonical set")
    p = alg2(ids, cnf, s, p)
    t.stop()

    t.start(text="minimality")
    cnf += minimal(ids, s, args.permutations, args.concentric)
    t.stop()

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
            print("===")
            break


if __name__ == "__main__":
    # testme("e*x = x. x*e = x. x*x'=e. x'*x=e. x*(y*z)=(x*y)*z.")
    testme("(x*y)*z = (((z*e)*x) * ((y*z)*e))*e. (e*e)*e = e.")
