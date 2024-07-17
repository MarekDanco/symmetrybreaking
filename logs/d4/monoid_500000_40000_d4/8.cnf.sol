c [SCRIPT] Command line: /home/mikolas/mc/monoid/8.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/monoid/8.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 356594
c [INITIAL INPUT] Number of clauses: 3062224
c [INITIAL INPUT] Number of binary clauses: 63344
c [INITIAL INPUT] Number of ternary clauses: 2889233
c [INITIAL INPUT] Number of clauses larger than 3: 109646
c [INITIAL INPUT] Number of literals: 9501322
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 9.30724
c [BACKBONE] Number of SAT calls: 69
c [BACKBONE] Backbone size: 12207
c [BACKBONE] Number of units detected by calling the solver: 39
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 1
c [DAC] #Equivalences: 1
c [DAC] #And gates: 48
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 512
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 211
c [BIPARTITION] #Model considered for preproc with models: 29
c [BIPARTITION] #Input variables from models as preproc: 0
c [BIPARTITION] Initial input set: 301
c [CONSTRUCTOR] Solver: Glucose
c [HEURISTIC-BIPARTITION] Constructor
c [HEURISTIC-BIPARTITION] Method run: OCC_ASC
c Run for 0 conflicts
c [1m[31mBipartition in progress[0m
c [BIPE] The bi-partition process has been stopped
c [Glucose_bipe] Stop Glucose_bipe
c [BIPARTITION] Stop by signal, number of remaining undefined variables: 179
c Run for 0 conflicts
c [1m[31mBipartition in progress[0m
c [BIPARTITION] Stop by signal, number of remaining undefined variables: 1
c [BIPARTITION] [1m[31mStatistics [0m
c [BIPARTITION] #Input variables get from complete model: 0
c [BIPARTITION] #Input variables get from Padoa model: 0
c [BIPARTITION] #Input variables get from model: 0
c [BIPARTITION] #Output variables get from symmetries: 0
c [BIPARTITION] #Input variables computed: 217
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 89.5926
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 130703384
c [REDUCER PROPAGATOR] Binary clauses: 63344
c [REDUCER PROPAGATOR] Not binary clauses: 2998879
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 9374633
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 82376
c [REDUCER OCC-ELIMINATION] Number of literals removed: 82376
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2090490
c [REDUCER VIVIFICATION] Number of clauses removed: 1040657
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 115636
c [REDUCER OCC-ELIMINATION] Number of literals removed: 115636
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 3127226
c [REDUCER VIVIFICATION] Number of clauses removed: 1556191
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 144721
c [REDUCER OCC-ELIMINATION] Number of literals removed: 144721
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 3634272
c [REDUCER VIVIFICATION] Number of clauses removed: 1808210
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 171604
c [REDUCER OCC-ELIMINATION] Number of literals removed: 171604
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 3866089
c [REDUCER VIVIFICATION] Number of clauses removed: 1923357
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 197132
c [REDUCER OCC-ELIMINATION] Number of literals removed: 197132
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 3948504
c [REDUCER VIVIFICATION] Number of clauses removed: 1964278
c [ELIMINATOR] #elim-gate = 2657	#elim-resolution = 334037
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 35077764
c [REDUCER PROPAGATOR] Binary clauses: 58368
c [REDUCER PROPAGATOR] Not binary clauses: 363000
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 2287775
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 76077
c [REDUCER OCC-ELIMINATION] Number of literals removed: 76077
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 912675
c [REDUCER VIVIFICATION] Number of clauses removed: 135513
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 120950
c [REDUCER OCC-ELIMINATION] Number of literals removed: 120950
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 957581
c [REDUCER VIVIFICATION] Number of clauses removed: 144902
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 145549
c [REDUCER OCC-ELIMINATION] Number of literals removed: 145549
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 960426
c [REDUCER VIVIFICATION] Number of clauses removed: 145243
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 167753
c [REDUCER OCC-ELIMINATION] Number of literals removed: 167753
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 960602
c [REDUCER VIVIFICATION] Number of clauses removed: 145254
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 189797
c [REDUCER OCC-ELIMINATION] Number of literals removed: 189797
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 960654
c [REDUCER VIVIFICATION] Number of clauses removed: 145254
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 356594
c [PREPROCESSED INPUT] Number of clauses: 612802
c [PREPROCESSED INPUT] Number of binary clauses: 59324
c [PREPROCESSED INPUT] Number of ternary clauses: 60303
c [PREPROCESSED INPUT] Number of clauses larger than 3: 156479
c [PREPROCESSED INPUT] Number of literals: 1628889
c
c
c [PROJECTED VARIABLES] list: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 474 475 476 477 478 479 480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 500 501 502 503 504 505 506 507 508 509 510 511 512 
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
c countpure = 100724
c countpure = 200088
c countpure = 301005
c countpure = 400377
c countpure = 500193
c countpure = 600849
c countpure = 703489
c countpure = 800193
c countpure = 900539
c countpure = 1001425
c countpure = 1100247
c countpure = 1200031
c countpure = 1300336
c countpure = 1400052
c countpure = 1500911
c countpure = 1600608
c countpure = 1700861
c countpure = 1800334
c countpure = 1900733
c countpure = 2000452
c countpure = 2100659
c countpure = 2200117
c countpure = 2301527
c countpure = 2401216
c countpure = 2500039
c countpure = 2600532
c countpure = 2700055
c countpure = 2800003
c countpure = 2900009
c countpure = 3002214
c countpure = 3101561
c countpure = 3200163
c |       61.00|       12549|       10372|  1087937738|       15456|     5192.21|        8224|           1|
c countpure = 3300169
c countpure = 3400811
c countpure = 3500113
c countpure = 3600187
c countpure = 3700028
c countpure = 3800320
c countpure = 3900769
c countpure = 4000088
c countpure = 4100095
c countpure = 4202238
c countpure = 4300233
c countpure = 4400062
c countpure = 4500078
c countpure = 4600334
c countpure = 4700422
c countpure = 4800043
c countpure = 4900075
c countpure = 5001364
c countpure = 5100971
c countpure = 5200323
c countpure = 5300630
c countpure = 5402854
c countpure = 5500119
c countpure = 5600833
c countpure = 5700118
c countpure = 5800227
c |       97.86|       28425|       19179|  1708423485|       32697|     5192.21|       16410|           1|
c countpure = 5901748
c countpure = 6000106
c countpure = 6100481
c countpure = 6200038
c countpure = 6300483
c countpure = 6400084
c countpure = 6500015
c countpure = 6600202
c |      103.83|       38046|       27575|  1794979935|       42621|     5192.21|       24623|           1|
c countpure = 6700007
c countpure = 6800448
c countpure = 6900102
c countpure = 7000028
c countpure = 7100105
c countpure = 7200049
c countpure = 7300009
c countpure = 7400244
c countpure = 7500035
c countpure = 7601105
c countpure = 7702352
c countpure = 7800163
c countpure = 7900165
c |      113.77|       52364|       35927|  1936132909|       57190|     5192.21|       32805|           1|
c countpure = 8000215
c countpure = 8100021
c countpure = 8200002
c countpure = 8300798
c countpure = 8400067
c countpure = 8500342
c countpure = 8600664
c countpure = 8700126
c countpure = 8800769
c countpure = 8900368
c countpure = 9000563
c countpure = 9100111
c countpure = 9200949
c countpure = 9301737
c countpure = 9400331
c countpure = 9500266
c countpure = 9600647
c countpure = 9700533
c countpure = 9800135
c countpure = 9901367
c countpure = 10000839
c countpure = 10100079
c countpure = 10200520
c countpure = 10300134
c countpure = 10400210
c countpure = 10500694
c countpure = 10600113
c |      146.16|       73046|       44484|  2473309601|       79257|     5192.21|       40997|           1|
c countpure = 10700008
c countpure = 10800297
c countpure = 10900256
c countpure = 11001032
c countpure = 11101513
c countpure = 11201142
c countpure = 11300644
c countpure = 11400363
c countpure = 11500694
c countpure = 11602338
c countpure = 11701814
c countpure = 11800181
c countpure = 11900315
c countpure = 12000067
c countpure = 12100131
c countpure = 12200328
c countpure = 12300930
c countpure = 12400008
c countpure = 12500214
c countpure = 12601232
c countpure = 12700306
c countpure = 12800492
c countpure = 12900365
c countpure = 13002235
c countpure = 13101681
c countpure = 13200027
c countpure = 13300594
c countpure = 13400207
c countpure = 13500049
c countpure = 13600024
c countpure = 13700152
c countpure = 13800462
c countpure = 13900464
c countpure = 14000309
c |      189.84|      102757|       53467|  3233856145|      110902|     5192.21|       49179|           1|
c countpure = 14100607
c countpure = 14200019
c countpure = 14300196
c countpure = 14401892
c countpure = 14500699
c countpure = 14600197
c countpure = 14700592
c countpure = 14802391
c countpure = 14900005
c countpure = 15000480
c countpure = 15101698
c countpure = 15200549
c countpure = 15300712
c countpure = 15400912
c countpure = 15500109
c countpure = 15600660
c countpure = 15700112
c countpure = 15800856
c countpure = 15900311
c countpure = 16000252
c countpure = 16100543
c countpure = 16201847
c countpure = 16300093
c countpure = 16400152
c countpure = 16500349
c countpure = 16600190
c countpure = 16700323
c countpure = 16800180
c countpure = 16903236
c countpure = 17000363
c countpure = 17100033
c countpure = 17200368
c countpure = 17300090
c countpure = 17400011
c countpure = 17501548
c countpure = 17600302
c Allocate a new page for the cache 167982
c countpure = 17700360
c |      248.72|      130263|       61963|  4297825319|      139885|     5704.22|       57367|           1|
c countpure = 17800504
c countpure = 17900462
c countpure = 18000015
c countpure = 18100046
c countpure = 18200119
c countpure = 18300175
c countpure = 18400226
c countpure = 18500338
c countpure = 18600484
c countpure = 18700034
c countpure = 18800307
c countpure = 18902740
c countpure = 19000958
c countpure = 19101857
c countpure = 19200347
c countpure = 19300122
c countpure = 19400452
c countpure = 19500341
c countpure = 19600178
c countpure = 19701751
c |      278.45|      151126|       70281|  4808103677|      161404|     5704.22|       65567|           1|
c countpure = 19800631
c Allocate a new page for the cache 338087
c countpure = 19900070
c countpure = 20000428
c countpure = 20100305
c countpure = 20200028
c countpure = 20301605
c countpure = 20400674
c countpure = 20500002
c countpure = 20600286
c countpure = 20700044
c countpure = 20800429
c countpure = 20900851
c countpure = 21001047
c countpure = 21100060
c countpure = 21201409
c countpure = 21302849
c countpure = 21400718
c countpure = 21501279
c countpure = 21600417
c countpure = 21700997
c countpure = 21800008
c countpure = 21901308
c countpure = 22000881
c countpure = 22100490
c countpure = 22200009
c |      312.51|      167282|       78539|  5362021773|      178165|     6216.22|       73744|           1|
c Allocate a new page for the cache 125915
c countpure = 22301104
c countpure = 22400435
c countpure = 22500085
c countpure = 22600396
c countpure = 22700342
c countpure = 22800046
c countpure = 22900315
c countpure = 23001521
c countpure = 23100402
c countpure = 23200193
c countpure = 23300093
c countpure = 23400229
c countpure = 23500640
c countpure = 23600220
c Allocate a new page for the cache 123142
c countpure = 23700495
c countpure = 23800592
c countpure = 23901143
c countpure = 24000341
c countpure = 24100206
c countpure = 24200091
c countpure = 24301111
c countpure = 24402188
c countpure = 24500807
c countpure = 24600029
c countpure = 24700409
c countpure = 24801233
c countpure = 24901068
c countpure = 25000739
c Allocate a new page for the cache 255220
c countpure = 25100107
c countpure = 25201019
c countpure = 25301724
c countpure = 25402109
c countpure = 25500047
c countpure = 25600033
c countpure = 25700704
c countpure = 25800044
c countpure = 25900011
c countpure = 26000144
c |      393.95|      188945|       86960|  6730328018|      200848|     7752.23|       81949|           1|
c countpure = 26100544
c countpure = 26200285
c countpure = 26300463
c countpure = 26400100
c countpure = 26500659
c countpure = 26601697
c countpure = 26702069
c countpure = 26800051
c countpure = 26900170
c countpure = 27000002
c countpure = 27100172
c countpure = 27200004
c countpure = 27300719
c countpure = 27400322
c countpure = 27500126
c countpure = 27600018
c Allocate a new page for the cache 39479
c countpure = 27700050
c countpure = 27801153
c countpure = 27900003
c countpure = 28002561
c countpure = 28100818
c countpure = 28200052
c countpure = 28300431
c countpure = 28400148
c countpure = 28501814
c countpure = 28600185
c countpure = 28700007
c countpure = 28800068
c countpure = 28901679
c countpure = 29000509
c |      432.51|      212188|       95459|  7332404270|      225530|     8264.24|       90153|           1|
c countpure = 29100003
c countpure = 29200100
c countpure = 29300239
c countpure = 29400060
c countpure = 29500052
c countpure = 29600176
c countpure = 29700466
c countpure = 29800011
c countpure = 29900333
c countpure = 30000132
c countpure = 30100001
c countpure = 30200020
c countpure = 30300026
c countpure = 30400405
c |      441.99|      227236|      103690|  7456523560|      240503|     8264.24|       98332|           1|
c countpure = 30500765
c countpure = 30600201
c countpure = 30700462
c countpure = 30800001
c countpure = 30900158
c Allocate a new page for the cache 1605
c countpure = 31001535
c countpure = 31100081
c countpure = 31200121
c countpure = 31302243
c countpure = 31400081
c countpure = 31500717
c countpure = 31601769
c countpure = 31700068
c countpure = 31800230
c countpure = 31900301
c countpure = 32000091
c countpure = 32102327
c countpure = 32200038
c countpure = 32300054
c countpure = 32400271
c countpure = 32500177
c countpure = 32600747
c countpure = 32701062
c Allocate a new page for the cache 137085
c countpure = 32800039
c countpure = 32900027
c countpure = 33000317
c countpure = 33100386
c countpure = 33200357
c countpure = 33301176
c |      486.28|      248284|      111954|  8145483234|      262361|     9288.25|      106518|           1|
c countpure = 33400038
c countpure = 33500639
c countpure = 33600267
c countpure = 33700195
c countpure = 33800042
c countpure = 33900285
c countpure = 34001921
c countpure = 34100592
c countpure = 34200936
c countpure = 34300531
c countpure = 34400340
c countpure = 34500003
c countpure = 34600240
c countpure = 34700963
c countpure = 34800321
c countpure = 34902252
c countpure = 35000397
c Allocate a new page for the cache 2634
c countpure = 35100218
c countpure = 35200069
c countpure = 35300114
c |      515.55|      259679|      120241|  8605177080|      273929|     9800.25|      114745|           1|
c countpure = 35400006
c countpure = 35500002
c countpure = 35600710
c countpure = 35700003
c countpure = 35800081
c |      518.65|      269882|      128444|  8651925443|      283909|     9800.25|      122946|           1|
c countpure = 35900089
c countpure = 36000022
c countpure = 36100006
c countpure = 36200199
c countpure = 36300012
c |      521.05|      278372|      136630|  8680894281|      292012|     9800.25|      131131|           1|
c countpure = 36400084
c countpure = 36500066
c countpure = 36600055
c |      522.86|      289166|      144823|  8699907798|      301981|     9800.25|      139322|           1|
c countpure = 36700168
c countpure = 36800001
c countpure = 36900019
c |      525.12|      298830|      153014|  8725134010|      310293|     9800.25|      147513|           1|
c countpure = 37000189
c countpure = 37100041
c countpure = 37200070
c |      526.34|      307463|      161209|  8730779662|      317387|     9800.25|      155703|           1|
c countpure = 37300020
c countpure = 37400002
c countpure = 37500003
c countpure = 37600028
c |      528.05|      316277|      169415|  8746348292|      324401|     9800.25|      163898|           1|
c countpure = 37700052
c countpure = 37800298
c countpure = 37900183
c |      530.53|      327454|      177616|  8777761912|      334309|     9800.25|      172099|           1|
c countpure = 38000036
c countpure = 38100006
c countpure = 38200751
c countpure = 38300774
c |      533.62|      337534|      185814|  8819802715|      343418|     9800.25|      180287|           1|
c countpure = 38400001
c countpure = 38500012
c countpure = 38600003
c |      534.83|      346978|      194011|  8825189955|      351672|     9800.25|      188478|           1|
c countpure = 38700047
c countpure = 38800024
c countpure = 38900101
c countpure = 39000028
c |      536.28|      356664|      202203|  8834221907|      360326|     9800.25|      196666|           1|
c countpure = 39100003
c countpure = 39200007
c countpure = 39300003
c |      537.55|      365775|      210395|  8840671697|      368407|     9800.25|      204858|           1|
c countpure = 39400043
c countpure = 39500011
c countpure = 39600015
c countpure = 39700023
c |      538.76|      372854|      218604|  8847235780|      374118|     9800.25|      213051|           1|
c countpure = 39800013
c countpure = 39900010
c countpure = 40000010
c |      540.17|      383102|      226791|  8856489275|      382983|     9800.25|      221232|           1|
c countpure = 40100042
c countpure = 40200110
c |      541.53|      394501|      234984|  8864468663|      393091|     9800.25|      229424|           1|
c countpure = 40300010
c countpure = 40400050
c countpure = 40500279
c countpure = 40600383
c |      545.18|      405904|      243195|  8915096405|      403495|     9800.25|      237624|           1|
c countpure = 40700002
c countpure = 40800014
c countpure = 40900002
c |      546.28|      413468|      251392|  8919326302|      409617|     9800.25|      245816|           1|
c countpure = 41000026
c countpure = 41100037
c |      547.51|      421020|      259588|  8923932291|      414656|     9800.25|      254012|           1|
c countpure = 41200023
c countpure = 41300003
c |      548.71|      429199|      267779|  8928103996|      421112|     9800.25|      262203|           1|
c countpure = 41400001
c countpure = 41500036
c |      549.83|      437637|      275975|  8931629461|      427803|     9800.25|      270393|           1|
c countpure = 41600091
c countpure = 41700015
c countpure = 41800002
c |      551.02|      445062|      284186|  8936658431|      433462|     9800.25|      278585|           1|
c countpure = 41900098
c countpure = 42000152
c countpure = 42100167
c |      552.41|      451420|      292393|  8945778929|      439187|     9800.25|      286776|           1|
c countpure = 42200358
c countpure = 42300059
c countpure = 42400032
c countpure = 42500013
c countpure = 42600009
c |      553.92|      457277|      300584|  8955450434|      444611|     9800.25|      294966|           1|
c countpure = 42700021
c countpure = 42800004
c |      555.18|      463372|      308775|  8962444059|      449471|     9800.25|      303155|           1|
c countpure = 42900117
c countpure = 43000023
c |      556.22|      471160|      316958|  8966676716|      455371|     9800.25|      311338|           1|
c countpure = 43100002
c countpure = 43200148
c |      557.32|      476280|      325156|  8972423702|      458600|     9800.25|      319535|           1|
c countpure = 43300003
c |      558.34|      482124|      333348|  8976235318|      462722|     9800.25|      327726|           1|
c countpure = 43400004
c countpure = 43500008
c |      559.46|      489187|      341547|  8982386416|      467656|     9800.25|      335925|           1|
c countpure = 43600009
c |      560.42|      497365|      349737|  8985386783|      473491|     9800.25|      344115|           1|
c countpure = 43700032
c countpure = 43802058
c countpure = 43900260
c |      563.76|      504915|      357936|  9032218246|      479218|     9800.25|      352312|           1|
c countpure = 44000052
c countpure = 44100016
c |      565.19|      515670|      366115|  9041144928|      487714|     9800.25|      360491|           1|
c countpure = 44200007
c countpure = 44300002
c countpure = 44400037
c countpure = 44500027
c countpure = 44600396
c |      569.51|      526087|      374432|  9100757980|      496732|     9800.25|      368690|           1|
c countpure = 44700849
c Allocate a new page for the cache 307065
c countpure = 44800005
c countpure = 44900162
c countpure = 45000164
c countpure = 45100375
c countpure = 45200100
c countpure = 45301323
c countpure = 45401225
c countpure = 45500022
c countpure = 45600286
c countpure = 45700003
c countpure = 45800824
c countpure = 45900632
c |      581.22|      538003|      382633|  9268847620|      509180|    10312.25|      376865|           1|
c countpure = 46000039
c countpure = 46100297
c countpure = 46200677
c countpure = 46302480
c countpure = 46400302
c countpure = 46500086
c countpure = 46600913
c countpure = 46700162
c countpure = 46800233
c countpure = 46900670
c countpure = 47002961
c countpure = 47100049
c countpure = 47200033
c countpure = 47300588
c countpure = 47401464
c countpure = 47500202
c countpure = 47600154
c countpure = 47701167
c countpure = 47800234
c countpure = 47900654
c Allocate a new page for the cache 353492
c |      608.22|      552728|      390872|  9695653103|      524569|    10824.26|      385083|           1|
c countpure = 48000126
c countpure = 48100014
c countpure = 48200132
c countpure = 48301091
c countpure = 48401586
c countpure = 48500053
c countpure = 48602676
c countpure = 48700186
c countpure = 48800128
c countpure = 48900017
c countpure = 49000027
c countpure = 49100381
c countpure = 49200747
c countpure = 49300051
c countpure = 49400691
c |      621.70|      563571|      399088|  9863179283|      535672|    10824.26|      393240|           1|
c countpure = 49500019
c countpure = 49600065
c countpure = 49700315
c countpure = 49800071
c countpure = 49900312
c countpure = 50002414
c countpure = 50102439
c countpure = 50200947
c countpure = 50301584
c countpure = 50400350
c countpure = 50500958
c countpure = 50600652
c countpure = 50700024
c countpure = 50800662
c countpure = 50900150
c countpure = 51000050
c countpure = 51101605
c |      642.49|      575342|      407324| 10146184716|      547562|    10824.26|      401430|           1|
c countpure = 51200096
c countpure = 51300013
c countpure = 51400145
c countpure = 51501375
c countpure = 51600765
c Allocate a new page for the cache 332100
c countpure = 51700503
c countpure = 51801290
c countpure = 51900132
c countpure = 52001520
c countpure = 52100062
c countpure = 52200104
c countpure = 52300557
c countpure = 52401749
c countpure = 52500239
c countpure = 52600002
c countpure = 52700408
c countpure = 52800089
c countpure = 52900930
c countpure = 53000664
c countpure = 53100016
c countpure = 53200459
c countpure = 53300003
c countpure = 53400651
c countpure = 53500320
c countpure = 53600724
c countpure = 53701391
c |      664.53|      588930|      415535| 10447478289|      561119|    11336.26|      409626|           1|
c countpure = 53800232
c countpure = 53900614
c countpure = 54002094
c countpure = 54100141
c countpure = 54200996
c countpure = 54301115
c countpure = 54403752
c countpure = 54500129
c countpure = 54600608
c countpure = 54700074
c countpure = 54801023
c countpure = 54900038
c countpure = 55000430
c countpure = 55100057
c countpure = 55200436
c countpure = 55300003
c countpure = 55400013
c countpure = 55500012
c countpure = 55600015
c Allocate a new page for the cache 6582
c countpure = 55701216
c countpure = 55800313
c countpure = 55900323
c countpure = 56001366
c |      690.12|      604306|      423785| 10813817548|      576680|    11848.27|      417825|           1|
c countpure = 56100170
c countpure = 56200074
c countpure = 56300018
c countpure = 56400006
c countpure = 56500033
c countpure = 56600011
c countpure = 56700345
c countpure = 56801312
c countpure = 56900093
c countpure = 57000257
c countpure = 57101753
c countpure = 57200109
c countpure = 57300284
c countpure = 57400504
c countpure = 57500496
c countpure = 57600647
c countpure = 57700103
c countpure = 57801847
c countpure = 57900013
c |      707.38|      617168|      431990| 11036386288|      589258|    11848.27|      426009|           1|
c countpure = 58000342
c countpure = 58100237
c countpure = 58200263
c countpure = 58300546
c countpure = 58402242
c countpure = 58501787
c countpure = 58600307
c countpure = 58700013
c countpure = 58800038
c countpure = 58900023
c countpure = 59000090
c countpure = 59100164
c countpure = 59200558
c countpure = 59300502
c countpure = 59401512
c countpure = 59502455
c countpure = 59602399
c countpure = 59701126
c countpure = 59800322
c Allocate a new page for the cache 445945
c countpure = 59900661
c countpure = 60000015
c countpure = 60100602
c countpure = 60200075
c countpure = 60300141
c countpure = 60401310
c countpure = 60500036
c countpure = 60600235
c countpure = 60700906
c countpure = 60800277
c countpure = 60900846
c |      743.84|      638261|      440251| 11478130444|      610868|    12360.27|      434203|           1|
c countpure = 61000364
c countpure = 61102599
c countpure = 61201800
c countpure = 61300338
c countpure = 61400627
c countpure = 61500012
c countpure = 61601036
c countpure = 61700021
c countpure = 61800003
c countpure = 61901206
c countpure = 62000044
c countpure = 62100115
c countpure = 62201152
c countpure = 62301903
c countpure = 62400177
c countpure = 62500450
c countpure = 62601521
c countpure = 62700058
c countpure = 62800012
c countpure = 62900033
c Allocate a new page for the cache 340948
c countpure = 63000065
c countpure = 63100973
c countpure = 63200054
c countpure = 63303240
c countpure = 63400453
c countpure = 63500691
c countpure = 63600016
c countpure = 63700110
c |      782.39|      655164|      448475| 11971049332|      628269|    12872.27|      442412|           1|
c countpure = 63800080
c countpure = 63900075
c countpure = 64000134
c countpure = 64101361
c countpure = 64201635
c countpure = 64300021
c countpure = 64400091
c countpure = 64500055
c countpure = 64600313
c countpure = 64700056
c |      788.86|      663765|      456656| 12042163524|      636390|    12872.27|      450592|           1|
c countpure = 64800056
c countpure = 64900304
c countpure = 65001346
c countpure = 65100073
c countpure = 65200362
c countpure = 65300144
c countpure = 65400105
c countpure = 65500010
c countpure = 65600518
c countpure = 65700711
c countpure = 65801125
c countpure = 65902104
c countpure = 66001967
c countpure = 66100053
c countpure = 66200093
c |      807.85|      674050|      464854| 12276824585|      646602|    12872.27|      458783|           1|
c countpure = 66300100
c countpure = 66400007
c countpure = 66500318
c countpure = 66600191
c countpure = 66700116
c Allocate a new page for the cache 97829
c countpure = 66800039
c countpure = 66900314
c countpure = 67003976
c countpure = 67100256
c countpure = 67200002
c countpure = 67300050
c countpure = 67400043
c countpure = 67500416
c countpure = 67600210
c |      821.19|      684639|      473050| 12432893920|      656275|    13384.28|      466975|           1|
c countpure = 67700427
c countpure = 67800067
c countpure = 67901424
c countpure = 68000008
c countpure = 68100166
c countpure = 68200495
c countpure = 68300093
c countpure = 68400043
c countpure = 68502361
c countpure = 68600111
c countpure = 68700473
c countpure = 68800083
c countpure = 68900046
c countpure = 69001797
c countpure = 69100010
c countpure = 69200440
c countpure = 69301551
c countpure = 69400227
c countpure = 69501567
c |      839.58|      698883|      481246| 12651678399|      670132|    13384.28|      475163|           1|
c countpure = 69600740
c countpure = 69701034
c countpure = 69800721
c countpure = 69900748
c countpure = 70000234
c countpure = 70100088
c countpure = 70200305
c countpure = 70300390
c countpure = 70400129
c countpure = 70500241
c countpure = 70600006
c Allocate a new page for the cache 206469
c countpure = 70701252
c countpure = 70801818
c countpure = 70900492
c countpure = 71000765
c countpure = 71102848
c countpure = 71201033
c countpure = 71301702
c countpure = 71402074
c countpure = 71500415
c countpure = 71601789
c countpure = 71703036
c countpure = 71800714
c countpure = 71900895
c countpure = 72000327
c countpure = 72100613
c countpure = 72201428
c countpure = 72301525
c countpure = 72401579
c countpure = 72500206
c countpure = 72601460
c countpure = 72700640
c countpure = 72801706
c countpure = 72900056
c |      900.79|      717059|      489462| 13394130378|      688618|    13896.28|      483356|           1|
c countpure = 73000044
c countpure = 73100343
c countpure = 73200373
c Allocate a new page for the cache 337957
c countpure = 73300140
c countpure = 73401215
c countpure = 73500963
c countpure = 73601112
c countpure = 73700316
c countpure = 73800113
c countpure = 73900026
c countpure = 74000982
c countpure = 74101607
c countpure = 74200125
c |      916.04|      728541|      497665| 13550844627|      699333|    14408.29|      491545|           1|
c countpure = 74300824
c countpure = 74400014
c countpure = 74501615
c countpure = 74600030
c countpure = 74700002
c countpure = 74800117
c countpure = 74900181
c countpure = 75000457
c countpure = 75100238
c countpure = 75200291
c countpure = 75300709
c |      926.35|      738988|      505867| 13643107041|      709014|    14408.29|      499741|           1|
c countpure = 75401216
c countpure = 75500001
c countpure = 75600006
c countpure = 75700005
c countpure = 75802557
c countpure = 75900306
c countpure = 76002343
c |      933.00|      747043|      514058| 13697770718|      715477|    14408.29|      507931|           1|
c countpure = 76101031
c countpure = 76201231
c countpure = 76300004
c countpure = 76403567
c countpure = 76501021
c countpure = 76601175
c countpure = 76702049
c countpure = 76800123
c countpure = 76900428
c countpure = 77001758
c countpure = 77100275
c countpure = 77200123
c countpure = 77300131
c countpure = 77400927
c countpure = 77500006
c countpure = 77600770
c countpure = 77700663
c countpure = 77801684
c |      955.50|      763085|      522313| 13930269692|      731191|    14408.29|      516118|           1|
c countpure = 77900044
c countpure = 78000276
c Allocate a new page for the cache 1844
c countpure = 78100028
c countpure = 78200017
c countpure = 78301666
c countpure = 78401140
c countpure = 78501454
c countpure = 78600557
c countpure = 78701277
c countpure = 78800052
c countpure = 78900181
c countpure = 79000081
c countpure = 79100462
c countpure = 79200549
c countpure = 79300114
c countpure = 79400154
c countpure = 79500448
c countpure = 79600189
c countpure = 79700118
c countpure = 79800330
c countpure = 79900525
c countpure = 80001621
c countpure = 80101538
c countpure = 80200040
c countpure = 80300581
c countpure = 80401805
c countpure = 80500970
c countpure = 80600001
c countpure = 80700717
c countpure = 80800955
c countpure = 80900070
c countpure = 81000040
c countpure = 81100575
c countpure = 81200141
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |      997.96|      790067|      530701| 14423746125|      759116|    14920.29|      524314|           1|
c countpure = 81300059
c countpure = 81400018
c countpure = 81500526
c countpure = 81602541
c countpure = 81700276
c countpure = 81800180
c countpure = 81900016
c countpure = 82000703
c countpure = 82100469
c Allocate a new page for the cache 19289
c countpure = 82200330
c countpure = 82300070
c countpure = 82400950
c countpure = 82500028
c countpure = 82600133
c |     1008.60|      806559|      538962| 14533514027|      775542|    15432.29|      532513|           1|
c countpure = 82700006
c countpure = 82800253
c countpure = 82900023
c countpure = 83000113
c countpure = 83100205
c countpure = 83202089
c countpure = 83303015
c countpure = 83400357
c |     1014.44|      818499|      547155| 14589032214|      786162|    15432.29|      540701|           1|
c countpure = 83500619
c countpure = 83600075
c countpure = 83700010
c countpure = 83800115
c countpure = 83903767
c countpure = 84000189
c countpure = 84100174
c countpure = 84200596
c countpure = 84300005
c countpure = 84400020
c countpure = 84500102
c countpure = 84600082
c countpure = 84700118
c countpure = 84800023
c countpure = 84900591
c |     1029.41|      832436|      555360| 14743557703|      799415|    15432.29|      548883|           1|
c countpure = 85000287
c countpure = 85100479
c countpure = 85200076
c countpure = 85300819
c countpure = 85400907
c countpure = 85500489
c countpure = 85600932
c countpure = 85700008
c countpure = 85800296
c countpure = 85900698
c countpure = 86000140
c countpure = 86100158
c countpure = 86200092
c countpure = 86300103
c countpure = 86400126
c countpure = 86500156
c countpure = 86600335
c countpure = 86700181
c Allocate a new page for the cache 57035
c countpure = 86800200
c countpure = 86900025
c countpure = 87000250
c countpure = 87100036
c countpure = 87200017
c countpure = 87301057
c countpure = 87400057
c countpure = 87500025
c countpure = 87600022
c |     1060.84|      853353|      563583| 15139360666|      821178|    15944.30|      557080|           1|
c countpure = 87701140
c countpure = 87800112
c countpure = 87900529
c countpure = 88000639
c countpure = 88100116
c countpure = 88201574
c countpure = 88301888
c countpure = 88401523
c countpure = 88501322
c countpure = 88600931
c countpure = 88700058
c countpure = 88800879
c countpure = 88900158
c countpure = 89002741
c countpure = 89100110
c countpure = 89204447
c countpure = 89300500
c countpure = 89400456
c countpure = 89500127
c countpure = 89601474
c countpure = 89701950
c countpure = 89800546
c countpure = 89902922
c Allocate a new page for the cache 66651
c countpure = 90000653
c countpure = 90100444
c countpure = 90200489
c countpure = 90300533
c countpure = 90400641
c |     1098.19|      872384|      571798| 15652122445|      840608|    16456.30|      565275|           1|
c countpure = 90500883
c countpure = 90600759
c countpure = 90700156
c countpure = 90800007
c countpure = 90900756
c countpure = 91000275
c countpure = 91100042
c countpure = 91200902
c countpure = 91301130
c countpure = 91400322
c countpure = 91500384
c countpure = 91600214
c countpure = 91700288
c countpure = 91800619
c countpure = 91900128
c countpure = 92000349
c countpure = 92100545
c countpure = 92200342
c countpure = 92301837
c countpure = 92400395
c countpure = 92500189
c Allocate a new page for the cache 295184
c countpure = 92600207
c countpure = 92700371
c countpure = 92800924
c countpure = 92900309
c countpure = 93000236
c countpure = 93100463
c countpure = 93200516
c countpure = 93301248
c countpure = 93400852
c countpure = 93500069
c countpure = 93601322
c countpure = 93700556
c countpure = 93800324
c countpure = 93900762
c Allocate a new page for the cache 153752
c countpure = 94001658
c countpure = 94100440
c |     1174.32|      896509|      580141| 16737231229|      865443|    17480.31|      573463|           1|
c countpure = 94200576
c countpure = 94300152
c countpure = 94400501
c countpure = 94500515
c countpure = 94603274
c countpure = 94700012
c countpure = 94800091
c countpure = 94901383
c countpure = 95000901
c countpure = 95100799
c countpure = 95200623
c countpure = 95300688
c countpure = 95400816
c countpure = 95500898
c countpure = 95600010
c countpure = 95700158
c countpure = 95800400
c countpure = 95900156
c countpure = 96001326
c countpure = 96100071
c countpure = 96201000
c countpure = 96300381
c countpure = 96400887
c countpure = 96500101
c countpure = 96600084
c countpure = 96700579
c countpure = 96800923
c countpure = 96900215
c countpure = 97000909
c |     1204.01|      910508|      588340| 17122012250|      879777|    17480.31|      581652|           1|
c countpure = 97100199
c countpure = 97201953
c countpure = 97300118
c countpure = 97400001
c countpure = 97500402
c countpure = 97600488
c countpure = 97700273
c Allocate a new page for the cache 60321
c countpure = 97800439
c countpure = 97900608
c countpure = 98001320
c countpure = 98100876
c countpure = 98200126
c countpure = 98300255
c countpure = 98400091
c countpure = 98500199
c countpure = 98600035
c countpure = 98700067
c countpure = 98801178
c countpure = 98900078
c countpure = 99000005
c countpure = 99101799
c countpure = 99200134
c countpure = 99300262
c |     1223.80|      923023|      596547| 17360286644|      892381|    17992.31|      589838|           1|
c countpure = 99400552
c countpure = 99500195
c countpure = 99600019
c countpure = 99700273
c countpure = 99800504
c countpure = 99900043
c countpure = 100000844
c countpure = 100100418
c countpure = 100200499
c countpure = 100300012
c countpure = 100401304
c countpure = 100500028
c countpure = 100600002
c countpure = 100700198
c countpure = 100800224
c countpure = 100900099
c countpure = 101001061
c countpure = 101101383
c countpure = 101200097
c countpure = 101301015
c countpure = 101400373
c countpure = 101501139
c |     1245.77|      935394|      604751| 17623303299|      904999|    17992.31|      598026|           1|
c countpure = 101601342
c countpure = 101700411
c countpure = 101800033
c countpure = 101900395
c countpure = 102000350
c countpure = 102102222
c countpure = 102200260
c countpure = 102300064
c Allocate a new page for the cache 303046
c countpure = 102401355
c countpure = 102500248
c countpure = 102600446
c countpure = 102700383
c countpure = 102800943
c countpure = 102900860
c countpure = 103002017
c countpure = 103100151
c countpure = 103200017
c countpure = 103301138
c countpure = 103400019
c countpure = 103502382
c countpure = 103601466
c countpure = 103700440
c countpure = 103800801
c countpure = 103900582
c countpure = 104000076
c countpure = 104100199
c countpure = 104201210
c countpure = 104300025
c countpure = 104400486
c |     1290.22|      954276|      612988| 18216721535|      924474|    18504.32|      606237|           1|
c countpure = 104500444
c countpure = 104600028
c Allocate a new page for the cache 299376
c countpure = 104700177
c countpure = 104800003
c countpure = 104900102
c countpure = 105003135
c countpure = 105100328
c countpure = 105200010
c countpure = 105300322
c countpure = 105400031
c countpure = 105501440
c countpure = 105600206
c countpure = 105700599
c countpure = 105801499
c countpure = 105900275
c countpure = 106001472
c countpure = 106103993
c countpure = 106200550
c countpure = 106300304
c countpure = 106400407
c countpure = 106500691
c countpure = 106600062
c countpure = 106700984
c countpure = 106800859
c countpure = 106900723
c countpure = 107000164
c countpure = 107102240
c Allocate a new page for the cache 102825
c countpure = 107201004
c countpure = 107301548
c countpure = 107401388
c countpure = 107500065
c countpure = 107603422
c countpure = 107700764
c countpure = 107800107
c countpure = 107901690
c countpure = 108001038
c countpure = 108100040
c |     1357.16|      973844|      621238| 19108457443|      944526|    19528.32|      614442|           1|
c countpure = 108200158
c countpure = 108300470
c countpure = 108400073
c countpure = 108500137
c countpure = 108600097
c countpure = 108701216
c countpure = 108800930
c countpure = 108900527
c countpure = 109000169
c countpure = 109100407
c countpure = 109200621
c countpure = 109300611
c Allocate a new page for the cache 341994
c countpure = 109401670
c countpure = 109500518
c countpure = 109600049
c countpure = 109700193
c countpure = 109802930
c countpure = 109900321
c countpure = 110000383
c countpure = 110100449
c countpure = 110200012
c countpure = 110300445
c countpure = 110400391
c countpure = 110501823
c countpure = 110600081
c countpure = 110700491
c countpure = 110800544
c countpure = 110900029
c countpure = 111000469
c countpure = 111100981
c countpure = 111200093
c countpure = 111301883
c Allocate a new page for the cache 311805
c countpure = 111400001
c countpure = 111500072
c countpure = 111600797
c |     1420.41|      991933|      629445| 19966980895|      962887|    20552.33|      622603|           1|
c countpure = 111701733
c countpure = 111800196
c countpure = 111900263
c countpure = 112000207
c countpure = 112102608
c countpure = 112200318
c countpure = 112300078
c countpure = 112400262
c countpure = 112500019
c countpure = 112600098
c Allocate a new page for the cache 380563
c countpure = 112700700
c countpure = 112800682
c countpure = 112900489
c countpure = 113000538
c countpure = 113100158
c countpure = 113201478
c countpure = 113300144
c countpure = 113400473
c countpure = 113500167
c countpure = 113600011
c countpure = 113700227
c countpure = 113800012
c countpure = 113900016
c countpure = 114001781
c countpure = 114101438
c countpure = 114200078
c countpure = 114300156
c countpure = 114400007
c countpure = 114500468
c countpure = 114600742
c countpure = 114700840
c countpure = 114800162
c |     1477.97|     1018643|      637745| 20818448985|      990905|    21064.34|      630811|           1|
c countpure = 114901100
c countpure = 115000286
c countpure = 115100378
c countpure = 115200108
c Allocate a new page for the cache 44917
c countpure = 115300084
c countpure = 115401161
c countpure = 115500828
c countpure = 115600047
c countpure = 115700588
c countpure = 115800394
c countpure = 115900504
c countpure = 116000156
c countpure = 116100029
c countpure = 116200004
c countpure = 116301054
c countpure = 116401281
c countpure = 116500040
c countpure = 116600072
c countpure = 116700705
c countpure = 116800107
c countpure = 116900143
c countpure = 117000195
c |     1499.94|     1043005|      645979| 21149833748|     1016700|    21576.34|      639011|           1|
c countpure = 117100016
c countpure = 117200485
c countpure = 117300019
c countpure = 117401210
c countpure = 117501183
c countpure = 117600012
c countpure = 117700148
c countpure = 117800266
c countpure = 117900187
c countpure = 118000097
c countpure = 118100140
c countpure = 118200015
c countpure = 118300615
c countpure = 118400440
c |     1509.05|     1060098|      654180| 21247409926|     1034168|    21576.34|      647196|           1|
c countpure = 118500282
c countpure = 118600459
c countpure = 118700053
c countpure = 118800096
c countpure = 118900782
c countpure = 119000027
c countpure = 119100081
c countpure = 119200114
c countpure = 119300002
c countpure = 119401356
c countpure = 119500117
c countpure = 119600009
c countpure = 119700059
c countpure = 119800292
c |     1520.46|     1077504|      662381| 21388375117|     1052123|    21576.34|      655384|           1|
c countpure = 119901184
c countpure = 120000157
c countpure = 120100010
c countpure = 120200508
c Allocate a new page for the cache 251661
c countpure = 120300698
c countpure = 120400621
c countpure = 120500486
c countpure = 120600502
c countpure = 120700044
c countpure = 120800134
c countpure = 120900129
c countpure = 121000145
c countpure = 121100031
c countpure = 121200512
c countpure = 121301327
c countpure = 121401879
c countpure = 121500381
c countpure = 121600611
c countpure = 121700131
c |     1540.52|     1097157|      670591| 21663867590|     1072325|    22088.34|      663584|           1|
c countpure = 121800008
c countpure = 121900017
c countpure = 122000087
c countpure = 122100250
c countpure = 122201070
c countpure = 122300041
c countpure = 122400200
c countpure = 122500505
c countpure = 122600214
c countpure = 122700706
c countpure = 122800785
c countpure = 122900600
c countpure = 123000775
c countpure = 123100479
c countpure = 123200475
c countpure = 123301258
c countpure = 123400108
c countpure = 123500404
c countpure = 123600542
c countpure = 123700586
c countpure = 123800831
c countpure = 123900009
c Allocate a new page for the cache 316048
c countpure = 124000962
c countpure = 124101078
c countpure = 124200067
c countpure = 124300637
c countpure = 124400140
c countpure = 124500643
c countpure = 124600088
c |     1582.30|     1123137|      678794| 22259486640|     1099389|    22600.35|      671772|           1|
c countpure = 124700021
c countpure = 124800715
c countpure = 124901010
c countpure = 125000046
c countpure = 125100092
c countpure = 125200035
c countpure = 125301487
c countpure = 125400611
c Allocate a new page for the cache 281069
c countpure = 125500346
c countpure = 125600280
c countpure = 125700115
c countpure = 125801129
c countpure = 125900330
c countpure = 126000161
c countpure = 126100656
c countpure = 126201111
c countpure = 126303638
c countpure = 126400004
c countpure = 126500666
c countpure = 126600414
c countpure = 126700252
c countpure = 126800124
c countpure = 126900167
c countpure = 127000254
c countpure = 127100846
c countpure = 127203484
c countpure = 127300761
c countpure = 127400526
c countpure = 127500400
c Allocate a new page for the cache 352695
c countpure = 127600258
c countpure = 127701215
c countpure = 127801915
c countpure = 127900591
c countpure = 128000331
c countpure = 128100371
c countpure = 128200793
c countpure = 128300033
c countpure = 128400033
c countpure = 128503427
c countpure = 128602621
c countpure = 128702012
c |     1663.74|     1152796|      687065| 23466202350|     1130400|    23624.36|      679959|           1|
c countpure = 128800016
c countpure = 128902146
c countpure = 129000213
c countpure = 129100561
c countpure = 129200508
c countpure = 129302758
c countpure = 129400414
c Allocate a new page for the cache 90902
c countpure = 129500658
c countpure = 129600468
c countpure = 129700156
c countpure = 129800512
c countpure = 129900001
c countpure = 130000036
c countpure = 130100398
c countpure = 130200002
c countpure = 130302531
c countpure = 130400120
c countpure = 130500758
c countpure = 130600339
c countpure = 130700869
c countpure = 130800054
c countpure = 130900741
c countpure = 131000586
c countpure = 131102120
c countpure = 131200137
c countpure = 131300291
c countpure = 131401732
c Allocate a new page for the cache 200774
c countpure = 131500752
c countpure = 131600133
c countpure = 131701356
c countpure = 131802480
c countpure = 131901638
c countpure = 132000048
c countpure = 132100011
c countpure = 132200123
c |     1724.30|     1184666|      695833| 24379069725|     1163881|    24648.36|      688147|           1|
c countpure = 132300013
c countpure = 132400328
c countpure = 132500067
c countpure = 132600480
c countpure = 132701299
c countpure = 132801918
c countpure = 132901200
c countpure = 133000240
c countpure = 133100332
c countpure = 133200083
c countpure = 133300504
c Allocate a new page for the cache 338824
c countpure = 133400787
c countpure = 133501209
c countpure = 133600719
c countpure = 133701370
c countpure = 133801183
c countpure = 133900919
c countpure = 134000004
c countpure = 134100619
c countpure = 134200798
c countpure = 134300095
c countpure = 134400154
c countpure = 134500402
c countpure = 134601720
c countpure = 134701658
c countpure = 134803461
c countpure = 134900928
c countpure = 135000487
c countpure = 135100487
c countpure = 135200059
c |     1780.63|     1211346|      704082| 25187957478|     1191239|    25160.37|      696360|           1|
c countpure = 135300037
c countpure = 135400548
c countpure = 135501213
c countpure = 135600986
c Allocate a new page for the cache 10510
c countpure = 135701414
c countpure = 135800212
c countpure = 135900065
c countpure = 136000055
c countpure = 136100931
c countpure = 136201619
c countpure = 136300714
c countpure = 136400611
c countpure = 136500969
c countpure = 136600078
c countpure = 136700021
c countpure = 136800308
c countpure = 136900092
c countpure = 137000301
c countpure = 137101014
c countpure = 137201082
c countpure = 137300445
c countpure = 137400085
c countpure = 137500441
c Allocate a new page for the cache 229927
c countpure = 137601019
c countpure = 137700365
c countpure = 137800712
c countpure = 137900058
c countpure = 138001102
c countpure = 138100503
c |     1835.39|     1231089|      712258| 25954294901|     1211330|    26184.38|      704525|           1|
c countpure = 138200670
c countpure = 138300122
c countpure = 138400371
c countpure = 138500550
c countpure = 138600186
c countpure = 138700234
c countpure = 138800669
c countpure = 138900540
c countpure = 139000528
c Allocate a new page for the cache 119642
c countpure = 139100260
c countpure = 139202652
c countpure = 139300041
c countpure = 139400361
c countpure = 139500369
c countpure = 139600039
c countpure = 139700209
c countpure = 139800049
c Allocate a new page for the cache 64208
c countpure = 139901065
c countpure = 140000018
c countpure = 140100116
c countpure = 140200143
c countpure = 140301215
c countpure = 140400246
c countpure = 140500354
c countpure = 140600175
c countpure = 140701965
c countpure = 140800515
c countpure = 140900040
c countpure = 141000087
c countpure = 141100044
c countpure = 141200325
c countpure = 141300066
c countpure = 141400761
c countpure = 141500010
c countpure = 141600011
c countpure = 141700416
c countpure = 141800312
c countpure = 141900133
c countpure = 142000711
c Allocate a new page for the cache 390195
c countpure = 142100180
c countpure = 142200010
c |     1932.09|     1259648|      720509| 27410405375|     1241130|    27720.39|      712720|           1|
c countpure = 142300159
c countpure = 142400266
c countpure = 142500062
c countpure = 142600472
c countpure = 142701220
c countpure = 142800160
c countpure = 142900897
c countpure = 143000457
c countpure = 143100322
c countpure = 143200011
c countpure = 143300002
c countpure = 143400046
c countpure = 143500033
c countpure = 143600003
c countpure = 143701554
c countpure = 143800068
c countpure = 143900024
c countpure = 144000236
c countpure = 144100559
c countpure = 144200466
c countpure = 144300477
c countpure = 144400503
c countpure = 144500857
c countpure = 144602138
c countpure = 144700795
c countpure = 144800306
c |     1958.56|     1277812|      728704| 27742650795|     1260072|    27720.39|      720910|           1|
c countpure = 144900554
c countpure = 145000101
c countpure = 145101489
c countpure = 145202362
c countpure = 145300089
c Allocate a new page for the cache 283961
c countpure = 145400306
c countpure = 145500394
c countpure = 145600578
c countpure = 145700556
c --------------------------------------------------------------------------------------------------------
c
c [1m[31mStatistics [0m
c [33mCompilation Information[0m
c Number of recursive call: 1445287
c Number of split formula: 1264732
c Number of decision: 722643
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 1282329
c Number of negative hit: 730443
c
c
c Final time: 1985.74
c
s SATISFIABLE
c s type pmc
c s log10-estimate 6.22245555604136973876885192774471220361340093624299
c s exact arb int 1668997
