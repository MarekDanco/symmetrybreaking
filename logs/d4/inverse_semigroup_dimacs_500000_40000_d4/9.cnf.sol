c [SCRIPT] Command line: /home/mikolas/mc/inverse_semigroup_dimacs/9.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/inverse_semigroup_dimacs/9.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 606653
c [INITIAL INPUT] Number of clauses: 2463255
c [INITIAL INPUT] Number of binary clauses: 41358
c [INITIAL INPUT] Number of ternary clauses: 2337658
c [INITIAL INPUT] Number of clauses larger than 3: 84239
c [INITIAL INPUT] Number of literals: 7662259
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 57.6156
c [BACKBONE] Number of SAT calls: 185
c [BACKBONE] Backbone size: 1695
c [BACKBONE] Number of units detected by calling the solver: 145
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 4
c [DAC] #Equivalences: 4
c [DAC] #And gates: 76
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 729
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 250
c [BIPARTITION] #Model considered for preproc with models: 39
c [BIPARTITION] #Input variables from models as preproc: 0
c [BIPARTITION] Initial input set: 479
c [CONSTRUCTOR] Solver: Glucose
c [HEURISTIC-BIPARTITION] Constructor
c [HEURISTIC-BIPARTITION] Method run: OCC_ASC
c Run for 0 conflicts
c [1m[31mBipartition in progress[0m
c [BIPE] The bi-partition process has been stopped
c [Glucose_bipe] Stop Glucose_bipe
c [BIPARTITION] Stop by signal, number of remaining undefined variables: 431
c Run for 0 conflicts
c [1m[31mBipartition in progress[0m
c [BIPARTITION] Stop by signal, number of remaining undefined variables: 1
c [BIPARTITION] [1m[31mStatistics [0m
c [BIPARTITION] #Input variables get from complete model: 0
c [BIPARTITION] #Input variables get from Padoa model: 0
c [BIPARTITION] #Input variables get from model: 0
c [BIPARTITION] #Output variables get from symmetries: 0
c [BIPARTITION] #Input variables computed: 433
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 41.3434
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 110679432
c [REDUCER PROPAGATOR] Binary clauses: 41358
c [REDUCER PROPAGATOR] Not binary clauses: 2421897
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 7579543
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 53363
c [REDUCER OCC-ELIMINATION] Number of literals removed: 53363
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 2168339
c [REDUCER VIVIFICATION] Number of clauses removed: 1082504
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 74047
c [REDUCER OCC-ELIMINATION] Number of literals removed: 74047
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 3244192
c [REDUCER VIVIFICATION] Number of clauses removed: 1620328
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 94501
c [REDUCER OCC-ELIMINATION] Number of literals removed: 94501
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 3773380
c [REDUCER VIVIFICATION] Number of clauses removed: 1884867
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 114838
c [REDUCER OCC-ELIMINATION] Number of literals removed: 114838
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 4018071
c [REDUCER VIVIFICATION] Number of clauses removed: 2007193
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 135137
c [REDUCER OCC-ELIMINATION] Number of literals removed: 135137
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 4111588
c [REDUCER VIVIFICATION] Number of clauses removed: 2053934
c [ELIMINATOR] #elim-gate = 23807	#elim-resolution = 585087
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 25275400
c [REDUCER PROPAGATOR] Binary clauses: 21133
c [REDUCER PROPAGATOR] Not binary clauses: 234944
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 1205008
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 49013
c [REDUCER OCC-ELIMINATION] Number of literals removed: 49013
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 83502
c [REDUCER VIVIFICATION] Number of clauses removed: 19679
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 73342
c [REDUCER OCC-ELIMINATION] Number of literals removed: 73342
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 93406
c [REDUCER VIVIFICATION] Number of clauses removed: 21970
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 93850
c [REDUCER OCC-ELIMINATION] Number of literals removed: 93850
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 94328
c [REDUCER VIVIFICATION] Number of clauses removed: 22133
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 113670
c [REDUCER OCC-ELIMINATION] Number of literals removed: 113670
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 94494
c [REDUCER VIVIFICATION] Number of clauses removed: 22174
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 133403
c [REDUCER OCC-ELIMINATION] Number of literals removed: 133403
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 94514
c [REDUCER VIVIFICATION] Number of clauses removed: 22174
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 606653
c [PREPROCESSED INPUT] Number of clauses: 842665
c [PREPROCESSED INPUT] Number of binary clauses: 21826
c [PREPROCESSED INPUT] Number of ternary clauses: 90897
c [PREPROCESSED INPUT] Number of clauses larger than 3: 120973
c [PREPROCESSED INPUT] Number of literals: 1732292
c
c
c [PROJECTED VARIABLES] list: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 474 475 476 477 478 479 480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 500 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 548 549 550 551 552 553 554 555 556 557 558 559 560 561 562 563 564 565 566 567 568 569 570 571 572 573 574 575 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595 596 597 598 599 600 601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 622 623 624 625 626 627 628 629 630 631 632 633 634 635 636 637 638 639 640 641 642 643 644 645 646 647 648 649 650 651 652 653 654 655 656 657 658 659 660 661 662 663 664 665 666 667 668 669 670 671 672 673 674 675 676 677 678 679 680 681 682 683 684 685 686 687 688 689 690 691 692 693 694 695 696 697 698 699 700 701 702 703 704 705 706 707 708 709 710 711 712 713 714 715 716 717 718 719 720 721 722 723 724 725 726 727 728 729 
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
c countpure = 100390
c countpure = 201176
c countpure = 300005
c countpure = 400004
c countpure = 500090
c countpure = 600172
c countpure = 700072
c countpure = 800016
c countpure = 900303
c countpure = 1000967
c countpure = 1100547
c countpure = 1200318
c countpure = 1300765
c countpure = 1401044
c countpure = 1500513
c countpure = 1600239
c countpure = 1701286
c countpure = 1800955
c countpure = 1900084
c countpure = 2000383
c countpure = 2100042
c countpure = 2200434
c countpure = 2300063
c countpure = 2400542
c countpure = 2500200
c countpure = 2601077
c countpure = 2700296
c countpure = 2800003
c countpure = 2900011
c |       95.71|       24291|       10743|  1259630296|       28111|     5214.47|        8256|           1|
c countpure = 3000285
c countpure = 3100241
c countpure = 3200056
c countpure = 3301769
c countpure = 3401066
c countpure = 3500266
c countpure = 3600554
c countpure = 3700022
c countpure = 3800599
c countpure = 3900875
c countpure = 4000213
c countpure = 4100250
c countpure = 4200013
c countpure = 4300002
c countpure = 4400247
c countpure = 4500040
c countpure = 4600168
c countpure = 4700198
c countpure = 4800338
c countpure = 4900008
c countpure = 5001028
c countpure = 5100339
c countpure = 5201472
c countpure = 5301326
c countpure = 5400738
c countpure = 5500403
c countpure = 5600801
c countpure = 5700643
c countpure = 5800015
c countpure = 5901520
c countpure = 6000930
c countpure = 6100217
c |      159.89|       69540|       19753|  2022331761|       76537|     5214.47|       16451|           1|
c countpure = 6200541
c countpure = 6300434
c countpure = 6400045
c countpure = 6500048
c countpure = 6600535
c countpure = 6700050
c countpure = 6800581
c countpure = 6900281
c countpure = 7000044
c countpure = 7101020
c countpure = 7200289
c countpure = 7300001
c countpure = 7400007
c countpure = 7501211
c countpure = 7600853
c countpure = 7700813
c countpure = 7800091
c countpure = 7900477
c countpure = 8000048
c countpure = 8102011
c countpure = 8200653
c countpure = 8300687
c countpure = 8400147
c countpure = 8500554
c countpure = 8600046
c countpure = 8700010
c countpure = 8800012
c countpure = 8900335
c countpure = 9000234
c countpure = 9100942
c countpure = 9200955
c countpure = 9300353
c countpure = 9400020
c |      227.41|      122240|       28233|  2883002460|      132088|     5214.47|       24623|           1|
c countpure = 9501013
c countpure = 9600039
c countpure = 9700313
c countpure = 9800327
c countpure = 9900280
c countpure = 10000409
c countpure = 10100451
c countpure = 10200026
c countpure = 10300128
c countpure = 10400491
c countpure = 10500030
c countpure = 10600722
c countpure = 10700137
c countpure = 10800103
c countpure = 10901647
c countpure = 11000613
c countpure = 11100022
c countpure = 11201245
c countpure = 11300180
c countpure = 11400274
c countpure = 11500018
c countpure = 11600107
c countpure = 11700105
c countpure = 11800050
c countpure = 11900810
c countpure = 12000465
c countpure = 12101953
c countpure = 12200219
c countpure = 12300023
c |      334.40|      147560|       36617|  4287309434|      158902|     5214.47|       32809|           1|
c Allocate a new page for the cache 504682
c countpure = 12400033
c countpure = 12500111
c countpure = 12600205
c countpure = 12700141
c countpure = 12800402
c countpure = 12900042
c countpure = 13000675
c countpure = 13100471
c countpure = 13200894
c countpure = 13300029
c countpure = 13400419
c countpure = 13500341
c countpure = 13600056
c Allocate a new page for the cache 38988
c countpure = 13700011
c countpure = 13800775
c countpure = 13900194
c countpure = 14000015
c countpure = 14100353
c countpure = 14200097
c countpure = 14301317
c countpure = 14400700
c Allocate a new page for the cache 429439
c countpure = 14500146
c countpure = 14600354
c countpure = 14700225
c countpure = 14800210
c countpure = 14900112
c countpure = 15000310
c countpure = 15100740
c countpure = 15200754
c countpure = 15300032
c countpure = 15400066
c |      464.60|      172560|       45002|  5888646388|      185344|     6750.48|       41001|           1|
c countpure = 15500526
c Allocate a new page for the cache 78289
c countpure = 15600006
c countpure = 15701559
c countpure = 15800127
c countpure = 15900897
c countpure = 16000942
c countpure = 16101275
c countpure = 16201177
c countpure = 16300055
c countpure = 16400362
c countpure = 16500237
c countpure = 16600090
c countpure = 16700157
c Allocate a new page for the cache 259371
c countpure = 16800323
c countpure = 16900029
c countpure = 17000060
c countpure = 17100817
c countpure = 17200368
c countpure = 17300082
c countpure = 17400749
c countpure = 17500363
c countpure = 17600030
c countpure = 17700115
c countpure = 17800454
c countpure = 17900232
c countpure = 18000095
c Allocate a new page for the cache 176071
c countpure = 18100184
c countpure = 18200078
c |      551.43|      212816|       53439|  7051095926|      228168|     8286.49|       49189|           1|
c countpure = 18300444
c countpure = 18400063
c countpure = 18500027
c countpure = 18600450
c countpure = 18700249
c countpure = 18800617
c countpure = 18900655
c countpure = 19000311
c countpure = 19100997
c Allocate a new page for the cache 330859
c countpure = 19201103
c countpure = 19300003
c countpure = 19400210
c countpure = 19500008
c countpure = 19600173
c countpure = 19700473
c countpure = 19800034
c countpure = 19900020
c countpure = 20000918
c countpure = 20100024
c Allocate a new page for the cache 241146
c countpure = 20200335
c countpure = 20301218
c countpure = 20401015
c countpure = 20500336
c countpure = 20601142
c countpure = 20700274
c countpure = 20800004
c countpure = 20900031
c countpure = 21000110
c |      668.33|      246204|       61839|  8542273989|      263423|     9310.50|       57392|           1|
c countpure = 21100353
c Allocate a new page for the cache 307476
c countpure = 21202615
c countpure = 21301235
c countpure = 21401804
c countpure = 21500522
c countpure = 21600178
c countpure = 21700122
c countpure = 21800315
c countpure = 21900846
c countpure = 22000222
c Allocate a new page for the cache 55699
c countpure = 22100253
c countpure = 22200213
c countpure = 22300201
c countpure = 22400428
c countpure = 22500062
c countpure = 22600206
c countpure = 22700077
c --------------------------------------------------------------------------------------------------------
c
c [1m[31mStatistics [0m
c [33mCompilation Information[0m
c Number of recursive call: 124029
c Number of split formula: 274578
c Number of decision: 62014
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 256678
c Number of negative hit: 66614
c
c
c Final time: 776.90
c
s SATISFIABLE
c s type pmc
c s log10-estimate 4.42196568822511228489105206416153909319805037297211
c s exact arb int 26422
