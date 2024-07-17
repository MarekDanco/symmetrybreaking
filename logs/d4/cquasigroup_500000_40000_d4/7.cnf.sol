c [SCRIPT] Command line: /home/mikolas/mc/cquasigroup/7.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/cquasigroup/7.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 192939
c [INITIAL INPUT] Number of clauses: 2059561
c [INITIAL INPUT] Number of binary clauses: 60868
c [INITIAL INPUT] Number of ternary clauses: 1908316
c [INITIAL INPUT] Number of clauses larger than 3: 90377
c [INITIAL INPUT] Number of literals: 6388267
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 20.9
c [BACKBONE] Number of SAT calls: 53
c [BACKBONE] Backbone size: 172
c [BACKBONE] Number of units detected by calling the solver: 24
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 129
c [DAC] #Equivalences: 129
c [DAC] #And gates: 34
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 343
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 206
c [BIPARTITION] #Model considered for preproc with models: 28
c [BIPARTITION] #Input variables from models as preproc: 0
c [BIPARTITION] Initial input set: 137
c [CONSTRUCTOR] Solver: Glucose
c [HEURISTIC-BIPARTITION] Constructor
c [HEURISTIC-BIPARTITION] Method run: OCC_ASC
c Run for 0 conflicts
c [1m[31mBipartition in progress[0m
c [BIPE] The bi-partition process has been stopped
c [Glucose_bipe] Stop Glucose_bipe
c [BIPARTITION] Stop by signal, number of remaining undefined variables: 89
c Run for 0 conflicts
c [1m[31mBipartition in progress[0m
c [BIPARTITION] Stop by signal, number of remaining undefined variables: 1
c [BIPARTITION] [1m[31mStatistics [0m
c [BIPARTITION] #Input variables get from complete model: 0
c [BIPARTITION] #Input variables get from Padoa model: 0
c [BIPARTITION] #Input variables get from model: 0
c [BIPARTITION] #Output variables get from symmetries: 0
c [BIPARTITION] #Input variables computed: 93
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 78.2469
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 86767128
c [REDUCER PROPAGATOR] Binary clauses: 60868
c [REDUCER PROPAGATOR] Not binary clauses: 1998693
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 6266531
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 122130
c [REDUCER OCC-ELIMINATION] Number of literals removed: 122130
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 1861427
c [REDUCER VIVIFICATION] Number of clauses removed: 919833
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 172552
c [REDUCER OCC-ELIMINATION] Number of literals removed: 172552
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2784428
c [REDUCER VIVIFICATION] Number of clauses removed: 1376125
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 207627
c [REDUCER OCC-ELIMINATION] Number of literals removed: 207627
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 3232844
c [REDUCER VIVIFICATION] Number of clauses removed: 1597450
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 234627
c [REDUCER OCC-ELIMINATION] Number of literals removed: 234627
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 3431382
c [REDUCER VIVIFICATION] Number of clauses removed: 1695261
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 257485
c [REDUCER OCC-ELIMINATION] Number of literals removed: 257485
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 3497441
c [REDUCER VIVIFICATION] Number of clauses removed: 1727473
c [ELIMINATOR] #elim-gate = 191	#elim-resolution = 170283
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 16402072
c [REDUCER PROPAGATOR] Binary clauses: 58787
c [REDUCER PROPAGATOR] Not binary clauses: 193481
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 1005901
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 58484
c [REDUCER OCC-ELIMINATION] Number of literals removed: 58484
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 61862
c [REDUCER VIVIFICATION] Number of clauses removed: 13118
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 87037
c [REDUCER OCC-ELIMINATION] Number of literals removed: 87037
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 67525
c [REDUCER VIVIFICATION] Number of clauses removed: 14029
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 112090
c [REDUCER OCC-ELIMINATION] Number of literals removed: 112090
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 68087
c [REDUCER VIVIFICATION] Number of clauses removed: 14077
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 136765
c [REDUCER OCC-ELIMINATION] Number of literals removed: 136765
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 68250
c [REDUCER VIVIFICATION] Number of clauses removed: 14090
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 161325
c [REDUCER OCC-ELIMINATION] Number of literals removed: 161325
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 68329
c [REDUCER VIVIFICATION] Number of clauses removed: 14096
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 192939
c [PREPROCESSED INPUT] Number of clauses: 408558
c [PREPROCESSED INPUT] Number of binary clauses: 59599
c [PREPROCESSED INPUT] Number of ternary clauses: 31323
c [PREPROCESSED INPUT] Number of clauses larger than 3: 147127
c [PREPROCESSED INPUT] Number of literals: 1207331
c
c
c [PROJECTED VARIABLES] list: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 
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
c countpure = 101243
c countpure = 200017
c countpure = 301337
c countpure = 401357
c countpure = 500179
c countpure = 603296
c countpure = 702277
c countpure = 800986
c countpure = 902539
c countpure = 1000786
c countpure = 1101343
c countpure = 1200187
c countpure = 1300581
c countpure = 1400453
c countpure = 1500543
c countpure = 1600359
c countpure = 1702868
c countpure = 1800493
c countpure = 1900356
c countpure = 2000367
c countpure = 2100053
c countpure = 2201134
c countpure = 2301602
c countpure = 2400893
c countpure = 2500338
c countpure = 2601464
c countpure = 2702643
c countpure = 2801048
c countpure = 2900916
c countpure = 3000272
c countpure = 3100535
c countpure = 3200204
c countpure = 3300246
c countpure = 3400233
c countpure = 3501202
c countpure = 3600246
c countpure = 3700523
c countpure = 3802301
c countpure = 3901648
c countpure = 4000921
c countpure = 4100207
c countpure = 4200707
c countpure = 4300313
c countpure = 4400858
c countpure = 4500026
c countpure = 4600687
c countpure = 4700504
c countpure = 4800208
c countpure = 4900147
c countpure = 5001161
c countpure = 5100452
c countpure = 5200741
c countpure = 5300192
c countpure = 5400466
c countpure = 5501022
c countpure = 5600293
c countpure = 5700036
c countpure = 5800605
c countpure = 5900573
c countpure = 6000738
c countpure = 6100284
c countpure = 6200158
c countpure = 6302743
c countpure = 6400036
c countpure = 6500017
c countpure = 6601517
c countpure = 6700213
c countpure = 6800703
c countpure = 6900397
c |       53.62|         308|        8369|   535751956|         304|     4915.53|        8199|           1|
c countpure = 7000382
c countpure = 7100266
c countpure = 7200268
c countpure = 7300212
c countpure = 7400292
c countpure = 7500578
c countpure = 7600676
c countpure = 7701097
c countpure = 7801676
c countpure = 7900511
c countpure = 8001132
c countpure = 8100744
c countpure = 8200086
c countpure = 8300819
c countpure = 8400207
c countpure = 8500509
c countpure = 8600823
c countpure = 8700389
c countpure = 8801006
c countpure = 8900110
c countpure = 9000199
c countpure = 9100565
c countpure = 9200181
c countpure = 9300577
c countpure = 9400495
c countpure = 9501193
c countpure = 9601538
c countpure = 9701534
c countpure = 9800208
c countpure = 9900084
c countpure = 10001244
c countpure = 10100911
c countpure = 10200547
c countpure = 10300490
c countpure = 10400062
c countpure = 10500081
c countpure = 10601675
c countpure = 10700025
c countpure = 10800707
c countpure = 10901498
c countpure = 11000090
c countpure = 11100448
c countpure = 11200523
c countpure = 11301148
c countpure = 11400638
c countpure = 11500032
c countpure = 11601088
c countpure = 11700228
c countpure = 11800007
c countpure = 11900520
c countpure = 12000085
c countpure = 12100154
c countpure = 12200647
c countpure = 12300046
c countpure = 12401305
c countpure = 12500389
c countpure = 12600535
c countpure = 12701224
c countpure = 12800355
c countpure = 12901148
c countpure = 13000228
c countpure = 13100022
c countpure = 13201062
c |       95.02|         799|       16684|   941220314|         700|     4915.53|       16391|           1|
c countpure = 13301663
c countpure = 13400231
c countpure = 13502737
c countpure = 13600469
c countpure = 13700042
c countpure = 13800058
c countpure = 13900289
c countpure = 14001298
c countpure = 14100449
c countpure = 14200379
c countpure = 14300704
c --------------------------------------------------------------------------------------------------------
c
c [1m[31mStatistics [0m
c [33mCompilation Information[0m
c Number of recursive call: 35135
c Number of split formula: 804
c Number of decision: 17567
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 915
c Number of negative hit: 17881
c
c
c Final time: 102.88
c
s SATISFIABLE
c s type pmc
c s log10-estimate 3.80488874462239141744394028628912975960818119295512
c s exact arb int 6381
