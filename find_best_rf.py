#!/usr/bin/env python3
# File:  find_best_rf.py
# Author:  mikolas
# Created on:  Tue Aug 6 09:22:34 CEST 2024
# Copyright (C) 2024, Mikolas Janota

import argparse
import sys
import tempfile
import os
import random
import rank_fun
from sympy import sympify
from basics import mk_rnd_fun
import glob


def tryf(args, f):
    """execute one try on f, return size of the file."""
    order = args.order
    filename = args.filename
    with tempfile.TemporaryDirectory() as tmpdirname:
        to_run = f"python3 ./mkdimacs.py -C='{f}' -l {order} --path {tmpdirname}/ {order} {filename}"
        print("* RUNNING:", to_run, flush=True)
        ec = os.waitstatus_to_exitcode(os.system(to_run))
        print("* EXIT CODE:", ec, flush=True)
        if ec != 0:
            print("* BAD EXIT CODE:", ec, flush=True)
            return None
        sz = os.path.getsize(f"{tmpdirname}/{order}.cnf")
        print("* SIZE:", sz, flush=True)
        return sz
    return 0


def search(args):
    """look for the best ordering."""
    f = sympify("0")
    best_sz, best_f = None, None
    rf = rank_fun.RankFuns()
    for _ in range(args.tries):
        fz = tryf(args, f)
        if best_f is None or (fz is not None and best_sz > fz):
            best_sz, best_f = fz, f
            print("* CURRENT BEST:", best_sz, best_f, flush=True)
        f = mk_rnd_fun(rf)
    print("* BEST:", best_f, flush=True)


def run_main():
    """Run the whole program."""
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument(
        "filename",
        help="filename with input formula",
        type=str,
    )
    arg_parser.add_argument(
        "order",
        help="order to try",
        type=int,
    )
    arg_parser.add_argument(
        "--seed",
        help="seed of the random generator",
        default=97,
        type=int,
    )
    arg_parser.add_argument(
        "--tries",
        help="number of tries",
        default=10,
        type=int,
    )
    args = arg_parser.parse_args()
    random.seed(args.seed)
    search(args)
    return 0


if __name__ == "__main__":
    sys.exit(run_main())
