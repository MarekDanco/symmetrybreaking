c [SCRIPT] Command line: /home/mikolas/mc/loop/6.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/loop/6.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 51301
c [INITIAL INPUT] Number of clauses: 88047
c [INITIAL INPUT] Number of binary clauses: 5838
c [INITIAL INPUT] Number of ternary clauses: 78498
c [INITIAL INPUT] Number of clauses larger than 3: 3710
c [INITIAL INPUT] Number of literals: 267523
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 0.062664
c [BACKBONE] Number of SAT calls: 26
c [BACKBONE] Backbone size: 896
c [BACKBONE] Number of units detected by calling the solver: 11
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 3
c [DAC] #Equivalences: 4
c [DAC] #And gates: 30
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 216
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 160
c [BIPARTITION] #Model considered for preproc with models: 14
c [BIPARTITION] #Input variables from models as preproc: 0
c [BIPARTITION] Initial input set: 56
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
c [BIPARTITION] #Input variables computed: 18
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 0.323986
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 4266520
c [REDUCER PROPAGATOR] Binary clauses: 5838
c [REDUCER PROPAGATOR] Not binary clauses: 82208
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 255846
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 5111
c [REDUCER OCC-ELIMINATION] Number of literals removed: 5111
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 47942
c [REDUCER VIVIFICATION] Number of clauses removed: 23798
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 6281
c [REDUCER OCC-ELIMINATION] Number of literals removed: 6281
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 71899
c [REDUCER VIVIFICATION] Number of clauses removed: 35686
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 7180
c [REDUCER OCC-ELIMINATION] Number of literals removed: 7180
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 83547
c [REDUCER VIVIFICATION] Number of clauses removed: 41457
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 7927
c [REDUCER OCC-ELIMINATION] Number of literals removed: 7927
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 88962
c [REDUCER VIVIFICATION] Number of clauses removed: 44131
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 8576
c [REDUCER OCC-ELIMINATION] Number of literals removed: 8576
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 90995
c [REDUCER VIVIFICATION] Number of clauses removed: 45129
c [ELIMINATOR] #elim-gate = 128	#elim-resolution = 50129
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 1379476
c [REDUCER PROPAGATOR] Binary clauses: 3640
c [REDUCER PROPAGATOR] Not binary clauses: 9996
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 40795
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 2360
c [REDUCER OCC-ELIMINATION] Number of literals removed: 2360
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 14328
c [REDUCER VIVIFICATION] Number of clauses removed: 4762
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 3893
c [REDUCER OCC-ELIMINATION] Number of literals removed: 3893
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 16893
c [REDUCER VIVIFICATION] Number of clauses removed: 5529
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 4777
c [REDUCER OCC-ELIMINATION] Number of literals removed: 4777
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 18100
c [REDUCER VIVIFICATION] Number of clauses removed: 5920
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 5560
c [REDUCER OCC-ELIMINATION] Number of literals removed: 5560
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 19011
c [REDUCER VIVIFICATION] Number of clauses removed: 6189
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 6316
c [REDUCER OCC-ELIMINATION] Number of literals removed: 6316
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 19166
c [REDUCER VIVIFICATION] Number of clauses removed: 6240
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 51301
c [PREPROCESSED INPUT] Number of clauses: 57647
c [PREPROCESSED INPUT] Number of binary clauses: 3790
c [PREPROCESSED INPUT] Number of ternary clauses: 1263
c [PREPROCESSED INPUT] Number of clauses larger than 3: 2334
c [PREPROCESSED INPUT] Number of literals: 72452
c
c
c [PROJECTED VARIABLES] list: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 
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
c Number of recursive call: 387
c Number of split formula: 87
c Number of decision: 193
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 46
c Number of negative hit: 251
c
c
c Final time: 0.06
c
s SATISFIABLE
c s type pmc
c s log10-estimate 2.037426497940623635200513307613875286642204522828
c s exact arb int 109
