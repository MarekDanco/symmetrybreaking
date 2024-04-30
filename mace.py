"""Find models for the algebra on input using MACE."""

from argparser import arg_parser
from pysat.solvers import Solver
from pysat.formula import IDPool
from parsing import Parser, transform, Const, collect, find_inv
from grounding import Grounding
from minmod import minimal, lnh
from basics import out, Timer, var_enc
from parse_canset import alg1, alg2
from splitting import Splitting
import pyapproxmc
from itertools import product


def testme(inp):
    total = Timer()
    total.start(out=False)
    args = arg_parser().parse_args()
    t = Timer()

    t.start(text="parsing")
    p = Parser()
    tree = p.parse(inp)
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

    t.start(text="1-hot")
    cnf += g.one_hot(constants, inverses)
    t.stop()

    p = None
    if args.lnh:
        print("breaking symmetries using the Least Number Heuristic")
    elif args.transpositions:
        print("encoding minimality under transpositions only")
    elif args.permutations:
        print("encoding minimality under all permutations")
    else:
        t.start(text="canonical set")
        p = alg1(ids, cnf, s, args, constants=constants)
        t.stop()

        t.start(text="reduced canonical set")
        p = alg2(ids, cnf, s, p, args)
        t.stop()

    if args.lnh:
        cnf += lnh(ids, s, args, constants=constants, inverses=inverses)
    else:
        t.start(text="minimality")
        cnf += minimal(ids, s, args, perms=p)
        t.stop()

    mc = pyapproxmc.Counter()
    for c in cnf:
        mc.add_clause(c)
    print("running approx count", flush=True)
    rng = range(s)
    proj = [var_enc(s, True, x, y, d) for x, y in product(rng, repeat=2) for d in rng]
    count = mc.count(proj)
    print("Approximate count is: %d*2**%d" % (count[0], count[1]))

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


# testme("e*x = x. x*e = x. x*x'=e. x'*x=e. x*(y*z)=(x*y)*z.")
testme("(x*y)*z = (((z*e)*x) * ((y*z)*e))*e. (e*e)*e = e.")
# testme("x*(y*z)=(x*y)*z.")
# testme("x*x=x. (x*y)*x=y.")  # Constructing Finite Algebras with FALCON
