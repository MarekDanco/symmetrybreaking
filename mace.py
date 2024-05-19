"""Find models for the algebra on input using MACE."""

from argparser import arg_parser
from pysat.solvers import Solver
from pysat.formula import IDPool, CNF
from parsing import Parser, transform, Const, collect, find_inv
from grounding import Grounding
from minmod import minimal, lnh
from basics import out, Timer, var_enc
from canset import alg1, alg2
from splitting import Splitting
import pyapproxmc
from itertools import product
import sys


def cnf2dimacs(cnf, s, args):
    """Export the computed CNF to simplified DIMACS format."""
    dimacs = CNF(from_clauses=cnf)
    dimacs.to_file(args.dimacs)

    rng = range(s)
    proj = " ".join(
        [str(var_enc(s, True, x, y, d)) for x, y, d in product(rng, repeat=3)]
    )

    with open(args.dimacs, "r") as file:
        lines = file.readlines()

    lines.insert(1, f"c ind {proj} 0\n")

    with open(args.dimacs, "w") as file:
        file.writelines(lines)
    return


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
    t.stop()
    inverses = find_inv(tree)
    constants = tuple(sorted(collect(tree, Const)))

    t.start(text="flattening")
    flattened = transform(tree)
    t.stop()

    t.start(text="splitting")
    split = Splitting().transform(flattened)
    t.stop()

    s = args.domain
    ids = IDPool(occupied=[[1, s**3]])
    cnf = []

    t.start(text="grounding")
    g = Grounding(s, ids)
    cnf += g.ground(split)
    t.stop()

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
        print(f"canonizing set took: {t.stop(out=False):.4f} seconds")

        t.start(out=False)
        p = alg2(ids, cnf, s, p, args)
        print(f"reduction took: {t.stop(out=False):.4f} seconds")

    if args.lnh:
        cnf += lnh(ids, s, args, constants=constants, inverses=inverses)
    else:
        t.start(text="minimality")
        cnf += minimal(ids, s, args, perms=p)
        t.stop()

    if args.dimacs:
        cnf2dimacs(cnf, s, args)

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
    secs = total.stop(out=False)
    if secs < 60:
        return print(f"total time: {secs:.4f} seconds")
    mins = secs // 60
    secs %= 60
    word = "minute" if mins == 1 else "minutes"
    print(f"total time: {mins:.0f} {word} {secs:.4f} seconds")
    return 0


if __name__ == "__main__":
    sys.exit(run_main("."))
