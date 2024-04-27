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


class Splitting:
    """Paradox-style clause splitting for clauses consisting of shallow literals."""

    def splittable(cl):
        """Find variable connected to the least amount of other variables,
        or return that the clause isn't splittable."""
        vars = tuple(sorted(collect(cl, Var)))
        vars_names = tuple([v.name for v in vars])
        connections = {var: set() for var in vars_names}
        for var in vars_names:
            for lit in cl.literals:
                lit_vars = {v.name for v in collect(lit, Var)}
                if var in lit_vars:
                    connections[var] |= lit_vars
        for pair in connections:
            print(pair, connections[pair])
        least = vars_names[0]
        for var in vars_names:
            if len(connections[var]) < len(connections[least]):
                least = var
        if len(connections[least]) == len(vars):
            print("nejde")
            return False
        print(least)
        return least

    pass


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
        Splitting.splittable(cl)
        print("====")


if __name__ == "__main__":
    # testme("(x*y)*z = (((z*e)*x) * ((y*z)*e))*e. (e*e)*e = e.")
    testme("e*x = x. x*e = x. x*x'=e. x'*x=e. x*(y*z)=(x*y)*z.")

# TODO predicate name consisting of clause number and split number
