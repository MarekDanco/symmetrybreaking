"""MACE-like grounding of flattened set of clauses."""

from parsing import shallow3, collect, Var, get_terms
from itertools import product
from basics import pick_one, var, var_enc, var_pred


class Grounding:
    """Class for MACE-like grounding of flattened clauses."""

    def __init__(self, s: int, ids) -> None:
        self.s = s
        self.ids = ids

    def get_lit(self, tup, lit, names):
        """Get propositional variable for a given ground literal."""
        sign = lit.op[0] != "!"
        if lit.tag == 3:
            op = lit.op if sign else lit.op[1:]
            args = tuple([tup[names[v.name]] for v in lit.args])
            return var_pred(self.ids, sign, op, args)
        d = tup[names[lit.args[0].name]]  # first arg in (in)equality is always Var
        func = lit.args[1]  # second is always Term
        if func.tag == 2:
            op = "_"
            arg = func.name
        elif func.tag == 0:
            op = func.op
            if len(func.args) == 1:
                arg = tup[names[func.args[0].name]]
            elif len(func.args) == 2:
                x = tup[names[func.args[0].name]]
                y = tup[names[func.args[1].name]]
                return var_enc(self.s, sign, x, y, d)
        return var(self.ids, sign, op, arg, d)

    def ground_cl(self, cl):
        """Ground a clause with elements of domain of size s."""
        clauses = []
        vars = sorted([v.name for v in collect(cl, Var)])
        rep = len(vars)
        names = {vars[i]: i for i in range(rep)}

        for tup in product(range(self.s), repeat=rep):
            gr = []  # grounding for the current tuple
            add_gr = True
            for lit in cl.literals:
                add_lit = True
                if shallow3(lit) == 3:
                    v1, v2 = get_terms(lit)
                    if tup[names[v1.name]] == tup[names[v2.name]]:
                        add_gr = False
                        break
                    else:
                        add_lit = False
                if add_lit:  # dont append if x!=y
                    gr.append(self.get_lit(tup, lit, names))
            if add_gr:  # dont add grounding if x=y
                clauses += [gr]
        return clauses

    def ground(self, cnf):
        """Ground the CNF on input."""
        clauses = []
        for clause in cnf.clauses:
            clauses += self.ground_cl(clause)
        return clauses

    def one_hot(self, constants, inverses: bool):
        """Ensure 1-hot of all functions."""
        clauses = []
        rng = range(self.s)

        # *
        for x, y in product(rng, repeat=2):
            clauses += pick_one([var_enc(self.s, True, x, y, d) for d in rng])
        # '
        if inverses:
            for x in rng:
                clauses += pick_one([var(self.ids, True, "'", x, d) for d in rng])
        # constants
        for cnst in constants:
            clauses += pick_one([var(self.ids, True, "_", cnst.name, d) for d in rng])
        return clauses
