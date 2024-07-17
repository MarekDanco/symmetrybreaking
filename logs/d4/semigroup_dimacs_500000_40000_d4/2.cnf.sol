c [SCRIPT] Command line: /home/mikolas/mc/semigroup_dimacs/2.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/semigroup_dimacs/2.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 114
c [INITIAL INPUT] Number of clauses: 108
c [INITIAL INPUT] Number of binary clauses: 24
c [INITIAL INPUT] Number of ternary clauses: 84
c [INITIAL INPUT] Number of clauses larger than 3: 0
c [INITIAL INPUT] Number of literals: 300
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 0.000885
c [BACKBONE] Number of SAT calls: 4
c [BACKBONE] Backbone size: 3
c [BACKBONE] Number of units detected by calling the solver: 1
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 3
c [DAC] #Equivalences: 3
c [DAC] #And gates: 0
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 8
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 5
c [BIPARTITION] #Model considered for preproc with models: 2
c [BIPARTITION] #Input variables from models as preproc: 0
c [BIPARTITION] Initial input set: 3
c [CONSTRUCTOR] Solver: Glucose
c [HEURISTIC-BIPARTITION] Constructor
c [HEURISTIC-BIPARTITION] Method run: OCC_ASC
c Run for 0 conflicts
c [1m[31mBipartition in progress[0m
c [BIPARTITION] [1m[31mStatistics [0m
c [BIPARTITION] #Input variables get from complete model: 0
c [BIPARTITION] #Input variables get from Padoa model: 0
c [BIPARTITION] #Input variables get from model: 0
c [BIPARTITION] #Output variables get from symmetries: 0
c [BIPARTITION] #Input variables computed: 3
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 0.000258
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 5392
c [REDUCER PROPAGATOR] Binary clauses: 24
c [REDUCER PROPAGATOR] Not binary clauses: 84
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 252
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 24
c [REDUCER OCC-ELIMINATION] Number of literals removed: 24
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 23
c [REDUCER VIVIFICATION] Number of clauses removed: 12
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 26
c [REDUCER OCC-ELIMINATION] Number of literals removed: 26
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 37
c [REDUCER VIVIFICATION] Number of clauses removed: 19
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 28
c [REDUCER OCC-ELIMINATION] Number of literals removed: 28
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 39
c [REDUCER VIVIFICATION] Number of clauses removed: 19
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 28
c [REDUCER OCC-ELIMINATION] Number of literals removed: 28
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 39
c [REDUCER VIVIFICATION] Number of clauses removed: 19
c [ELIMINATOR] #elim-gate = 5	#elim-resolution = 105
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 2272
c [REDUCER PROPAGATOR] Binary clauses: 4
c [REDUCER PROPAGATOR] Not binary clauses: 10
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 30
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 0
c [REDUCER OCC-ELIMINATION] Number of literals removed: 0
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 10
c [REDUCER VIVIFICATION] Number of clauses removed: 5
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 0
c [REDUCER OCC-ELIMINATION] Number of literals removed: 0
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 14
c [REDUCER VIVIFICATION] Number of clauses removed: 7
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 0
c [REDUCER OCC-ELIMINATION] Number of literals removed: 0
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 14
c [REDUCER VIVIFICATION] Number of clauses removed: 7
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 114
c [PREPROCESSED INPUT] Number of clauses: 117
c [PREPROCESSED INPUT] Number of binary clauses: 4
c [PREPROCESSED INPUT] Number of ternary clauses: 3
c [PREPROCESSED INPUT] Number of clauses larger than 3: 0
c [PREPROCESSED INPUT] Number of literals: 127
c
c
c [PROJECTED VARIABLES] list: 1 2 3 4 5 6 7 8 
c
c [METHOD MANAGER] Panic mode: 0
c [DPLL STYLE METHOD] Decay frequency: 128
c [CONSTRUCTOR] Solver: minisat cnf
c [CONSTRUCTOR SPEC] Spec manager: dynamic cnf
c [CONSTRUCTOR] Variable heuristic: vsads
c [CONSTRUCTOR] Phase heuristic: polarity
c [MODE] projected
c [CONSTRUCTOR] Partitioner manager: none
c [CACHE] Cache method used: list
c [CONSTRUCTOR] Cache cleaning manager: none
c [CONSTRUCTOR] Cache bucket manager: storage(not-touched)  representation(clause)  size_first_page(4294967296) size_additional_page(536870912)
c [CACHE LIST CONSTRUCTOR]
c [CONSTRUCTOR] Operation: method(counting) float(0)
c
c Warm start process (11): 0/29
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c --------------------------------------------------------------------------------------------------------
c
c [1m[31mStatistics [0m
c [33mCompilation Information[0m
c Number of recursive call: 7
c Number of split formula: 0
c Number of decision: 3
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 0
c Number of negative hit: 3
c
c
c Final time: 0
c
s SATISFIABLE
c s type pmc
c s log10-estimate 0.69897000433601880478626110527550697323181011853789
c s exact arb int 5
