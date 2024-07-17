c [SCRIPT] Command line: /home/mikolas/mc/semigroup_dimacs/7.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/semigroup_dimacs/7.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 186142
c [INITIAL INPUT] Number of clauses: 1766570
c [INITIAL INPUT] Number of binary clauses: 47308
c [INITIAL INPUT] Number of ternary clauses: 1648405
c [INITIAL INPUT] Number of clauses larger than 3: 70857
c [INITIAL INPUT] Number of literals: 5462556
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 4.92657
c [BACKBONE] Number of SAT calls: 47
c [BACKBONE] Backbone size: 1059
c [BACKBONE] Number of units detected by calling the solver: 17
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 2
c [DAC] #Equivalences: 2
c [DAC] #And gates: 46
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 343
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 76
c [BIPARTITION] #Model considered for preproc with models: 29
c [BIPARTITION] #Input variables from models as preproc: 0
c [BIPARTITION] Initial input set: 267
c [CONSTRUCTOR] Solver: Glucose
c [HEURISTIC-BIPARTITION] Constructor
c [HEURISTIC-BIPARTITION] Method run: OCC_ASC
c Run for 0 conflicts
c [1m[31mBipartition in progress[0m
c [BIPE] The bi-partition process has been stopped
c [Glucose_bipe] Stop Glucose_bipe
c [BIPARTITION] Stop by signal, number of remaining undefined variables: 97
c Run for 0 conflicts
c [1m[31mBipartition in progress[0m
c [BIPARTITION] Stop by signal, number of remaining undefined variables: 1
c [BIPARTITION] [1m[31mStatistics [0m
c [BIPARTITION] #Input variables get from complete model: 0
c [BIPARTITION] #Input variables get from Padoa model: 0
c [BIPARTITION] #Input variables get from model: 0
c [BIPARTITION] #Output variables get from symmetries: 0
c [BIPARTITION] #Input variables computed: 194
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 94.4285
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 74649080
c [REDUCER PROPAGATOR] Binary clauses: 47308
c [REDUCER PROPAGATOR] Not binary clauses: 1719262
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 5367940
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 64349
c [REDUCER OCC-ELIMINATION] Number of literals removed: 64349
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 1542695
c [REDUCER VIVIFICATION] Number of clauses removed: 770682
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 90697
c [REDUCER OCC-ELIMINATION] Number of literals removed: 90697
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2305488
c [REDUCER VIVIFICATION] Number of clauses removed: 1151383
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 113543
c [REDUCER OCC-ELIMINATION] Number of literals removed: 113543
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2675259
c [REDUCER VIVIFICATION] Number of clauses removed: 1335920
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 134919
c [REDUCER OCC-ELIMINATION] Number of literals removed: 134919
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2837261
c [REDUCER VIVIFICATION] Number of clauses removed: 1416779
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 155701
c [REDUCER OCC-ELIMINATION] Number of literals removed: 155701
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2889537
c [REDUCER VIVIFICATION] Number of clauses removed: 1442844
c [ELIMINATOR] #elim-gate = 136	#elim-resolution = 164875
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 17551432
c [REDUCER PROPAGATOR] Binary clauses: 33809
c [REDUCER PROPAGATOR] Not binary clauses: 213640
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 1120676
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 42364
c [REDUCER OCC-ELIMINATION] Number of literals removed: 42364
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 114328
c [REDUCER VIVIFICATION] Number of clauses removed: 20047
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 67691
c [REDUCER OCC-ELIMINATION] Number of literals removed: 67691
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 118462
c [REDUCER VIVIFICATION] Number of clauses removed: 20695
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 90499
c [REDUCER OCC-ELIMINATION] Number of literals removed: 90499
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 118629
c [REDUCER VIVIFICATION] Number of clauses removed: 20707
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 113161
c [REDUCER OCC-ELIMINATION] Number of literals removed: 113161
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 118684
c [REDUCER VIVIFICATION] Number of clauses removed: 20712
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 135780
c [REDUCER OCC-ELIMINATION] Number of literals removed: 135780
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 118712
c [REDUCER VIVIFICATION] Number of clauses removed: 20712
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 186142
c [PREPROCESSED INPUT] Number of clauses: 391748
c [PREPROCESSED INPUT] Number of binary clauses: 34146
c [PREPROCESSED INPUT] Number of ternary clauses: 49918
c [PREPROCESSED INPUT] Number of clauses larger than 3: 142673
c [PREPROCESSED INPUT] Number of literals: 1211796
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
c countpure = 101512
c countpure = 201349
c countpure = 301341
c countpure = 401103
c countpure = 500736
c countpure = 601328
c countpure = 700130
c countpure = 800169
c countpure = 900254
c countpure = 1000118
c countpure = 1100474
c countpure = 1200650
c countpure = 1300121
c countpure = 1400312
c countpure = 1500350
c countpure = 1600047
c |       17.65|        6918|       10125|   315635699|        8799|     4827.38|        8250|           1|
c countpure = 1700335
c countpure = 1800037
c countpure = 1900387
c countpure = 2000032
c |       19.56|       12542|       18483|   342019702|       14005|     4827.38|       16450|           1|
c countpure = 2100066
c countpure = 2200056
c countpure = 2300393
c countpure = 2400313
c countpure = 2500156
c |       21.20|       18704|       26794|   359951857|       19799|     4827.38|       24635|           1|
c countpure = 2600102
c countpure = 2700024
c countpure = 2800030
c countpure = 2900021
c countpure = 3000064
c countpure = 3100061
c |       22.89|       24514|       35061|   376259418|       25668|     4827.38|       32827|           1|
c countpure = 3200045
c countpure = 3300010
c countpure = 3400066
c countpure = 3500149
c countpure = 3600098
c |       25.00|       31699|       43320|   405532708|       32103|     4827.38|       41026|           1|
c countpure = 3700121
c countpure = 3800047
c countpure = 3900119
c countpure = 4000228
c |       26.23|       37516|       51567|   413601090|       37468|     4827.38|       49216|           1|
c countpure = 4100023
c countpure = 4200052
c countpure = 4300179
c |       27.42|       44460|       59773|   420231731|       42912|     4827.38|       57407|           1|
c countpure = 4400010
c countpure = 4500034
c countpure = 4600147
c countpure = 4700079
c |       28.71|       51541|       67985|   428430755|       48400|     4827.38|       65601|           1|
c countpure = 4800026
c countpure = 4900007
c countpure = 5000017
c |       29.87|       59022|       76203|   435533878|       54181|     4827.38|       73792|           1|
c countpure = 5100030
c countpure = 5200006
c countpure = 5300031
c countpure = 5400149
c countpure = 5500013
c |       31.93|       67271|       84412|   458419277|       60865|     4827.38|       81965|           1|
c countpure = 5600016
c countpure = 5700007
c countpure = 5800054
c countpure = 5900067
c countpure = 6000003
c countpure = 6100795
c countpure = 6202710
c countpure = 6300105
c countpure = 6400050
c |       39.17|       76437|       92756|   580911182|       68946|     4827.38|       90164|           1|
c countpure = 6500104
c countpure = 6600123
c countpure = 6700001
c |       40.42|       85560|      100955|   590611907|       76755|     4827.38|       98350|           1|
c countpure = 6800824
c countpure = 6900234
c countpure = 7000003
c countpure = 7100222
c countpure = 7201653
c countpure = 7300328
c countpure = 7401525
c countpure = 7501067
c countpure = 7600028
c countpure = 7700034
c countpure = 7800029
c countpure = 7900679
c countpure = 8001643
c countpure = 8100012
c |       54.49|       96073|      109440|   815744995|       86931|     4827.38|      106529|           1|
c countpure = 8200048
c countpure = 8300002
c countpure = 8400148
c countpure = 8500632
c countpure = 8600922
c countpure = 8700458
c countpure = 8800007
c countpure = 8900012
c countpure = 9000557
c countpure = 9101221
c countpure = 9200294
c countpure = 9300062
c |       64.75|      105484|      117836|   985059501|       95682|     4827.38|      114748|           1|
c countpure = 9400104
c countpure = 9500011
c countpure = 9600002
c |       66.06|      113593|      126047|   996246286|      102390|     4827.38|      122954|           1|
c countpure = 9700008
c countpure = 9800354
c countpure = 9900002
c |       67.25|      120224|      134240|  1002760805|      107499|     4827.38|      131144|           1|
c countpure = 10000013
c countpure = 10100017
c countpure = 10200008
c |       68.52|      126192|      142439|  1010405288|      112172|     4827.38|      139334|           1|
c countpure = 10300004
c countpure = 10400002
c countpure = 10500019
c countpure = 10600124
c countpure = 10700051
c |       69.99|      132702|      150654|  1023089427|      117575|     4827.38|      147532|           1|
c countpure = 10800016
c countpure = 10900050
c countpure = 11000078
c countpure = 11100024
c |       71.23|      138650|      158872|  1030685233|      122727|     4827.38|      155723|           1|
c countpure = 11200033
c countpure = 11300008
c countpure = 11400035
c countpure = 11500059
c |       72.46|      145602|      167075|  1037821650|      128071|     4827.38|      163914|           1|
c countpure = 11600024
c countpure = 11700001
c countpure = 11800056
c countpure = 11900010
c |       73.65|      152349|      175285|  1044509363|      133463|     4827.38|      172108|           1|
c countpure = 12000030
c countpure = 12100066
c countpure = 12200005
c |       74.74|      160294|      183485|  1049965667|      139503|     4827.38|      180298|           1|
c countpure = 12300013
c countpure = 12400068
c countpure = 12500180
c |       75.92|      168040|      191701|  1056697385|      145742|     4827.38|      188490|           1|
c countpure = 12600017
c countpure = 12700062
c countpure = 12800191
c countpure = 12900004
c |       77.13|      175288|      199915|  1063704954|      151107|     4827.38|      196681|           1|
c countpure = 13000018
c countpure = 13100070
c countpure = 13200040
c countpure = 13300102
c |       78.48|      183370|      208149|  1072419654|      157990|     4827.38|      204871|           1|
c countpure = 13400074
c countpure = 13500010
c countpure = 13600163
c |       79.67|      190747|      216343|  1078420824|      163976|     4827.38|      213059|           1|
c countpure = 13700010
c countpure = 13800134
c countpure = 13900003
c countpure = 14000015
c countpure = 14100648
c countpure = 14200012
c |       82.25|      197876|      224535|  1110071664|      169918|     4827.38|      221237|           1|
c countpure = 14300030
c countpure = 14400126
c |       83.35|      206382|      232726|  1116007762|      176546|     4827.38|      229425|           1|
c countpure = 14500221
c countpure = 14600187
c countpure = 14703410
c countpure = 14800439
c countpure = 14900015
c |       85.99|      213698|      240922|  1145860961|      182111|     4827.38|      237614|           1|
c countpure = 15000006
c countpure = 15100001
c |       87.09|      221976|      249122|  1153236288|      188375|     4827.38|      245811|           1|
c countpure = 15200071
c countpure = 15300014
c |       88.40|      231625|      257298|  1161026421|      195676|     4827.38|      253985|           1|
c countpure = 15400259
c countpure = 15500296
c countpure = 15600129
c countpure = 15700425
c countpure = 15800834
c countpure = 15900180
c countpure = 16000376
c countpure = 16100439
c countpure = 16200437
c countpure = 16301117
c countpure = 16400098
c countpure = 16500568
c countpure = 16600091
c countpure = 16700033
c countpure = 16800257
c countpure = 16900154
c countpure = 17000170
c countpure = 17103582
c countpure = 17200200
c countpure = 17300208
c countpure = 17400068
c countpure = 17500874
c countpure = 17600512
c |      110.60|      241369|      265706|  1519168077|      205422|     4827.38|      262183|           1|
c countpure = 17700035
c countpure = 17800270
c countpure = 17900453
c countpure = 18000388
c countpure = 18100151
c countpure = 18200002
c countpure = 18300027
c countpure = 18400483
c countpure = 18501841
c countpure = 18600005
c countpure = 18700405
c countpure = 18800345
c countpure = 18900279
c |      117.28|      250212|      274025|  1614687063|      213281|     4827.38|      270370|           1|
c countpure = 19000271
c countpure = 19100327
c countpure = 19200294
c countpure = 19300290
c countpure = 19400050
c countpure = 19500146
c countpure = 19600589
c countpure = 19700741
c countpure = 19800320
c countpure = 19900313
c countpure = 20000094
c countpure = 20100871
c countpure = 20200035
c countpure = 20300086
c |      124.79|      259984|      282329|  1725908251|      222589|     4827.38|      278555|           1|
c countpure = 20400105
c countpure = 20500115
c countpure = 20600118
c countpure = 20700056
c countpure = 20800151
c countpure = 20900077
c countpure = 21000341
c countpure = 21101392
c |      128.64|      266237|      290552|  1782256372|      228376|     4827.38|      286755|           1|
c countpure = 21200989
c countpure = 21300082
c countpure = 21400659
c countpure = 21500139
c countpure = 21600546
c countpure = 21700201
c countpure = 21800126
c countpure = 21900503
c countpure = 22000002
c countpure = 22100027
c countpure = 22200019
c |      134.28|      274521|      298784|  1866806165|      236058|     4827.38|      294944|           1|
c countpure = 22300694
c countpure = 22400503
c countpure = 22500790
c countpure = 22600219
c countpure = 22700050
c countpure = 22800533
c countpure = 22900076
c countpure = 23000506
c countpure = 23100081
c countpure = 23200708
c countpure = 23300227
c countpure = 23401207
c countpure = 23500731
c countpure = 23600324
c countpure = 23700107
c countpure = 23800087
c countpure = 23900600
c countpure = 24000166
c |      147.36|      283261|      307094|  2066450940|      244797|     4827.38|      303147|           1|
c countpure = 24100123
c countpure = 24200074
c countpure = 24300074
c countpure = 24400035
c |      149.07|      290665|      315303|  2084360193|      250004|     4827.38|      311352|           1|
c countpure = 24500029
c countpure = 24600010
c |      150.24|      299722|      323489|  2089905921|      257035|     4827.38|      319538|           1|
c countpure = 24700014
c countpure = 24800050
c |      151.29|      307725|      331683|  2095534975|      262622|     4827.38|      327731|           1|
c countpure = 24900056
c countpure = 25000037
c countpure = 25100120
c countpure = 25200028
c |      152.42|      316404|      339876|  2101932442|      269625|     4827.38|      335921|           1|
c countpure = 25300001
c countpure = 25400041
c countpure = 25500001
c |      153.56|      324581|      348069|  2108401360|      276329|     4827.38|      344112|           1|
c countpure = 25600020
c countpure = 25700055
c countpure = 25800037
c |      154.70|      333911|      356265|  2114679188|      283847|     4827.38|      352308|           1|
c countpure = 25900020
c countpure = 26000390
c |      155.77|      342396|      364459|  2119734091|      290265|     4827.38|      360498|           1|
c countpure = 26100078
c countpure = 26200038
c countpure = 26300051
c countpure = 26400361
c countpure = 26500941
c countpure = 26600043
c countpure = 26700172
c countpure = 26800106
c countpure = 26900123
c countpure = 27000900
c countpure = 27100220
c |      162.15|      349736|      372664|  2208204657|      296303|     4827.38|      368671|           1|
c countpure = 27200023
c countpure = 27300583
c countpure = 27401040
c countpure = 27500022
c countpure = 27600328
c countpure = 27700926
c countpure = 27800308
c countpure = 27900232
c countpure = 28000038
c countpure = 28100044
c countpure = 28200257
c countpure = 28300719
c countpure = 28401639
c countpure = 28500197
c countpure = 28601482
c countpure = 28700108
c countpure = 28800017
c countpure = 28900894
c countpure = 29002001
c countpure = 29101597
c countpure = 29200591
c countpure = 29300591
c countpure = 29400045
c countpure = 29500418
c countpure = 29600139
c countpure = 29700488
c countpure = 29800051
c countpure = 29900199
c |      193.28|      365769|      381341|  2697916738|      313462|     4827.38|      376873|           1|
c countpure = 30000229
c countpure = 30100022
c countpure = 30201862
c countpure = 30302740
c countpure = 30400082
c countpure = 30500034
c countpure = 30600261
c countpure = 30700166
c countpure = 30800012
c countpure = 30900259
c countpure = 31000026
c countpure = 31100414
c countpure = 31201417
c countpure = 31300015
c |      200.45|      377637|      389592|  2789709380|      325076|     4827.38|      385057|           1|
c countpure = 31400986
c countpure = 31500005
c countpure = 31600589
c countpure = 31700170
c countpure = 31800015
c countpure = 31900313
c countpure = 32001594
c countpure = 32100088
c countpure = 32200046
c countpure = 32300200
c countpure = 32401100
c countpure = 32500927
c countpure = 32600004
c countpure = 32700137
c countpure = 32800028
c countpure = 32902536
c countpure = 33001130
c |      210.24|      390952|      397866|  2922614244|      338781|     4827.38|      393250|           1|
c countpure = 33101022
c countpure = 33200038
c countpure = 33300383
c countpure = 33400001
c countpure = 33500531
c countpure = 33600590
c countpure = 33700301
c countpure = 33800012
c countpure = 33900238
c countpure = 34001277
c countpure = 34100586
c countpure = 34200063
c countpure = 34300129
c countpure = 34400669
c countpure = 34501299
c countpure = 34600643
c countpure = 34700128
c countpure = 34800517
c countpure = 34900604
c countpure = 35000388
c countpure = 35100927
c |      224.23|      407000|      406169|  3118916565|      355070|     4827.38|      401434|           1|
c countpure = 35200920
c countpure = 35300109
c countpure = 35400286
c countpure = 35500385
c countpure = 35600374
c countpure = 35700337
c countpure = 35801127
c countpure = 35900277
c countpure = 36000279
c countpure = 36100199
c countpure = 36200484
c countpure = 36300462
c countpure = 36402181
c countpure = 36500252
c countpure = 36600038
c countpure = 36700269
c countpure = 36800227
c countpure = 36901408
c countpure = 37001553
c countpure = 37100635
c countpure = 37200203
c countpure = 37301263
c countpure = 37402581
c countpure = 37500027
c countpure = 37600005
c countpure = 37700729
c countpure = 37800881
c countpure = 37901330
c countpure = 38001495
c countpure = 38100257
c |      254.46|      422619|      414829|  3589936956|      371478|     4827.38|      409625|           1|
c countpure = 38200299
c countpure = 38300987
c countpure = 38400775
c countpure = 38500640
c countpure = 38600193
c countpure = 38700268
c countpure = 38800082
c countpure = 38900307
c countpure = 39000033
c countpure = 39100038
c countpure = 39200157
c countpure = 39300708
c countpure = 39401763
c countpure = 39500412
c countpure = 39600004
c |      265.13|      433633|      423062|  3747445338|      381885|     4827.38|      417813|           1|
c countpure = 39700269
c countpure = 39800311
c countpure = 39900118
c countpure = 40000003
c countpure = 40100025
c countpure = 40200237
c countpure = 40300227
c countpure = 40400087
c countpure = 40500061
c countpure = 40600289
c countpure = 40700270
c countpure = 40800043
c countpure = 40900002
c countpure = 41000102
c countpure = 41100024
c |      273.41|      442315|      431301|  3864703497|      389780|     4827.38|      426014|           1|
c countpure = 41200043
c countpure = 41300133
c countpure = 41400858
c countpure = 41500122
c countpure = 41600009
c countpure = 41700783
c countpure = 41800373
c countpure = 41900002
c countpure = 42000198
c countpure = 42100007
c |      278.34|      455289|      439531|  3930717113|      402338|     4827.38|      434207|           1|
c countpure = 42200003
c countpure = 42300009
c countpure = 42400417
c countpure = 42501147
c countpure = 42600727
c countpure = 42700511
c countpure = 42800029
c countpure = 42900390
c countpure = 43000012
c |      282.57|      468317|      447763|  3983184059|      414524|     4827.38|      442400|           1|
c countpure = 43100004
c countpure = 43200596
c countpure = 43300055
c countpure = 43400841
c countpure = 43500007
c countpure = 43600147
c countpure = 43700756
c countpure = 43800400
c countpure = 43900057
c countpure = 44001000
c countpure = 44100010
c countpure = 44200618
c |      287.45|      478669|      455995|  4044890154|      423837|     4827.38|      450596|           1|
c countpure = 44300422
c countpure = 44400006
c countpure = 44500067
c countpure = 44600546
c countpure = 44700195
c countpure = 44801951
c countpure = 44900691
c countpure = 45000424
c countpure = 45100013
c countpure = 45200511
c countpure = 45300466
c countpure = 45400767
c countpure = 45501107
c countpure = 45600892
c countpure = 45700884
c countpure = 45800491
c countpure = 45901023
c countpure = 46000763
c |      299.83|      490255|      464215|  4220310450|      434540|     4827.38|      458773|           1|
c countpure = 46100098
c countpure = 46200098
c Allocate a new page for the cache 62870
c countpure = 46300187
c countpure = 46400010
c countpure = 46500052
c countpure = 46600447
c countpure = 46700109
c countpure = 46800033
c countpure = 46900856
c countpure = 47000125
c countpure = 47100868
c countpure = 47200164
c countpure = 47301338
c countpure = 47400110
c countpure = 47501337
c countpure = 47600201
c countpure = 47700011
c countpure = 47800004
c |      313.32|      498444|      472452|  4428135740|      442149|     5339.39|      466975|           1|
c countpure = 47900300
c countpure = 48000005
c countpure = 48100117
c countpure = 48200775
c countpure = 48301010
c countpure = 48400340
c countpure = 48501215
c countpure = 48600662
c countpure = 48700089
c countpure = 48800023
c countpure = 48900543
c countpure = 49000274
c countpure = 49100073
c countpure = 49200124
c countpure = 49301033
c countpure = 49400024
c countpure = 49500232
c countpure = 49600322
c countpure = 49700438
c countpure = 49800001
c countpure = 49901000
c countpure = 50000390
c |      324.93|      507804|      480664|  4595810471|      450713|     5339.39|      475157|           1|
c countpure = 50100213
c countpure = 50200180
c countpure = 50300074
c countpure = 50400133
c countpure = 50501032
c countpure = 50602711
c countpure = 50700090
c countpure = 50801386
c countpure = 50900011
c countpure = 51000068
c countpure = 51100384
c countpure = 51200597
c countpure = 51300505
c countpure = 51400324
c Allocate a new page for the cache 44169
c countpure = 51500303
c countpure = 51600184
c countpure = 51700622
c countpure = 51800741
c countpure = 51900060
c countpure = 52000221
c countpure = 52100096
c countpure = 52200042
c countpure = 52301007
c countpure = 52400606
c countpure = 52500223
c countpure = 52600748
c countpure = 52700184
c countpure = 52800596
c countpure = 52900084
c countpure = 53000141
c countpure = 53102893
c countpure = 53201239
c countpure = 53301906
c countpure = 53400882
c |      361.01|      521265|      488978|  5161655109|      464475|     5851.39|      483351|           1|
c countpure = 53500614
c countpure = 53600697
c countpure = 53700815
c countpure = 53800107
c countpure = 53900001
c countpure = 54001661
c countpure = 54100004
c countpure = 54201089
c countpure = 54300231
c countpure = 54400197
c countpure = 54500025
c countpure = 54600240
c countpure = 54700401
c countpure = 54801082
c countpure = 54900080
c Allocate a new page for the cache 379756
c countpure = 55001735
c countpure = 55100455
c countpure = 55200237
c countpure = 55300528
c countpure = 55400399
c countpure = 55500725
c countpure = 55600406
c countpure = 55700507
c countpure = 55800028
c countpure = 55900808
c countpure = 56000867
c countpure = 56100013
c countpure = 56200663
c countpure = 56300745
c countpure = 56400517
c |      390.38|      533500|      497403|  5600510000|      477229|     6363.39|      491536|           1|
c countpure = 56500296
c countpure = 56600515
c countpure = 56700363
c countpure = 56800591
c countpure = 56900402
c countpure = 57002229
c countpure = 57100288
c countpure = 57200152
c countpure = 57300893
c countpure = 57400250
c countpure = 57500134
c countpure = 57600012
c countpure = 57700196
c countpure = 57800781
c countpure = 57901333
c Allocate a new page for the cache 235650
c countpure = 58000516
c countpure = 58100237
c countpure = 58201428
c countpure = 58300302
c countpure = 58402188
c countpure = 58500087
c countpure = 58600329
c countpure = 58700270
c countpure = 58800149
c countpure = 58900299
c countpure = 59000530
c countpure = 59100898
c countpure = 59201629
c countpure = 59301702
c countpure = 59400301
c countpure = 59500023
c countpure = 59600861
c countpure = 59701643
c countpure = 59800942
c countpure = 59901456
c |      434.96|      550150|      505821|  6310819065|      494674|     6875.40|      499732|           1|
c countpure = 60000039
c countpure = 60100820
c countpure = 60202176
c countpure = 60300118
c Allocate a new page for the cache 241777
c countpure = 60401048
c countpure = 60501000
c countpure = 60600970
c countpure = 60700599
c countpure = 60800158
c countpure = 60901602
c countpure = 61000293
c countpure = 61100086
c countpure = 61200034
c countpure = 61301976
c countpure = 61400216
c countpure = 61501177
c countpure = 61600009
c countpure = 61700162
c countpure = 61800145
c countpure = 61900235
c countpure = 62000367
c |      454.54|      568331|      514216|  6604969547|      513509|     7387.40|      507926|           1|
c countpure = 62100257
c countpure = 62201081
c countpure = 62300016
c countpure = 62400033
c countpure = 62500129
c countpure = 62600421
c countpure = 62700857
c countpure = 62800921
c countpure = 62900007
c countpure = 63000085
c countpure = 63100327
c countpure = 63200569
c countpure = 63300069
c countpure = 63400085
c countpure = 63500230
c countpure = 63600322
c countpure = 63701020
c countpure = 63800171
c countpure = 63900360
c Allocate a new page for the cache 98449
c countpure = 64001577
c countpure = 64101849
c countpure = 64200947
c countpure = 64300464
c countpure = 64400508
c countpure = 64500010
c countpure = 64600708
c countpure = 64700802
c countpure = 64800685
c countpure = 64900380
c countpure = 65001163
c countpure = 65100300
c countpure = 65201394
c |      498.78|      585098|      522659|  7270511892|      531014|     7899.41|      516122|           1|
c countpure = 65300333
c countpure = 65400288
c countpure = 65500481
c countpure = 65600061
c countpure = 65700267
c countpure = 65800031
c countpure = 65900073
c countpure = 66000001
c countpure = 66100108
c countpure = 66200040
c countpure = 66300141
c countpure = 66400010
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |      503.92|      601680|      530885|  7328079728|      547907|     7899.41|      524313|           1|
c countpure = 66500140
c countpure = 66600053
c countpure = 66700010
c countpure = 66800021
c countpure = 66900286
c countpure = 67001203
c countpure = 67100016
c countpure = 67200023
c countpure = 67300204
c countpure = 67400120
c countpure = 67500391
c countpure = 67600002
c countpure = 67700044
c countpure = 67800336
c countpure = 67900317
c |      511.54|      615538|      539102|  7419857333|      561640|     7899.41|      532498|           1|
c countpure = 68000375
c countpure = 68100005
c countpure = 68200289
c countpure = 68300271
c countpure = 68401115
c countpure = 68500012
c countpure = 68601374
c Allocate a new page for the cache 343719
c countpure = 68701230
c countpure = 68800362
c countpure = 68901239
c countpure = 69000162
c countpure = 69100090
c countpure = 69200408
c countpure = 69301121
c countpure = 69401056
c countpure = 69501001
c countpure = 69600009
c countpure = 69700146
c countpure = 69800832
c countpure = 69900783
c countpure = 70000719
c countpure = 70100055
c countpure = 70200067
c countpure = 70300048
c |      538.35|      631100|      547391|  7832994451|      577583|     8411.41|      540711|           1|
c countpure = 70400470
c countpure = 70500091
c countpure = 70600114
c countpure = 70701178
c countpure = 70800855
c countpure = 70900756
c countpure = 71000006
c countpure = 71100848
c countpure = 71200153
c countpure = 71300115
c countpure = 71400141
c |      543.85|      643707|      555661|  7897899593|      590206|     8411.41|      548912|           1|
c countpure = 71500043
c countpure = 71600223
c countpure = 71700022
c countpure = 71800120
c countpure = 71900825
c countpure = 72000759
c countpure = 72100613
c countpure = 72200131
c countpure = 72300201
c countpure = 72400003
c countpure = 72500268
c countpure = 72600042
c countpure = 72700643
c countpure = 72800002
c countpure = 72900475
c countpure = 73000523
c countpure = 73100025
c countpure = 73200815
c |      553.41|      657317|      563916|  8020801525|      603764|     8411.41|      557079|           1|
c countpure = 73300014
c countpure = 73401404
c Allocate a new page for the cache 274857
c countpure = 73500058
c countpure = 73600155
c countpure = 73700248
c countpure = 73800540
c countpure = 73901010
c countpure = 74000033
c countpure = 74100150
c countpure = 74201757
c countpure = 74300199
c countpure = 74400059
c countpure = 74500088
c countpure = 74600207
c countpure = 74700515
c countpure = 74800276
c countpure = 74900029
c countpure = 75001280
c countpure = 75100182
c countpure = 75200035
c countpure = 75300886
c countpure = 75401214
c countpure = 75500084
c countpure = 75600096
c countpure = 75700251
c countpure = 75800018
c |      577.30|      686163|      572744|  8424548298|      635094|     8923.41|      565273|           1|
c countpure = 75900221
c countpure = 76001090
c countpure = 76100058
c countpure = 76200739
c countpure = 76300699
c countpure = 76400592
c countpure = 76501241
c countpure = 76600220
c countpure = 76700056
c countpure = 76801233
c countpure = 76900723
c countpure = 77000785
c countpure = 77100308
c Allocate a new page for the cache 164504
c countpure = 77200849
c countpure = 77301978
c countpure = 77400379
c countpure = 77501186
c countpure = 77600058
c countpure = 77700070
c countpure = 77800228
c countpure = 77900564
c countpure = 78001200
c countpure = 78100312
c countpure = 78201137
c countpure = 78301780
c countpure = 78400682
c countpure = 78500031
c countpure = 78600687
c |      604.39|      706723|      581088|  8864751157|      656310|     9435.42|      573462|           1|
c countpure = 78700287
c countpure = 78800656
c countpure = 78900165
c countpure = 79000089
c countpure = 79100774
c countpure = 79201359
c countpure = 79300083
c countpure = 79400127
c countpure = 79500144
c countpure = 79600008
c countpure = 79701508
c countpure = 79800934
c countpure = 79900710
c countpure = 80002090
c countpure = 80100601
c countpure = 80200744
c Allocate a new page for the cache 219284
c countpure = 80300824
c countpure = 80400193
c countpure = 80500837
c countpure = 80600271
c countpure = 80701831
c countpure = 80800409
c countpure = 80901039
c countpure = 81000588
c countpure = 81100016
c countpure = 81200066
c countpure = 81300761
c |      629.36|      728969|      589504|  9252706136|      679657|     9947.42|      581649|           1|
c countpure = 81400187
c countpure = 81500333
c countpure = 81601011
c countpure = 81700512
c countpure = 81801298
c countpure = 81900023
c countpure = 82000002
c countpure = 82100456
c countpure = 82200413
c countpure = 82300121
c countpure = 82401250
c countpure = 82500290
c countpure = 82600710
c countpure = 82700009
c countpure = 82800423
c |      641.36|      739516|      597734|  9424129876|      689763|     9947.42|      589847|           1|
c countpure = 82900263
c countpure = 83000122
c countpure = 83100158
c countpure = 83200094
c countpure = 83300457
c countpure = 83400660
c countpure = 83500185
c countpure = 83600443
c countpure = 83700251
c countpure = 83801324
c countpure = 83901626
c countpure = 84000245
c countpure = 84100466
c Allocate a new page for the cache 276607
c countpure = 84200842
c countpure = 84300315
c countpure = 84400197
c countpure = 84500075
c countpure = 84601010
c countpure = 84700083
c countpure = 84800771
c countpure = 84900014
c countpure = 85000244
c countpure = 85100844
c countpure = 85200028
c countpure = 85300003
c countpure = 85401112
c countpure = 85500142
c |      670.67|      760203|      606092|  9912318953|      711457|    10459.43|      598042|           1|
c countpure = 85600968
c countpure = 85700072
c countpure = 85800390
c countpure = 85900131
c countpure = 86000001
c countpure = 86100328
c countpure = 86200283
c countpure = 86300882
c countpure = 86400101
c Allocate a new page for the cache 35447
c countpure = 86500288
c countpure = 86600453
c countpure = 86700276
c countpure = 86800162
c countpure = 86900139
c countpure = 87000113
c countpure = 87101235
c countpure = 87201213
c countpure = 87300798
c countpure = 87400447
c countpure = 87500176
c countpure = 87600153
c countpure = 87700349
c countpure = 87800822
c countpure = 87900951
c countpure = 88000547
c countpure = 88101491
c Allocate a new page for the cache 135649
c countpure = 88201118
c countpure = 88300101
c countpure = 88400702
c countpure = 88500797
c countpure = 88600068
c countpure = 88700061
c countpure = 88800371
c countpure = 88900276
c |      729.80|      779568|      614614| 10893617581|      731854|    11483.43|      606236|           1|
c countpure = 89001395
c countpure = 89103434
c countpure = 89201639
c countpure = 89300010
c countpure = 89400382
c countpure = 89500543
c countpure = 89600732
c countpure = 89700083
c countpure = 89800240
c countpure = 89900039
c countpure = 90001689
c countpure = 90100462
c countpure = 90200722
c countpure = 90301060
c countpure = 90400795
c countpure = 90501186
c countpure = 90600224
c countpure = 90700163
c countpure = 90800179
c countpure = 90900192
c countpure = 91000190
c countpure = 91100848
c countpure = 91200515
c countpure = 91300391
c countpure = 91400016
c countpure = 91500247
c |      752.69|      796099|      622983| 11237080091|      749011|    11483.43|      614429|           1|
c countpure = 91600222
c countpure = 91700215
c countpure = 91800048
c countpure = 91900479
c countpure = 92001213
c Allocate a new page for the cache 130535
c countpure = 92100007
c countpure = 92200080
c countpure = 92301025
c countpure = 92400080
c countpure = 92501114
c countpure = 92600708
c countpure = 92700155
c countpure = 92800442
c countpure = 92900003
c countpure = 93001254
c countpure = 93100859
c countpure = 93200516
c countpure = 93300098
c countpure = 93400615
c countpure = 93500761
c countpure = 93600119
c countpure = 93700011
c countpure = 93800024
c countpure = 93900010
c countpure = 94000012
c countpure = 94100340
c countpure = 94200075
c |      778.71|      814589|      631239| 11618718397|      768222|    11995.44|      622617|           1|
c countpure = 94300282
c countpure = 94401253
c countpure = 94501952
c countpure = 94600605
c countpure = 94700089
c countpure = 94800904
c countpure = 94900004
c countpure = 95000217
c countpure = 95100111
c countpure = 95200522
c countpure = 95300009
c countpure = 95400674
c countpure = 95500746
c countpure = 95600213
c countpure = 95700219
c countpure = 95801105
c countpure = 95900070
c countpure = 96000368
c countpure = 96100476
c Allocate a new page for the cache 97170
c countpure = 96200466
c countpure = 96300146
c countpure = 96400777
c |      794.12|      831756|      639450| 11831440634|      785310|    12507.44|      630813|           1|
c countpure = 96500827
c countpure = 96601106
c countpure = 96700258
c countpure = 96801699
c countpure = 96900336
c countpure = 97000238
c countpure = 97100563
c countpure = 97200156
c countpure = 97300898
c countpure = 97400261
c countpure = 97500950
c countpure = 97600313
c countpure = 97701604
c countpure = 97800945
c countpure = 97900148
c countpure = 98000512
c countpure = 98100118
c countpure = 98200133
c countpure = 98301284
c countpure = 98400058
c countpure = 98500586
c countpure = 98600279
c countpure = 98700042
c |      819.06|      850486|      647704| 12185839874|      804727|    12585.70|      639005|           1|
c countpure = 98800142
c countpure = 98901672
c countpure = 99000136
c countpure = 99100030
c countpure = 99200006
c countpure = 99300039
c countpure = 99400200
c countpure = 99500123
c countpure = 99600669
c |      823.60|      862251|      655920| 12240205876|      815912|    12585.70|      647211|           1|
c countpure = 99700068
c countpure = 99800353
c countpure = 99900092
c countpure = 100000045
c countpure = 100100131
c countpure = 100200519
c countpure = 100300155
c countpure = 100400452
c countpure = 100500568
c countpure = 100600194
c |      830.44|      873487|      664117| 12329027522|      826560|    12585.70|      655394|           1|
c countpure = 100700004
c countpure = 100800973
c Allocate a new page for the cache 2681
c countpure = 100900056
c countpure = 101000002
c countpure = 101100528
c countpure = 101200003
c countpure = 101300495
c countpure = 101401586
c countpure = 101500104
c countpure = 101600630
c countpure = 101700126
c countpure = 101800526
c countpure = 101900868
c countpure = 102000118
c countpure = 102100595
c countpure = 102200047
c countpure = 102300317
c countpure = 102400650
c countpure = 102500006
c |      848.14|      888855|      672321| 12603255644|      842024|    13097.71|      663568|           1|
c countpure = 102600179
c countpure = 102700094
c countpure = 102800278
c countpure = 102901519
c countpure = 103000613
c countpure = 103104019
c countpure = 103200191
c countpure = 103300539
c countpure = 103400316
c countpure = 103500053
c countpure = 103600285
c countpure = 103700137
c countpure = 103800370
c countpure = 103900537
c countpure = 104000431
c countpure = 104100735
c countpure = 104200250
c countpure = 104300101
c countpure = 104400549
c countpure = 104500001
c countpure = 104600568
c countpure = 104700012
c countpure = 104800535
c |      865.00|      904705|      680532| 12833298327|      858415|    13097.71|      671763|           1|
c countpure = 104901415
c countpure = 105000777
c countpure = 105100305
c countpure = 105200321
c Allocate a new page for the cache 83568
c countpure = 105300583
c countpure = 105400607
c countpure = 105500116
c countpure = 105600266
c countpure = 105700019
c countpure = 105800474
c countpure = 105902279
c countpure = 106002404
c countpure = 106100665
c countpure = 106200243
c countpure = 106300456
c countpure = 106401603
c countpure = 106500028
c countpure = 106600031
c countpure = 106700651
c countpure = 106800827
c countpure = 106900066
c countpure = 107000025
c countpure = 107100441
c |      891.47|      925898|      688805| 13242679756|      880750|    13609.71|      679944|           1|
c countpure = 107200150
c countpure = 107301040
c countpure = 107400328
c countpure = 107500824
c countpure = 107600348
c Allocate a new page for the cache 131740
c countpure = 107700676
c countpure = 107800006
c countpure = 107900101
c countpure = 108001168
c countpure = 108100370
c countpure = 108200526
c countpure = 108300064
c countpure = 108400278
c countpure = 108500559
c countpure = 108600453
c countpure = 108700089
c countpure = 108800043
c countpure = 108900002
c countpure = 109000349
c countpure = 109100093
c countpure = 109200374
c countpure = 109300230
c countpure = 109400323
c countpure = 109500416
c countpure = 109600030
c |      916.49|      937741|      697044| 13600209395|      892762|    14121.71|      688138|           1|
c countpure = 109700477
c countpure = 109801370
c countpure = 109900051
c --------------------------------------------------------------------------------------------------------
c
c [1m[31mStatistics [0m
c [33mCompilation Information[0m
c Number of recursive call: 1378111
c Number of split formula: 895452
c Number of decision: 689055
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 940289
c Number of negative hit: 697963
c
c
c Final time: 918.94
c
s SATISFIABLE
c s type pmc
c s log10-estimate 6.21156689260364315126486613481171268468106703507405
c s exact arb int 1627672
