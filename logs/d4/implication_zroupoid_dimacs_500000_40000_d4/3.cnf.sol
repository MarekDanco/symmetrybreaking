c [SCRIPT] Command line: /home/mikolas/mc/implication_zroupoid_dimacs/3.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/implication_zroupoid_dimacs/3.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 1549
c [INITIAL INPUT] Number of clauses: 3139
c [INITIAL INPUT] Number of binary clauses: 76
c [INITIAL INPUT] Number of ternary clauses: 2325
c [INITIAL INPUT] Number of clauses larger than 3: 737
c [INITIAL INPUT] Number of literals: 10076
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 0.004035
c [BACKBONE] Number of SAT calls: 9
c [BACKBONE] Backbone size: 6
c [BACKBONE] Number of units detected by calling the solver: 3
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 3
c [DAC] #Equivalences: 3
c [DAC] #And gates: 7
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 27
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 13
c [BIPARTITION] #Model considered for preproc with models: 5
c [BIPARTITION] #Input variables from models as preproc: 0
c [BIPARTITION] Initial input set: 14
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
c [BIPARTITION] #Input variables computed: 6
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 0.006809
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 156732
c [REDUCER PROPAGATOR] Binary clauses: 76
c [REDUCER PROPAGATOR] Not binary clauses: 3062
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 9923
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 149
c [REDUCER OCC-ELIMINATION] Number of literals removed: 149
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 180
c [REDUCER VIVIFICATION] Number of clauses removed: 101
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 196
c [REDUCER OCC-ELIMINATION] Number of literals removed: 196
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 295
c [REDUCER VIVIFICATION] Number of clauses removed: 158
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 242
c [REDUCER OCC-ELIMINATION] Number of literals removed: 242
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 328
c [REDUCER VIVIFICATION] Number of clauses removed: 174
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 287
c [REDUCER OCC-ELIMINATION] Number of literals removed: 287
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 328
c [REDUCER VIVIFICATION] Number of clauses removed: 174
c [ELIMINATOR] #elim-gate = 5	#elim-resolution = 1283
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 63128
c [REDUCER PROPAGATOR] Binary clauses: 65
c [REDUCER PROPAGATOR] Not binary clauses: 884
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 2856
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 226
c [REDUCER OCC-ELIMINATION] Number of literals removed: 226
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 132
c [REDUCER VIVIFICATION] Number of clauses removed: 50
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 337
c [REDUCER OCC-ELIMINATION] Number of literals removed: 337
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 160
c [REDUCER VIVIFICATION] Number of clauses removed: 62
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 434
c [REDUCER OCC-ELIMINATION] Number of literals removed: 434
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 164
c [REDUCER VIVIFICATION] Number of clauses removed: 63
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 528
c [REDUCER OCC-ELIMINATION] Number of literals removed: 528
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 165
c [REDUCER VIVIFICATION] Number of clauses removed: 63
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 620
c [REDUCER OCC-ELIMINATION] Number of literals removed: 620
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 165
c [REDUCER VIVIFICATION] Number of clauses removed: 63
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 1549
c [PREPROCESSED INPUT] Number of clauses: 2174
c [PREPROCESSED INPUT] Number of binary clauses: 73
c [PREPROCESSED INPUT] Number of ternary clauses: 674
c [PREPROCESSED INPUT] Number of clauses larger than 3: 139
c [PREPROCESSED INPUT] Number of literals: 4012
c
c
c [PROJECTED VARIABLES] list: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 
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
c Number of recursive call: 65
c Number of split formula: 12
c Number of decision: 32
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 1
c Number of negative hit: 43
c
c
c Final time: 0.004
c
s SATISFIABLE
c s type pmc
c s log10-estimate 1.230448921378273928540169894328337030007567378425
c s exact arb int 17
