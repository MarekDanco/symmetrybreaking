# Prerequisites

The software is implemented in Python3, the following packages are required
Name: python-sat
Version: 1.8.dev10
Name: pyparsing
Version: 3.1.2
Name: sympy
Version: 1.14.dev0

Our code shouldn't be very version-sensitive but `pyparsing` is known not to be back-compatible, so please upgrade if necessary.

Code was tested on linux.

# Algorithms

Algorithms 1 and 2 in the paper are found in canset.py as `alg1`, `alg2`.

# Producing canonizing sets

As an example, to produce a canonizing sets for groups of domain size 5..7, using the row-by-row ordering:

```
python3 ./mkdimacs.py --path groups/ -r -l 5 7 structures/group.txt
```

The DIMACS files will be stores in the `groups` folder. To use the diagonal ordering, use the `-d` option instead of `-r`, e.g.:


```
python3 ./mkdimacs.py --path groups_d/ -d -l 5 7 structures/group.txt
```

# Precomputed canonizing sets and logs

The folder `dimacs_logs` contains a sample of the canonizing sets, as DIMACS, for the row-by-row and diagonal ordering.
Additionally, the file `STRUCTURE_SZ.log` contains the std out of the corresponding run of `mkdimacs.py`.
The DIMACS files are large so in order to fit into the size limit, we removed all canonizing sets with domain size higher than 6.

The folder `d4_logs` records runs of `d4` on the calculated canonizing sets.

# Running the model counter d4

`d4` should be run from its folder, by the `run` script. For example, assuming that canonizing sets are present already in the `groups_d` folder:

```
cd d4
ls ../groups_d/*.cnf | xargs -n1 ./run | grep -e Problem -e 'c s exact'
```


# Algebras

The folder `structures` contains description of algebra classes used in the
experiments. They are described in a simple language, where w,x,y,z are always
variables, a-h constants and * is a binary infix operator, and ' a unary
postfix one. Input is expected in CNF.
