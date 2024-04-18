"""Parse command line arguments."""

import argparse


def arg_parser():
    """Returns ArgumentParser object equipped with defined arguments."""
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
        help="name of  the SAT solver, set to Cadical195 by default",
        default="cd19",
        nargs="?",
        type=str,
    )
    return arg_parser
