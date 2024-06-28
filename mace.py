"""Find models for the algebra on input using MACE."""

from argparser import arg_parser
from pysat.solvers import Solver
from pysat.formula import IDPool
from parsing import Parser, transform, Const, collect, find_inv
from grounding import Grounding
from minmod import minimal, lnh
from basics import out, Timer, var_enc
from canset import alg1, alg2
from splitting import Splitting
import pyapproxmc
from itertools import product
import sys


def run_main(inp):
    total = Timer()
    total.start(out=False)
    args = arg_parser().parse_args()
    t = Timer()

    if args.filename == "-":
        data = inp
    else:
        with open(args.filename, "r", encoding="utf-8") as infile:
            data = infile.read()

    t.start(text="parsing")
    p = Parser()
    tree = p.parse(data)
    t.stop(text="parsing took")
    inverses = find_inv(tree)
    constants = tuple(sorted(collect(tree, Const)))

    t.start(text="flattening")
    flattened = transform(tree)
    t.stop(text="flattening took")

    t.start(text="splitting")
    split = Splitting().transform(flattened)
    t.stop(text="splitting took")

    s = args.domain
    ids = IDPool(occupied=[[1, s**3]])
    cnf = []

    t.start(text="grounding")
    g = Grounding(s, ids)
    cnf += g.ground(split)
    t.stop(text="grounding took")

    # t.start(text="1-hot")
    cnf += g.one_hot(constants, inverses)
    # t.stop()

    p = None
    if args.lnh:
        print("breaking symmetries using the Least Number Heuristic")
    elif args.transpositions:
        print("encoding minimality under transpositions only")
    elif args.permutations:
        print("encoding minimality under all permutations")
    else:
        t.start(out=False)
        p = alg1(ids, cnf, s, args, constants=constants)
        t.stop(text="canonizing set took")

        t.start(out=False)
        p = alg2(ids, cnf, s, p, args)
        t.stop(text="reduction took")
    if args.lnh:
        cnf += lnh(ids, s, args, constants=constants, inverses=inverses)
    else:
        t.start(text="minimality")
        cnf += minimal(ids, s, args, perms=p)
        t.stop(text="minimality took")

    if args.approx:
        print("approximate model count:", flush=True, end=" ")
        mc = pyapproxmc.Counter()
        for c in cnf:
            mc.add_clause(c)
        rng = range(s)
        proj = [var_enc(s, True, x, y, d) for x, y, d in product(rng, repeat=3)]
        count = mc.count(proj)
        print(f"{count[0]}*2**{count[1]}")

    solver = Solver(name=args.solver, bootstrap_with=cnf)
    counter = 0
    while True:
        counter += 1
        t.start(out=False)
        sat = solver.solve()
        time = t.stop(out=False)
        if sat:
            model = solver.get_model()
            cl = out(
                model, s, counter, time, ids, constants=constants, inverses=inverses
            )
            solver.add_clause(cl)  # find a new model
        else:
            break
    solver.delete()
    total.stop(text="total time")
    return 0


if __name__ == "__main__":
    sys.exit(run_main("."))
