"""Make DIMACS files for an algebra for different domain sizes."""

import argparse
import sys
import os

from itertools import product
from pysat.formula import IDPool, CNF
from basics import var_enc, Timer, order
from parsing import Parser, find_inv, collect, Const, transform
from splitting import Splitting
from grounding import Grounding
from canset import alg1, alg2
from minmod import minimal
import canset


def cnf2dimacs(cnf, s, args):
    """Export the computed CNF to simplified DIMACS format."""
    dimacs = CNF(from_clauses=cnf)

    file = f"{args.path}{s}.cnf"
    dimacs.to_file(file)

    rng = range(s)
    proj = " ".join(
        [str(var_enc(s, True, x, y, d)) for x, y, d in product(rng, repeat=3)]
    )

    with open(file, "r") as out:
        lines = out.readlines()

    lines.insert(1, f"c ind {proj} 0\n")

    with open(file, "w") as out:
        out.writelines(lines)


def mkdimacs(data, args):
    t = Timer()
    p = Parser()
    tree = p.parse(data)
    inverses = find_inv(tree)
    constants = tuple(sorted(collect(tree, Const)))

    flattened = transform(tree)
    split = Splitting().transform(flattened)

    if args.path != "":
        if not os.path.exists(args.path):
            os.mkdir(args.path)
            print(f"Directory '{args.path}' created.", flush=True)

    for s in range(args.lowbound, args.upbound + 1):
        print("===", flush=True)
        print(f"making DIMACS for domain size {s}", flush=True)
        ids = IDPool(occupied=[[1, s**3]])
        cnf = []

        g = Grounding(s, ids)
        cnf += g.ground(split)
        cnf += g.one_hot(constants, inverses)

        cells, f = order(s, args)
        if args.rows:
            ordering = "row by row"
        elif args.concentric:
            ordering = "concentric"
        elif args.diagonal:
            ordering = "diagonal first"
        else:
            ordering = f
        print(f"ordering of cells: {ordering}")

        p = None
        if args.permutations:
            print("encoding minimality under all permutations", flush=True)
        else:
            t.start(out=False)
            p = alg1(ids, cnf, s, args, cells, constants=constants, main=False)
            t.stop(text="canonizing set took")
            t.start(out=False)
            p = alg2(ids, cnf, s, p, args, cells, main=False)
            t.stop(text="reduction took")
        t.start(text="minimality")
        cnf += minimal(ids, s, args, cells, perms=p)
        t.stop(text="minimality took")
        t.start(text="creating DIMACS")
        cnf2dimacs(cnf, s, args)
        t.stop(text="DIMACS took")


def run_main(inp):
    """Run the whole program."""
    total = Timer()
    total.start(out=False)

    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument(
        "upbound",
        help="domain upper bound",
        nargs="?",
        type=int,
    )
    arg_parser.add_argument(
        "filename",
        help="filename with input formula",
        default="-",
        nargs="?",
        type=str,
    )
    arg_parser.add_argument(
        "--path",
        help="path to the output directory, output here by default",
        default="",
        nargs="?",
        type=str,
    )
    arg_parser.add_argument(
        "-l",
        "--lowbound",
        help="domain lower bound",
        nargs="?",
        default=2,
        type=int,
    )
    arg_parser.add_argument(
        "-p",
        "--permutations",
        help="encode minimality under all permutations",
        default=False,
        action="store_true",
    )
    arg_parser.add_argument(
        "-r",
        "--rows",
        help="encode minimality with respect to cells ordered by rows",
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
        "-d",
        "--diagonal",
        help="encode minimality with respect to diagonal ordering",
        default=False,
        action="store_true",
    )
    arg_parser.add_argument(
        "-C", "--custom", help="custom ordering function", type=str, default=None
    )
    arg_parser.add_argument(
        "-s",
        "--solver",
        help="name of  the SAT solver, set to Cadical195 by default",
        default="cd19",
        nargs="?",
        type=str,
    )

    arg_parser.add_argument("--transpositions", default=False)
    arg_parser.add_argument("-lnh", default=False)
    args = arg_parser.parse_args()

    if args.filename == "-":
        data = inp
    else:
        with open(args.filename, "r", encoding="utf-8") as infile:
            data = infile.read()
    mkdimacs(data, args)
    print(f"TOTAL_SAT: {canset.TOTAL_SAT:.4f}", flush=True)
    total.stop(text="total time")
    return 0


if __name__ == "__main__":
    sys.exit(run_main("."))
