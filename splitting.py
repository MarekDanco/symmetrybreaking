"""Clause splitting with Paradox heuristic."""

from parsing import (
    Apply,
    Var,
    Const,
    Predicate,
    Clause,
    CNF,
    collect,
    Parser,
    tostr,
    transform,
)
from copy import deepcopy


class Splitting:
    """Paradox-style clause splitting for clauses consisting of shallow literals."""

    def splittable(cl):
        """Find variable connected to the least amount of other variables,
        or return that the clause isn't splittable."""
        vars = sorted([v.name for v in collect(cl, Var)])
        connections = {var: set() for var in vars}
        for var in vars:
            for lit in cl.literals:
                lit_vars = {v.name for v in collect(lit, Var)}
                if var in lit_vars:
                    connections[var] |= lit_vars
        for pair in connections:
            print(pair, connections[pair])
        least = vars[0]
        for var in vars:
            if len(connections[var]) < len(connections[least]):
                least = var
        if len(connections[least]) == len(vars):
            print("nejde")
            return False
        print(least)
        return least

    def lr_split(cl, var):
        """Split a clause into a left and right part using given variable."""
        left = Clause(literals=[])
        right = Clause(literals=[])
        for lit in cl.literals:
            lit_vars = {v.name for v in collect(lit, Var)}
            if var in lit_vars:
                left.literals.append(deepcopy(lit))
            else:
                right.literals.append(deepcopy(lit))

        left_vars = collect(left, Var)
        right_vars = collect(right, Var)
        intrsn = sorted(list(left_vars.intersection(right_vars)))
        left.literals.append(Predicate(op=f"S<>", args=intrsn, tag=3))
        right.literals.append(Predicate(op=f"!S<>", args=intrsn, tag=3))
        return left, right


def testme(inp):
    """Test the formula on input."""
    p = Parser()
    tree = p.parse(inp)

    print("input:")
    print(tostr(tree))
    print("flattened:")
    ftree = transform(tree)
    print(tostr(ftree))

    for cl in ftree.clauses:
        v = Splitting.splittable(cl)
        if v:
            l, r = Splitting.lr_split(cl, v)
            print(tostr(l))
            print(tostr(r))
        print("====")


if __name__ == "__main__":
    testme("(x*y)*z = (((z*e)*x) * ((y*z)*e))*e. (e*e)*e = e.")
    # testme("e*x = x. x*e = x. x*x'=e. x'*x=e. x*(y*z)=(x*y)*z.")

# TODO predicate name consisting of clause number and split number
