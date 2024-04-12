"""Find models for an algebra using MACE."""

import argparse
from pysat.solvers import Solver
from pysat.formula import IDPool
from parsing import Parser, transform, Const, collect, find_inv
from grounding import Grounding
from minmod import minimal
from basics import out, Timer
from parse_canset import alg1, alg2


def testme(inp):
    total = Timer()
    total.start(out=False)
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
    arg_parser.add_argument(
        "s",
        type=int,
        help="domain size",
    )
    args = arg_parser.parse_args()

    p = Parser()
    t = Timer()
    t.start(text="parsing")
    tree = p.parse(inp)
    t.stop()
    inverses = find_inv(tree)
    constants = set(sorted(collect(tree, Const)))

    t.start(text="flattening")
    flattened = transform(tree)
    t.stop()

    s = args.s
    ids = IDPool()
    cnf = []

    t.start(text="grounding")
    g = Grounding(s, ids)
    cnf += g.ground(flattened)
    t.stop()

    t.start(text="1-hot")
    cnf += g.one_hot(constants, inverses)
    t.stop()

    t.start(text="canonical set")
    p = alg1(ids, cnf, s)
    t.stop()

    t.start(text="reduced canonical set")
    p = alg2(ids, cnf, s, p)
    t.stop()

    t.start(text="minimality")
    cnf += minimal(ids, s, args.permutations, args.concentric, perms=p)
    t.stop()

    solver = Solver(name="cd", bootstrap_with=cnf)
    counter = 0
    while True:
        counter += 1
        t.start(out=False)
        sat = solver.solve()
        time = t.stop(out=False)
        if sat:
            model = solver.get_model()
            cl = out(ids, model, s, g.pairs, counter, time)
            solver.add_clause(cl)  # find a new model
        else:
            break
    solver.delete()
    secs = total.stop(out=False)
    if secs < 60:
        return print(f"total time: {secs:.4f} seconds")
    mins = secs // 60
    secs %= 60
    word = "minute" if mins == 1 else "minutes"
    print(f"total time: {mins:.0f} {word} {secs:.4f} seconds")


# testme("e*x = x. x*e = x. x*x'=e. x'*x=e. x*(y*z)=(x*y)*z.")
testme("(x*y)*z = (((z*e)*x) * ((y*z)*e))*e. (e*e)*e = e.")
