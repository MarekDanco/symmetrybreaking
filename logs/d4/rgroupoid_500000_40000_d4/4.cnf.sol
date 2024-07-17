c [SCRIPT] Command line: /home/mikolas/mc/rgroupoid/4.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/rgroupoid/4.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 5243
c [INITIAL INPUT] Number of clauses: 12924
c [INITIAL INPUT] Number of binary clauses: 1122
c [INITIAL INPUT] Number of ternary clauses: 11206
c [INITIAL INPUT] Number of clauses larger than 3: 596
c [INITIAL INPUT] Number of literals: 38536
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 0.007519
c [BACKBONE] Number of SAT calls: 16
c [BACKBONE] Backbone size: 6
c [BACKBONE] Number of units detected by calling the solver: 2
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 1
c [DAC] #Equivalences: 1
c [DAC] #And gates: 15
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 64
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 19
c [BIPARTITION] #Model considered for preproc with models: 13
c [BIPARTITION] #Input variables from models as preproc: 0
c [BIPARTITION] Initial input set: 45
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
c [BIPARTITION] #Input variables computed: 35
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 0.058618
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 575592
c [REDUCER PROPAGATOR] Binary clauses: 1122
c [REDUCER PROPAGATOR] Not binary clauses: 11802
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 36292
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 609
c [REDUCER OCC-ELIMINATION] Number of literals removed: 609
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 9814
c [REDUCER VIVIFICATION] Number of clauses removed: 4877
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 973
c [REDUCER OCC-ELIMINATION] Number of literals removed: 973
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 14603
c [REDUCER VIVIFICATION] Number of clauses removed: 7273
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1308
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1308
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 16749
c [REDUCER VIVIFICATION] Number of clauses removed: 8347
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1633
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1633
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 17437
c [REDUCER VIVIFICATION] Number of clauses removed: 8692
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1951
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1951
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 17471
c [REDUCER VIVIFICATION] Number of clauses removed: 8709
c [ELIMINATOR] #elim-gate = 4	#elim-resolution = 4649
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 219436
c [REDUCER PROPAGATOR] Binary clauses: 1003
c [REDUCER PROPAGATOR] Not binary clauses: 2468
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 9803
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 629
c [REDUCER OCC-ELIMINATION] Number of literals removed: 629
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 328
c [REDUCER VIVIFICATION] Number of clauses removed: 40
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 988
c [REDUCER OCC-ELIMINATION] Number of literals removed: 988
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 348
c [REDUCER VIVIFICATION] Number of clauses removed: 44
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1331
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1331
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 352
c [REDUCER VIVIFICATION] Number of clauses removed: 44
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1670
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1670
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 353
c [REDUCER VIVIFICATION] Number of clauses removed: 44
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 2008
c [REDUCER OCC-ELIMINATION] Number of literals removed: 2008
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 353
c [REDUCER VIVIFICATION] Number of clauses removed: 44
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 5243
c [PREPROCESSED INPUT] Number of clauses: 8080
c [PREPROCESSED INPUT] Number of binary clauses: 1020
c [PREPROCESSED INPUT] Number of ternary clauses: 918
c [PREPROCESSED INPUT] Number of clauses larger than 3: 1489
c [PREPROCESSED INPUT] Number of literals: 16030
c
c
c [PROJECTED VARIABLES] list: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 
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
c Number of recursive call: 4477
c Number of split formula: 225
c Number of decision: 2238
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 215
c Number of negative hit: 2303
c
c
c Final time: 0.179989
c
s SATISFIABLE
c s type pmc
c s log10-estimate 3.2704459080179625578303555196503384411930237427092
c s exact arb int 1864
