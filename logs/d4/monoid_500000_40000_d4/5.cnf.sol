c [SCRIPT] Command line: /home/mikolas/mc/monoid/5.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/monoid/5.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 17441
c [INITIAL INPUT] Number of clauses: 16387
c [INITIAL INPUT] Number of binary clauses: 860
c [INITIAL INPUT] Number of ternary clauses: 15080
c [INITIAL INPUT] Number of clauses larger than 3: 446
c [INITIAL INPUT] Number of literals: 49146
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 0.01471
c [BACKBONE] Number of SAT calls: 21
c [BACKBONE] Backbone size: 319
c [BACKBONE] Number of units detected by calling the solver: 11
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 0
c [DAC] #Equivalences: 0
c [DAC] #And gates: 16
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 125
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 72
c [BIPARTITION] #Model considered for preproc with models: 9
c [BIPARTITION] #Input variables from models as preproc: 0
c [BIPARTITION] Initial input set: 53
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
c [BIPARTITION] #Input variables computed: 26
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 0.106135
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 917156
c [REDUCER PROPAGATOR] Binary clauses: 860
c [REDUCER PROPAGATOR] Not binary clauses: 15526
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 47425
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1117
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1117
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 5574
c [REDUCER VIVIFICATION] Number of clauses removed: 2749
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1555
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1555
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 8434
c [REDUCER VIVIFICATION] Number of clauses removed: 4150
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1903
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1903
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 9749
c [REDUCER VIVIFICATION] Number of clauses removed: 4797
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 2207
c [REDUCER OCC-ELIMINATION] Number of literals removed: 2207
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 10290
c [REDUCER VIVIFICATION] Number of clauses removed: 5062
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 2491
c [REDUCER OCC-ELIMINATION] Number of literals removed: 2491
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 10394
c [REDUCER VIVIFICATION] Number of clauses removed: 5112
c [ELIMINATOR] #elim-gate = 63	#elim-resolution = 16913
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 439052
c [REDUCER PROPAGATOR] Binary clauses: 1026
c [REDUCER PROPAGATOR] Not binary clauses: 3152
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 11597
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 551
c [REDUCER OCC-ELIMINATION] Number of literals removed: 551
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2500
c [REDUCER VIVIFICATION] Number of clauses removed: 694
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 842
c [REDUCER OCC-ELIMINATION] Number of literals removed: 842
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2606
c [REDUCER VIVIFICATION] Number of clauses removed: 718
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1053
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1053
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2608
c [REDUCER VIVIFICATION] Number of clauses removed: 718
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1262
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1262
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2608
c [REDUCER VIVIFICATION] Number of clauses removed: 718
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 17441
c [PREPROCESSED INPUT] Number of clauses: 20436
c [PREPROCESSED INPUT] Number of binary clauses: 1033
c [PREPROCESSED INPUT] Number of ternary clauses: 1889
c [PREPROCESSED INPUT] Number of clauses larger than 3: 538
c [PREPROCESSED INPUT] Number of literals: 27238
c
c
c [PROJECTED VARIABLES] list: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 
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
c Number of recursive call: 1017
c Number of split formula: 20
c Number of decision: 508
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 26
c Number of negative hit: 519
c
c
c Final time: 0.048
c
s SATISFIABLE
c s type pmc
c s log10-estimate 2.3579348470004537892588391684610306806876379645094
c s exact arb int 228
