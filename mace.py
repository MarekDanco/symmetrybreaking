"""Find models for an algebra using MACE."""

from argparser import arg_parser
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

    p = None
    if args.transpositions:
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

    t.start(text="minimality")
    cnf += minimal(ids, s, args, perms=p)
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
# testme("x' = x * 0. 0'' = 0. (x*y)*z = ((z'*x)*(y*z)')'.")
# testme("x*(y*z)=(x*y)*z.")
