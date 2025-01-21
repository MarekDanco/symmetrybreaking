# Dependencies

To install the dependencies required to run the program, use the following command:
```sh
pip install pysat pyapproxmc pyparsing sympy
```
The core of the SAT encoding in `Python` is done using the `PySAT` package [1].

# Usage

The whole program is run using the `main.py` script.

The run of the program can be modified by various command line arguments. These include the domain size, axioms of the algebraic structure, different cell orderings, opting permutations used for symmetry breaking, counting the approximate number of models and choice of the SAT solver. The only required argument is the domain size `n`.

## Domain size `n`

Specify the domain size of the algebraic structure using an integer value. The minimal domain size is 2.

## Structure axioms

Axioms of the structures tested in [2] are listed in `structures`. To run the program on your favorite magma, type the axioms in a `.txt` file and include the path to this file in the argument.

If no axioms are given, non-isomorphic models are generated for magmas (i.e. no axioms restricting the binary function).

## Cell ordering options

- `-r` row by row
- `-c` concentric
- `-d` diagonal first

If no option is given, a random cell ordering is generated in the form of a function. This function maps a given row, column, and the domain size `n` to an integer value. Cells are then sorted in ascending order according to this value. In cases where there are ties (i.e., cells with the same value), the order is determined by row by row ordering.

## Symmetry breaking

By default, symmetries are broken using canonizing sets as described in [2, 3].

You can choose to break symmetries partially using all transpositions with `-t` or you can use all possible permutations with `-p`&nbsp;for complete symmetry breaking (infeasible for larger values of `n`). 

## Approximate model counting

Using the `-a` option you can also count the approximate number of models using `pyapproxmc`.

## SAT solver

You can specify the SAT solver using the `-s` option. The supported solvers are those provided by `PySAT`.

## Example

The following command enumerates all non-isomorphic loops of order 5. Symmetry breaking is done using diagonal first ordering of cells and the SAT solver used is `Glucose 4`. The program also outputs the approximate model count.

```sh
python3 main.py -d -a -s g4 5 structures/loop.txt
```

# Count all non-isomorphic models

Since enumerating all non-isomorphic structures in `Python` may be slow, to count all models you can export the SAT formula 
to `DIMACS` format and run your favorite model counter. For this use the `mkdimacs.py` script.

## Command line arguments

The command line arguments are similar to those used when running `main.py` except that if no lower bound argument `-l` is given, the program generates all `DIMACS` up to the domain size `n`. Additionally, you can specify the directory where you want to save the `DIMACS` using `--path` followed by the path to the directory ending with a `/`.

<!--
## Find best ranking function
?
-->

## Example

The following script creates a new directory `loop-dimacs` and stores the SAT formula for loops of order 5 in a file named `5.cnf`. The SAT solver used for computing a canonizing set is `Glucose 4`.

```sh
python3 mkdimacs.py -l 5 -s g4 --path loop-dimacs/ 5 structures/loop.txt
```

# References
- [1] Ignatiev, A., Morgado, A., & Marques-Silva, J. (2018). PySAT: A Python Toolkit for Prototyping with SAT Oracles. In *Proceedings of the SAT Conference* (pp. 428-437). doi: [10.1007/978-3-319-94144-8_26](https://doi.org/10.1007/978-3-319-94144-8_26)
- [2] TODO aaai paper reference
- [3] Dančo, M. 2024. The Application of SAT Solving to Finite Model Finding. Master’s thesis, Charles University, Prague, Czech Republic. http://hdl.handle.net/20.500.11956/193190