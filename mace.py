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
        default=False,
        action="store_true",
    )
    arg_parser.add_argument(
        "-t",
        "--transpositions",
        help="encode minimality under transpositions only",
        default=False,
        action="store_true",
    )
    arg_parser.add_argument(
        "-c",
        "--concentric",
        help="encode minimality with respect to concentric ordering",
        default=False,
        action="store_true",
    )
    arg_parser.add_argument(
        "domain",
        type=int,
        help="domain size",
    )
    arg_parser.add_argument(
        "solver",
        help="name of  the SAT solver, set to Cadical153 by default",
        default="cd15",
        nargs="?",
        type=str,
    )
    args = arg_parser.parse_args()

    t = Timer()
    p = Parser()
    t.start(text="parsing")
    tree = p.parse(inp)
    t.stop()
    inverses = find_inv(tree)
    constants = tuple(sorted(collect(tree, Const)))

    t.start(text="flattening")
    flattened = transform(tree)
    t.stop()

    s = args.domain
    ids = IDPool(occupied=[[1, s**3]])
    cnf = []

    t.start(text="grounding")
    g = Grounding(s, ids)
    cnf += g.ground(flattened)
    t.stop()

    t.start(text="1-hot")
    cnf += g.one_hot(constants, inverses)
    t.stop()

    cells = [(x, y) for x in range(s) for y in range(s)]
    if args.concentric:
        cells.sort(key=lambda e: max(e[0], e[1]))

    t.start(text="canonical set")
    p = alg1(ids, cnf, s, args.solver, cells=cells, constants=constants)
    t.stop()

    t.start(text="reduced canonical set")
    p = alg2(ids, cnf, s, p, args.solver, cells=cells)
    t.stop()

    t.start(text="minimality")
    cnf += minimal(ids, s, args.permutations, perms=p, cells=cells)
    t.stop()

    solver = Solver(name=args.solver, bootstrap_with=cnf)
    counter = 0
    while True:
        counter += 1
        t.start(out=False)
        sat = solver.solve()
        time = t.stop(out=False)
        if sat:
            model = solver.get_model()
            cl = out(model, s, counter, time, ids, constants)
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


testme("e*x = x. x*e = x. x*x'=e. x'*x=e. x*(y*z)=(x*y)*z.")
# testme("(x*y)*z = (((z*e)*x) * ((y*z)*e))*e. (e*e)*e = e.")
# testme("x*(y*z)=(x*y)*z.")
