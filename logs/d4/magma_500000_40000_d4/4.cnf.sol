c [SCRIPT] Command line: /home/mikolas/mc/magma/4.cnf
c [SCRIPT] Options: 
c [CONSTRUCTOR] Problem: /home/mikolas/mc/magma/4.cnf cnf
c [PASER]  Model Counting problem
c [INITIAL INPUT] [4m[32mStatistics about the input formula[0m
c [INITIAL INPUT] Number of variables: 5304
c [INITIAL INPUT] Number of clauses: 14272
c [INITIAL INPUT] Number of binary clauses: 1204
c [INITIAL INPUT] Number of ternary clauses: 12380
c [INITIAL INPUT] Number of clauses larger than 3: 688
c [INITIAL INPUT] Number of literals: 42636
c
c [METHOD MANAGER] Constructor: counting
c [PREPROC] Method: sharp-equiv cnf
c [CONSTRUCTOR] Preproc solver: minisat cnf
c [PREPROC #EQUIV] Start
c [PREPROC #EQUIV] Bipartition is running ...
c [CONSTRUCTOR] Solver: Glucose
c [BACKBONE] Time to compute the backbone: 0.007673
c [BACKBONE] Number of SAT calls: 19
c [BACKBONE] Backbone size: 6
c [BACKBONE] Number of units detected by calling the solver: 3
c [CONSTRUCTOR] Solver: Glucose
c [DAC] #Equivalence classes: 1
c [DAC] #Equivalences: 1
c [DAC] #And gates: 15
c [DAC] #XOR gates: 0
c [BIPARTITION] #Projected: 64
c [BIPARTITION] #Protected: 0
c [BIPARTITION] #Gates: 19
c [BIPARTITION] #Model considered for preproc with models: 15
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
c [BIPARTITION] #Input variables computed: 45
c [BIPARTITION] #Input variables that are undertermined: 0
c [BIPARTITION] Time needed to compute the partition: 0.051993
c [PREPROC #EQUIV] ... done
c [ELIMINATOR GATES] Constructor
c [ELIMINATOR] Constructor
c [REDUCER MAKE METHOD] Method: combinaison
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 629520
c [REDUCER PROPAGATOR] Binary clauses: 1204
c [REDUCER PROPAGATOR] Not binary clauses: 13068
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 40228
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 574
c [REDUCER OCC-ELIMINATION] Number of literals removed: 574
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 11286
c [REDUCER VIVIFICATION] Number of clauses removed: 5647
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 940
c [REDUCER OCC-ELIMINATION] Number of literals removed: 940
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 16745
c [REDUCER VIVIFICATION] Number of clauses removed: 8379
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1292
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1292
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 19204
c [REDUCER VIVIFICATION] Number of clauses removed: 9608
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1632
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1632
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 19922
c [REDUCER VIVIFICATION] Number of clauses removed: 9968
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1968
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1968
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 20028
c [REDUCER VIVIFICATION] Number of clauses removed: 10019
c [ELIMINATOR] #elim-gate = 4	#elim-resolution = 4696
c [REDUCER PROPAGATOR] Construtor
c [REDUCER PROPAGATOR] Memory needed: 224152
c [REDUCER PROPAGATOR] Binary clauses: 1062
c [REDUCER PROPAGATOR] Not binary clauses: 2436
c [REDUCER PROPAGATOR] Number of literals in not binary clauses: 10086
c [REDUCER Combinaison] Number of iterations: 5
c [REDUCER Combinaison] Verbose: 1
c [REDUCER Combinaison] #Iteration: 0
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 659
c [REDUCER OCC-ELIMINATION] Number of literals removed: 659
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 357
c [REDUCER VIVIFICATION] Number of clauses removed: 51
c [REDUCER Combinaison] #Iteration: 1
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1025
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1025
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 381
c [REDUCER VIVIFICATION] Number of clauses removed: 54
c [REDUCER Combinaison] #Iteration: 2
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1377
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1377
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 385
c [REDUCER VIVIFICATION] Number of clauses removed: 54
c [REDUCER Combinaison] #Iteration: 3
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 1725
c [REDUCER OCC-ELIMINATION] Number of literals removed: 1725
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 386
c [REDUCER VIVIFICATION] Number of clauses removed: 54
c [REDUCER Combinaison] #Iteration: 4
c [REDUCER OCC-ELIMINATION] Number of iterations: 1
c [REDUCER OCC-ELIMINATION] Verbose: 1
c [REDUCER OCC-ELIMINATION] #Iteration: 0
c [REDUCER OCC-ELIMINATION] #literal removed: 2072
c [REDUCER OCC-ELIMINATION] Number of literals removed: 2072
c [REDUCER VIVIFICATION] Number of iterations: 1
c [REDUCER VIVIFICATION] Verbose: 1
c [REDUCER VIVIFICATION] #Iteration: 0
c [REDUCER VIVIFICATION] Number of literals removed: 386
c [REDUCER VIVIFICATION] Number of clauses removed: 54
c [MAIN PREPROCESSED INPUT] [4m[32mStatistics about the preprocessed formula[0m
c [PREPROCESSED INPUT] Number of variables: 5304
c [PREPROCESSED INPUT] Number of clauses: 8144
c [PREPROCESSED INPUT] Number of binary clauses: 1064
c [PREPROCESSED INPUT] Number of ternary clauses: 655
c [PREPROCESSED INPUT] Number of clauses larger than 3: 1725
c [PREPROCESSED INPUT] Number of literals: 16430
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
c |        0.17|       10566|        8208|     1218763|        9197|     4141.42|        8199|           1|
c countpure = 100004
c |        0.34|       22714|       16405|     2438500|       19967|     4141.42|       16391|           1|
c countpure = 200001
c |        0.51|       32223|       24616|     3675821|       28344|     4141.42|       24583|           1|
c |        0.68|       43295|       32812|     4877069|       38141|     4141.42|       32773|           1|
c countpure = 300004
c |        0.87|       57437|       41007|     6174424|       51675|     4141.42|       40965|           1|
c countpure = 400013
c |        1.04|       68771|       49200|     7385227|       61917|     4141.42|       49156|           1|
c countpure = 500002
c |        1.23|       78234|       57398|     8715449|       70063|     4141.42|       57350|           1|
c countpure = 600003
c |        1.42|       89666|       65593|     9995141|       79825|     4141.42|       65543|           1|
c countpure = 700005
c |        1.61|      102804|       73787|    11308938|       92078|     4141.42|       73734|           1|
c |        1.78|      115192|       81981|    12426199|      102804|     4141.42|       81927|           1|
c countpure = 800006
c |        1.98|      126635|       90174|    13818396|      112633|     4141.81|       90119|           1|
c countpure = 900026
c |        2.16|      139506|       98365|    15142940|      123974|     4142.45|       98310|           1|
c countpure = 1000011
c |        2.36|      151952|      106556|    16433208|      134166|     4143.10|      106501|           1|
c |        2.52|      163634|      114759|    17550973|      143585|     4143.74|      114695|           1|
c countpure = 1100007
c |        2.68|      176205|      122956|    18774243|      154113|     4144.39|      122889|           1|
c countpure = 1200003
c |        2.85|      189148|      131154|    19963614|      165193|     4145.03|      131080|           1|
c countpure = 1300003
c |        3.02|      201810|      139345|    21224469|      175387|     4145.68|      139271|           1|
c countpure = 1400003
c |        3.21|      215538|      147538|    22564215|      186997|     4146.32|      147464|           1|
c countpure = 1500002
c |        3.38|      228570|      155730|    23767124|      197781|     4146.84|      155655|           1|
c |        3.55|      241303|      163923|    25030460|      208058|     4147.48|      163848|           1|
c countpure = 1600004
c |        3.74|      253317|      172116|    26340330|      218114|     4148.13|      172040|           1|
c countpure = 1700003
c |        3.93|      265587|      180308|    27681385|      227839|     4148.77|      180232|           1|
c countpure = 1800008
c |        4.14|      277906|      188501|    29193264|      237759|     4149.42|      188424|           1|
c countpure = 1900005
c |        4.35|      290022|      196695|    30704616|      248264|     4150.06|      196616|           1|
c countpure = 2000014
c |        4.56|      302731|      204888|    32205644|      259343|     4150.71|      204809|           1|
c countpure = 2100016
c countpure = 2200002
c |        4.78|      315720|      213081|    33690475|      271057|     4151.35|      213001|           1|
c countpure = 2300010
c |        5.00|      330437|      221270|    35290023|      284969|     4151.87|      221190|           1|
c countpure = 2400011
c |        5.20|      344497|      229462|    36666703|      297516|     4152.51|      229382|           1|
c countpure = 2500007
c |        5.38|      359744|      237655|    37952841|      311257|     4153.16|      237575|           1|
c countpure = 2600004
c |        5.57|      373735|      245847|    39350706|      323488|     4153.80|      245767|           1|
c countpure = 2700025
c |        5.77|      388318|      254039|    40737877|      336390|     4154.45|      253959|           1|
c countpure = 2800024
c |        5.97|      402843|      262230|    42224782|      349082|     4155.09|      262150|           1|
c countpure = 2900026
c |        6.20|      413161|      270426|    43821373|      357690|     4155.73|      270343|           1|
c countpure = 3000018
c |        6.43|      422061|      278620|    45536490|      364097|     4156.38|      278535|           1|
c countpure = 3100011
c |        6.62|      432923|      286814|    46948452|      372412|     4157.02|      286727|           1|
c countpure = 3200003
c |        6.82|      444004|      295006|    48326678|      381459|     4157.67|      294919|           1|
c countpure = 3300013
c |        7.00|      453675|      303202|    49563462|      388992|     4158.31|      303111|           1|
c countpure = 3400005
c |        7.20|      465601|      311392|    50884437|      399059|     4158.96|      311301|           1|
c |        7.38|      478972|      319587|    52119314|      411085|     4159.60|      319495|           1|
c countpure = 3500002
c |        7.58|      494200|      327778|    53462125|      425574|     4160.12|      327686|           1|
c countpure = 3600008
c |        7.78|      508592|      335967|    54763417|      438220|     4160.76|      335875|           1|
c countpure = 3700005
c |        7.97|      521950|      344164|    56053401|      449723|     4161.41|      344072|           1|
c countpure = 3800039
c |        8.17|      536784|      352358|    57420591|      463321|     4162.05|      352262|           1|
c |        8.36|      549228|      360555|    58714881|      473966|     4162.70|      360459|           1|
c countpure = 3900002
c |        8.54|      561889|      368745|    59913357|      485523|     4163.34|      368648|           1|
c countpure = 4000002
c |        8.75|      572212|      376939|    61298636|      494008|     4163.98|      376840|           1|
c countpure = 4100002
c |        8.95|      584930|      385131|    62657058|      505556|     4164.63|      385031|           1|
c countpure = 4200002
c |        9.14|      598081|      393324|    63992377|      517797|     4165.27|      393224|           1|
c countpure = 4300005
c |        9.33|      610330|      401519|    65234615|      528863|     4165.92|      401417|           1|
c countpure = 4400010
c |        9.54|      622898|      409711|    66695808|      540233|     4166.56|      409608|           1|
c |        9.76|      635312|      417907|    68076467|      551112|     4167.21|      417802|           1|
c countpure = 4500003
c |        9.95|      649937|      426098|    69384023|      564706|     4167.85|      425993|           1|
c countpure = 4600002
c |       10.17|      663809|      434291|    70854753|      577200|     4168.50|      434186|           1|
c countpure = 4700001
c |       10.39|      678275|      442480|    72334867|      590731|     4169.14|      442375|           1|
c countpure = 4800010
c |       10.59|      692436|      450676|    73706761|      603988|     4169.79|      450570|           1|
c countpure = 4900002
c |       10.81|      705967|      458866|    75093791|      616271|     4170.43|      458760|           1|
c countpure = 5000007
c |       11.02|      721506|      467060|    76487083|      631134|     4171.07|      466953|           1|
c countpure = 5100002
c |       11.25|      732193|      475251|    78072627|      640461|     4171.72|      475143|           1|
c countpure = 5200005
c |       11.47|      744026|      483444|    79513532|      650788|     4172.36|      483335|           1|
c countpure = 5300011
c |       11.68|      758964|      491636|    80832599|      665108|     4173.01|      491527|           1|
c |       11.87|      773442|      499829|    82029895|      678611|     4173.65|      499719|           1|
c countpure = 5400005
c |       12.07|      786929|      508025|    83272061|      691088|     4174.30|      507914|           1|
c countpure = 5500004
c |       12.27|      798557|      516217|    84594534|      701326|     4174.94|      516104|           1|
c countpure = 5600006
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |       12.47|      809987|      524410|    85918024|      711366|     4175.59|      524297|           1|
c countpure = 5700001
c |       12.67|      822303|      532602|    87182784|      722238|     4176.23|      532487|           1|
c countpure = 5800010
c |       12.85|      835281|      540796|    88329148|      733446|     4176.88|      540679|           1|
c |       13.03|      849836|      548990|    89545231|      746608|     4177.52|      548873|           1|
c countpure = 5900005
c |       13.23|      863085|      557184|    90809198|      757892|     4178.16|      557066|           1|
c countpure = 6000001
c |       13.41|      876391|      565373|    92006403|      769766|     4178.81|      565255|           1|
c countpure = 6100002
c |       13.61|      888390|      573564|    93330732|      780140|     4179.45|      573445|           1|
c countpure = 6200015
c |       13.83|      901424|      581758|    94698084|      792064|     4180.10|      581639|           1|
c countpure = 6300014
c |       14.06|      912389|      589953|    96191365|      801498|     4180.74|      589833|           1|
c countpure = 6400012
c |       14.29|      925982|      598143|    97697999|      813914|     4181.39|      598023|           1|
c countpure = 6500004
c |       14.52|      938454|      606336|    99207444|      824899|     4182.03|      606216|           1|
c countpure = 6600023
c |       14.74|      952041|      614526|   100614369|      837178|     4182.68|      614406|           1|
c countpure = 6700010
c |       14.97|      966304|      622721|   102151751|      850668|     4183.32|      622601|           1|
c countpure = 6800019
c |       15.21|      979460|      630914|   103732821|      862876|     4183.96|      630794|           1|
c countpure = 6900035
c |       15.46|      990557|      639107|   105391039|      872570|     4184.61|      638987|           1|
c countpure = 7000004
c |       15.73|     1002810|      647297|   107214157|      883965|     4185.25|      647177|           1|
c countpure = 7100001
c |       15.98|     1014482|      655490|   108873945|      893847|     4185.90|      655370|           1|
c countpure = 7200011
c |       16.22|     1025513|      663683|   110521064|      903059|     4186.54|      663562|           1|
c countpure = 7300001
c |       16.45|     1036830|      671876|   112073437|      912338|     4187.19|      671755|           1|
c countpure = 7400003
c |       16.68|     1048426|      680068|   113598143|      922036|     4187.83|      679947|           1|
c countpure = 7500001
c |       16.93|     1060795|      688258|   115199707|      933402|     4188.48|      688137|           1|
c countpure = 7600001
c |       17.14|     1074697|      696449|   116570592|      946049|     4189.12|      696328|           1|
c countpure = 7700016
c |       17.37|     1088033|      704642|   118081530|      958005|     4189.77|      704521|           1|
c countpure = 7800012
c |       17.59|     1101934|      712833|   119439612|      970876|     4190.54|      712711|           1|
c countpure = 7900002
c |       17.79|     1117645|      721024|   120629676|      985777|     4191.18|      720902|           1|
c countpure = 8000002
c |       18.02|     1129211|      729219|   122095227|      995831|     4191.83|      729095|           1|
c countpure = 8100017
c |       18.27|     1139890|      737411|   123724416|     1004877|     4192.47|      737287|           1|
c countpure = 8200017
c |       18.52|     1152401|      745602|   125406018|     1016025|     4193.12|      745478|           1|
c countpure = 8300002
c |       18.78|     1163776|      753797|   127193734|     1025956|     4193.76|      753671|           1|
c countpure = 8400010
c |       19.03|     1175847|      761990|   128915850|     1036504|     4194.41|      761864|           1|
c countpure = 8500002
c countpure = 8600007
c |       19.28|     1185971|      770180|   130555938|     1044855|     4195.05|      770053|           1|
c countpure = 8700019
c |       19.55|     1197210|      778374|   132496126|     1054297|     4195.70|      778245|           1|
c countpure = 8800001
c |       19.81|     1207852|      786570|   134400087|     1063072|     4196.34|      786440|           1|
c countpure = 8900022
c countpure = 9000023
c |       20.07|     1219146|      794759|   136241368|     1072658|     4196.98|      794629|           1|
c countpure = 9100008
c |       20.33|     1229376|      802956|   138128030|     1080802|     4197.63|      802824|           1|
c countpure = 9200018
c |       20.57|     1239218|      811151|   139765984|     1088161|     4198.40|      811014|           1|
c countpure = 9300004
c |       20.80|     1250865|      819345|   141282310|     1096700|     4199.05|      819208|           1|
c countpure = 9400025
c |       21.04|     1261775|      827535|   142898543|     1104259|     4199.69|      827398|           1|
c countpure = 9500019
c |       21.30|     1275884|      835727|   144633151|     1117092|     4200.34|      835590|           1|
c countpure = 9600002
c |       21.52|     1290073|      843918|   146083655|     1130420|     4200.98|      843781|           1|
c countpure = 9700003
c |       21.73|     1302392|      852116|   147512404|     1140524|     4201.62|      851979|           1|
c countpure = 9800004
c |       21.93|     1316850|      860307|   148713454|     1153448|     4202.27|      860170|           1|
c countpure = 9900007
c |       22.15|     1331575|      868499|   150130680|     1167764|     4202.91|      868362|           1|
c countpure = 10000007
c |       22.36|     1346080|      876691|   151526127|     1181109|     4203.56|      876554|           1|
c countpure = 10100003
c |       22.57|     1361554|      884881|   152932228|     1195946|     4204.20|      884744|           1|
c countpure = 10200001
c countpure = 10300004
c |       22.83|     1373965|      893074|   154597175|     1207321|     4204.85|      892937|           1|
c countpure = 10400022
c |       23.08|     1384900|      901267|   156316494|     1216564|     4205.62|      901130|           1|
c countpure = 10500018
c |       23.35|     1393551|      909455|   158167851|     1223547|     4206.27|      909318|           1|
c countpure = 10600012
c |       23.57|     1409116|      917649|   159622211|     1238252|     4206.91|      917512|           1|
c countpure = 10700004
c |       23.77|     1425365|      925841|   160963931|     1253221|     4207.55|      925704|           1|
c countpure = 10800006
c |       23.98|     1439991|      934031|   162357318|     1266601|     4208.20|      933894|           1|
c countpure = 10900005
c |       24.19|     1453475|      942224|   163718685|     1278467|     4208.84|      942087|           1|
c countpure = 11000007
c |       24.41|     1468833|      950419|   165132531|     1292755|     4209.49|      950282|           1|
c countpure = 11100008
c |       24.61|     1481080|      958607|   166431526|     1302899|     4210.26|      958470|           1|
c countpure = 11200001
c |       24.82|     1492481|      966799|   167836823|     1312186|     4210.91|      966662|           1|
c countpure = 11300004
c |       25.03|     1505364|      974992|   169256555|     1323537|     4211.55|      974855|           1|
c countpure = 11400010
c countpure = 11500021
c |       25.24|     1519400|      983184|   170642914|     1336274|     4212.20|      983047|           1|
c countpure = 11600001
c |       25.46|     1533232|      991378|   172075199|     1348789|     4212.84|      991241|           1|
c countpure = 11700021
c |       25.70|     1548230|      999567|   173690992|     1363264|     4213.62|      999430|           1|
c countpure = 11800008
c |       25.96|     1560711|     1007762|   175457237|     1374713|     4214.26|     1007625|           1|
c countpure = 11900009
c countpure = 12000001
c |       26.25|     1576753|     1015953|   177331904|     1390859|     4214.91|     1015816|           1|
c countpure = 12100002
c |       26.53|     1590759|     1024143|   179213509|     1404347|     4215.55|     1024006|           1|
c countpure = 12200019
c |       26.82|     1604261|     1032335|   181129629|     1417037|     4216.20|     1032198|           1|
c countpure = 12300005
c countpure = 12400001
c |       27.07|     1618882|     1040530|   182766692|     1430667|     4216.97|     1040393|           1|
c countpure = 12500009
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |       27.33|     1634654|     1048723|   184465244|     1445814|     4217.61|     1048586|           1|
c countpure = 12600003
c |       27.59|     1650557|     1056912|   186160071|     1461352|     4218.26|     1056775|           1|
c countpure = 12700001
c |       27.84|     1666062|     1065104|   187719828|     1476425|     4218.90|     1064967|           1|
c countpure = 12800001
c countpure = 12900013
c |       28.09|     1682260|     1073298|   189390819|     1492452|     4219.68|     1073161|           1|
c countpure = 13000008
c |       28.35|     1700499|     1081490|   191095115|     1511238|     4220.32|     1081353|           1|
c countpure = 13100001
c |       28.60|     1718106|     1089679|   192686857|     1529061|     4220.96|     1089542|           1|
c countpure = 13200030
c countpure = 13300005
c |       28.86|     1735008|     1097873|   194392390|     1546241|     4221.74|     1097736|           1|
c countpure = 13400018
c |       29.09|     1749949|     1106069|   195959786|     1560393|     4222.38|     1105932|           1|
c countpure = 13500003
c |       29.31|     1764556|     1114258|   197395745|     1573855|     4223.03|     1114121|           1|
c countpure = 13600002
c |       29.55|     1779638|     1122451|   198908212|     1588133|     4223.67|     1122313|           1|
c countpure = 13700001
c |       29.76|     1796295|     1130642|   200234679|     1603984|     4224.45|     1130504|           1|
c countpure = 13800019
c |       29.99|     1814962|     1138833|   201678296|     1622477|     4225.09|     1138695|           1|
c countpure = 13900001
c |       30.21|     1831209|     1147026|   203145791|     1637861|     4225.73|     1146888|           1|
c countpure = 14000005
c countpure = 14100020
c |       30.46|     1849147|     1155218|   204736407|     1655545|     4226.51|     1155080|           1|
c countpure = 14200019
c |       30.69|     1864818|     1163410|   206304999|     1670531|     4227.15|     1163272|           1|
c countpure = 14300002
c |       30.94|     1878405|     1171602|   207903698|     1682746|     4227.80|     1171464|           1|
c countpure = 14400010
c |       31.19|     1895398|     1179794|   209471472|     1699379|     4228.44|     1179656|           1|
c countpure = 14500002
c |       31.44|     1910646|     1187987|   211067263|     1713657|     4229.22|     1187849|           1|
c countpure = 14600001
c |       31.68|     1923835|     1196176|   212556578|     1725264|     4229.86|     1196038|           1|
c countpure = 14700006
c countpure = 14800037
c |       31.92|     1936943|     1204370|   214199412|     1737059|     4230.51|     1204232|           1|
c countpure = 14900008
c |       32.16|     1952113|     1212562|   215787016|     1751438|     4231.15|     1212424|           1|
c countpure = 15000030
c |       32.40|     1965211|     1220754|   217407993|     1763006|     4231.93|     1220616|           1|
c countpure = 15100009
c |       32.65|     1979121|     1228948|   219063400|     1775477|     4232.57|     1228809|           1|
c countpure = 15200011
c countpure = 15300004
c |       32.93|     1992281|     1237138|   220910194|     1787392|     4233.21|     1236999|           1|
c countpure = 15400026
c |       33.23|     2003083|     1245329|   222839037|     1796337|     4233.99|     1245190|           1|
c countpure = 15500006
c |       33.50|     2013471|     1253522|   224614953|     1804317|     4234.64|     1253383|           1|
c countpure = 15600005
c countpure = 15700002
c |       33.76|     2028311|     1261714|   226210966|     1818254|     4235.28|     1261575|           1|
c countpure = 15800007
c |       34.01|     2043332|     1269903|   227760074|     1832482|     4236.05|     1269764|           1|
c countpure = 15900002
c |       34.25|     2060134|     1278096|   229304743|     1849357|     4236.70|     1277957|           1|
c countpure = 16000001
c |       34.53|     2074527|     1286290|   231143846|     1863107|     4237.34|     1286151|           1|
c countpure = 16100010
c countpure = 16200004
c |       34.80|     2087386|     1294482|   232877472|     1874969|     4238.12|     1294343|           1|
c countpure = 16300026
c |       35.05|     2103535|     1302675|   234424708|     1890590|     4238.76|     1302536|           1|
c countpure = 16400003
c |       35.27|     2120280|     1310864|   235806789|     1906006|     4239.54|     1310725|           1|
c countpure = 16500018
c |       35.50|     2133956|     1319057|   237314334|     1918274|     4240.18|     1318918|           1|
c countpure = 16600004
c |       35.73|     2148232|     1327250|   238764587|     1931588|     4240.83|     1327110|           1|
c countpure = 16700002
c |       35.97|     2163793|     1335444|   240415139|     1945933|     4241.58|     1335304|           1|
c countpure = 16800009
c |       36.17|     2176098|     1343636|   241773463|     1956364|     4241.58|     1343496|           1|
c countpure = 16900002
c |       36.35|     2189088|     1351829|   242942685|     1967535|     4241.58|     1351689|           1|
c |       36.53|     2205520|     1360018|   244036793|     1982993|     4241.58|     1359878|           1|
c countpure = 17000001
c |       36.74|     2220230|     1368214|   245465393|     1996367|     4241.58|     1368074|           1|
c countpure = 17100004
c |       36.97|     2233924|     1376402|   246917672|     2008905|     4241.58|     1376262|           1|
c countpure = 17200002
c |       37.19|     2247740|     1384597|   248325120|     2021526|     4241.84|     1384457|           1|
c countpure = 17300002
c |       37.41|     2261605|     1392789|   249795967|     2034338|     4242.48|     1392649|           1|
c countpure = 17400005
c |       37.65|     2275345|     1400980|   251410298|     2047232|     4243.26|     1400840|           1|
c countpure = 17500009
c |       37.89|     2286944|     1409173|   252921245|     2057231|     4243.90|     1409032|           1|
c countpure = 17600001
c |       38.14|     2298521|     1417365|   254598400|     2067245|     4244.55|     1417224|           1|
c countpure = 17700006
c |       38.33|     2310816|     1425556|   255776958|     2077144|     4245.19|     1425415|           1|
c |       38.53|     2323587|     1433746|   257005711|     2087543|     4245.96|     1433605|           1|
c countpure = 17800003
c |       38.75|     2336479|     1441939|   258359932|     2098223|     4246.61|     1441798|           1|
c countpure = 17900001
c |       38.97|     2349387|     1450130|   259736899|     2108744|     4247.38|     1449989|           1|
c countpure = 18000004
c |       39.24|     2358435|     1458323|   261556056|     2116025|     4248.03|     1458182|           1|
c countpure = 18100001
c |       39.47|     2370091|     1466515|   263090978|     2125751|     4248.67|     1466373|           1|
c countpure = 18200001
c |       39.68|     2381922|     1474706|   264452111|     2135775|     4249.32|     1474564|           1|
c countpure = 18300008
c |       39.90|     2396550|     1482902|   265917178|     2148991|     4250.09|     1482760|           1|
c countpure = 18400010
c |       40.13|     2409822|     1491094|   267500182|     2161256|     4250.73|     1490952|           1|
c countpure = 18500004
c |       40.35|     2423951|     1499287|   269048832|     2173879|     4251.51|     1499145|           1|
c countpure = 18600002
c |       40.57|     2439261|     1507480|   270534884|     2188215|     4252.15|     1507338|           1|
c countpure = 18700025
c |       40.79|     2453071|     1515669|   272058433|     2200496|     4252.93|     1515527|           1|
c countpure = 18800002
c |       41.01|     2467436|     1523860|   273476445|     2213331|     4253.57|     1523718|           1|
c countpure = 18900002
c |       41.22|     2479905|     1532050|   274827657|     2223661|     4254.21|     1531908|           1|
c |       41.44|     2491068|     1540244|   276247021|     2232834|     4254.99|     1540102|           1|
c countpure = 19000007
c countpure = 19100001
c |       41.66|     2505547|     1548435|   277740783|     2246300|     4255.63|     1548293|           1|
c countpure = 19200002
c |       41.89|     2520427|     1556628|   279320551|     2259521|     4256.41|     1556486|           1|
c |       42.11|     2533876|     1564820|   280820753|     2271412|     4257.05|     1564678|           1|
c countpure = 19300004
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |       42.33|     2547149|     1573013|   282219917|     2282523|     4257.70|     1572871|           1|
c countpure = 19400002
c |       42.54|     2557718|     1581202|   283601705|     2290826|     4258.47|     1581060|           1|
c countpure = 19500001
c |       42.79|     2569659|     1589397|   285258248|     2300859|     4259.11|     1589254|           1|
c countpure = 19600008
c |       43.03|     2583406|     1597589|   286811476|     2313099|     4259.89|     1597446|           1|
c countpure = 19700010
c |       43.25|     2596457|     1605783|   288329318|     2324250|     4260.53|     1605640|           1|
c |       43.48|     2608713|     1613973|   289766397|     2334648|     4261.30|     1613830|           1|
c countpure = 19800003
c |       43.70|     2622294|     1622163|   291199775|     2346366|     4261.95|     1622020|           1|
c countpure = 19900007
c |       43.94|     2635533|     1630358|   292752268|     2357902|     4262.59|     1630215|           1|
c countpure = 20000004
c |       44.19|     2648275|     1638552|   294412853|     2369437|     4263.37|     1638409|           1|
c countpure = 20100007
c |       44.44|     2660698|     1646744|   296021547|     2380213|     4264.01|     1646600|           1|
c countpure = 20200002
c |       44.68|     2674216|     1654938|   297573612|     2392002|     4264.66|     1654793|           1|
c countpure = 20300003
c |       44.91|     2688173|     1663128|   299092688|     2404819|     4265.43|     1662983|           1|
c countpure = 20400018
c |       45.16|     2700164|     1671321|   300831933|     2414974|     4266.60|     1671176|           1|
c countpure = 20500003
c countpure = 20600032
c |       45.41|     2711637|     1679512|   302511639|     2425051|     4266.99|     1679367|           1|
c countpure = 20700003
c |       45.66|     2725222|     1687704|   304342723|     2437008|     4267.76|     1687559|           1|
c countpure = 20800010
c |       45.89|     2737506|     1695896|   305923790|     2447670|     4268.41|     1695751|           1|
c countpure = 20900004
c |       46.11|     2750455|     1704088|   307391714|     2458764|     4269.18|     1703943|           1|
c countpure = 21000002
c |       46.33|     2765624|     1712282|   308878609|     2472655|     4269.82|     1712137|           1|
c countpure = 21100002
c |       46.54|     2780517|     1720471|   310287150|     2486489|     4270.60|     1720326|           1|
c countpure = 21200003
c |       46.74|     2795704|     1728664|   311575070|     2500555|     4271.24|     1728519|           1|
c countpure = 21300003
c |       46.96|     2809583|     1736856|   312956848|     2512789|     4272.02|     1736711|           1|
c countpure = 21400014
c |       47.19|     2825754|     1745052|   314510423|     2528158|     4272.66|     1744907|           1|
c countpure = 21500039
c countpure = 21600005
c |       47.44|     2839960|     1753238|   316057330|     2541183|     4273.43|     1753093|           1|
c countpure = 21700009
c |       47.68|     2854876|     1761433|   317617451|     2555066|     4274.08|     1761288|           1|
c countpure = 21800003
c |       47.93|     2870127|     1769622|   319268888|     2569590|     4274.72|     1769477|           1|
c countpure = 21900009
c countpure = 22000001
c |       48.21|     2884953|     1777816|   321115415|     2584094|     4275.50|     1777671|           1|
c countpure = 22100011
c |       48.46|     2901383|     1786007|   322785174|     2600085|     4276.14|     1785862|           1|
c countpure = 22200007
c |       48.69|     2913996|     1794198|   324231849|     2611108|     4276.91|     1794052|           1|
c countpure = 22300003
c |       48.93|     2927572|     1802393|   325791212|     2623098|     4277.56|     1802247|           1|
c countpure = 22400003
c |       49.17|     2940922|     1810582|   327333082|     2634688|     4278.33|     1810436|           1|
c countpure = 22500018
c |       49.41|     2954566|     1818777|   328795865|     2646777|     4278.98|     1818631|           1|
c countpure = 22600003
c |       49.63|     2967941|     1826970|   330208210|     2658586|     4279.75|     1826824|           1|
c countpure = 22700004
c |       49.84|     2981694|     1835161|   331530821|     2670259|     4280.39|     1835015|           1|
c |       50.05|     2993601|     1843349|   332895920|     2679717|     4281.17|     1843203|           1|
c countpure = 22800017
c |       50.30|     3007387|     1851544|   334525933|     2692166|     4281.81|     1851398|           1|
c countpure = 22900009
c |       50.52|     3018460|     1859736|   335832176|     2700475|     4282.59|     1859590|           1|
c countpure = 23000003
c |       50.70|     3029124|     1867928|   337048752|     2707809|     4283.23|     1867782|           1|
c countpure = 23100003
c |       50.96|     3041804|     1876120|   338829476|     2718796|     4284.00|     1875974|           1|
c countpure = 23200015
c countpure = 23300015
c |       51.20|     3055549|     1884310|   340551566|     2731214|     4284.65|     1884164|           1|
c countpure = 23400019
c |       51.41|     3067564|     1892505|   341863937|     2740902|     4285.43|     1892359|           1|
c countpure = 23500006
c |       51.64|     3079369|     1900696|   343342075|     2750781|     4286.07|     1900550|           1|
c countpure = 23600011
c |       51.89|     3091801|     1908890|   344876625|     2761157|     4286.84|     1908744|           1|
c countpure = 23700002
c |       52.14|     3102603|     1917078|   346462712|     2769215|     4287.49|     1916932|           1|
c countpure = 23800003
c |       52.40|     3113372|     1925275|   348336861|     2777608|     4288.13|     1925128|           1|
c countpure = 23900005
c |       52.65|     3125001|     1933464|   349996088|     2786973|     4288.91|     1933317|           1|
c countpure = 24000013
c |       52.87|     3136691|     1941661|   351408776|     2797307|     4289.55|     1941514|           1|
c countpure = 24100004
c |       53.09|     3149459|     1949853|   352841070|     2808686|     4290.32|     1949706|           1|
c countpure = 24200006
c |       53.30|     3161829|     1958043|   354255637|     2819119|     4290.97|     1957896|           1|
c countpure = 24300003
c |       53.50|     3175202|     1966232|   355468820|     2830552|     4291.74|     1966085|           1|
c countpure = 24400023
c |       53.71|     3184659|     1974424|   356886582|     2837737|     4292.52|     1974277|           1|
c countpure = 24500001
c |       53.92|     3197168|     1982618|   358261350|     2847818|     4293.16|     1982471|           1|
c countpure = 24600001
c |       54.11|     3209834|     1990809|   359565965|     2857859|     4293.93|     1990662|           1|
c countpure = 24700010
c |       54.32|     3223470|     1999001|   361007881|     2869139|     4294.58|     1998854|           1|
c countpure = 24800006
c |       54.52|     3236304|     2007192|   362299552|     2879378|     4295.35|     2007045|           1|
c countpure = 24900001
c |       54.72|     3248823|     2015385|   363611643|     2889254|     4296.00|     2015238|           1|
c |       54.92|     3259703|     2023576|   364838347|     2897203|     4296.77|     2023429|           1|
c countpure = 25000005
c |       55.12|     3271590|     2031767|   366056177|     2906391|     4297.41|     2031620|           1|
c countpure = 25100008
c |       55.36|     3283669|     2039962|   367566216|     2916718|     4298.19|     2039815|           1|
c countpure = 25200006
c |       55.58|     3297026|     2048154|   368983715|     2928019|     4298.83|     2048007|           1|
c countpure = 25300004
c |       55.80|     3308421|     2056347|   370313591|     2936887|     4299.61|     2056200|           1|
c countpure = 25400002
c |       56.03|     3317011|     2064538|   371809425|     2942674|     4300.25|     2064390|           1|
c countpure = 25500001
c |       56.26|     3326654|     2072730|   373240400|     2949465|     4301.02|     2072581|           1|
c countpure = 25600004
c |       56.48|     3339229|     2080923|   374611311|     2959387|     4301.67|     2080774|           1|
c |       56.71|     3353218|     2089117|   376110252|     2971627|     4302.44|     2088968|           1|
c countpure = 25700001
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |       56.95|     3367451|     2097307|   377655482|     2984281|     4303.09|     2097158|           1|
c countpure = 25800001
c |       57.20|     3381731|     2105499|   379247222|     2996979|     4303.86|     2105350|           1|
c countpure = 25900010
c |       57.42|     3396123|     2113691|   380561347|     3009916|     4304.50|     2113542|           1|
c countpure = 26000008
c |       57.64|     3410218|     2121882|   382050291|     3022621|     4305.28|     2121733|           1|
c countpure = 26100007
c |       57.88|     3424197|     2130074|   383524632|     3034337|     4305.92|     2129925|           1|
c countpure = 26200001
c |       58.12|     3438213|     2138267|   385044763|     3046281|     4306.70|     2138118|           1|
c countpure = 26300003
c |       58.34|     3451436|     2146462|   386466760|     3057443|     4307.34|     2146312|           1|
c |       58.55|     3464718|     2154652|   387769286|     3068831|     4308.11|     2154502|           1|
c countpure = 26400001
c |       58.73|     3474033|     2162845|   388835215|     3075304|     4308.76|     2162695|           1|
c countpure = 26500004
c |       58.94|     3484713|     2171036|   390125419|     3083575|     4309.53|     2170886|           1|
c countpure = 26600002
c |       59.14|     3496835|     2179228|   391355007|     3093685|     4310.18|     2179078|           1|
c |       59.33|     3510369|     2187420|   392467342|     3105294|     4310.95|     2187270|           1|
c countpure = 26700001
c |       59.54|     3520534|     2195612|   393748502|     3112712|     4311.59|     2195461|           1|
c countpure = 26800008
c |       59.75|     3531705|     2203806|   394995547|     3120978|     4312.37|     2203655|           1|
c countpure = 26900002
c |       59.93|     3543926|     2211996|   396115598|     3130111|     4313.01|     2211845|           1|
c countpure = 27000001
c |       60.16|     3554890|     2220188|   397578925|     3138516|     4313.79|     2220037|           1|
c |       60.36|     3568565|     2228379|   398823299|     3149736|     4314.43|     2228228|           1|
c countpure = 27100007
c |       60.55|     3581824|     2236572|   400085777|     3160407|     4315.20|     2236421|           1|
c countpure = 27200003
c |       60.76|     3595290|     2244766|   401378408|     3171881|     4315.85|     2244615|           1|
c countpure = 27300011
c |       60.96|     3607888|     2252956|   402523221|     3182274|     4316.62|     2252805|           1|
c countpure = 27400006
c |       61.16|     3620545|     2261148|   403736468|     3192866|     4317.27|     2260997|           1|
c |       61.39|     3634325|     2269341|   405202060|     3204787|     4318.04|     2269190|           1|
c countpure = 27500011
c |       61.62|     3647338|     2277533|   406613150|     3215639|     4318.68|     2277382|           1|
c countpure = 27600012
c |       61.85|     3661072|     2285728|   408053197|     3227626|     4319.46|     2285577|           1|
c countpure = 27700004
c |       62.07|     3674986|     2293917|   409414154|     3239634|     4320.10|     2293766|           1|
c countpure = 27800002
c |       62.29|     3689445|     2302109|   410860252|     3252004|     4320.88|     2301958|           1|
c countpure = 27900001
c |       62.52|     3701977|     2310301|   412273420|     3261426|     4321.65|     2310150|           1|
c countpure = 28000001
c |       62.74|     3714199|     2318493|   413642004|     3270861|     4322.29|     2318342|           1|
c countpure = 28100007
c |       62.98|     3727971|     2326685|   415177134|     3282267|     4323.07|     2326534|           1|
c countpure = 28200007
c |       63.20|     3740903|     2334875|   416558069|     3293245|     4323.71|     2334724|           1|
c countpure = 28300002
c |       63.44|     3753107|     2343067|   418119059|     3302826|     4324.48|     2342916|           1|
c countpure = 28400008
c |       63.69|     3763080|     2351259|   419735791|     3309947|     4325.13|     2351108|           1|
c countpure = 28500020
c |       63.97|     3773193|     2359453|   421543450|     3317119|     4325.77|     2359302|           1|
c countpure = 28600002
c |       64.23|     3782757|     2367643|   423148830|     3323664|     4326.55|     2367492|           1|
c countpure = 28700007
c |       64.44|     3795370|     2375837|   424518621|     3334471|     4327.19|     2375686|           1|
c countpure = 28800011
c |       64.66|     3809996|     2384029|   425819861|     3347664|     4327.96|     2383878|           1|
c |       64.87|     3824714|     2392221|   427119970|     3360346|     4328.74|     2392070|           1|
c countpure = 28900002
c |       65.07|     3837058|     2400415|   428385558|     3370161|     4329.38|     2400264|           1|
c countpure = 29000003
c |       65.30|     3850266|     2408604|   429807141|     3380754|     4330.16|     2408453|           1|
c countpure = 29100001
c |       65.54|     3864741|     2416797|   431313890|     3393562|     4330.80|     2416646|           1|
c countpure = 29200004
c |       65.76|     3878423|     2424987|   432700571|     3405120|     4331.57|     2424836|           1|
c |       65.98|     3891890|     2433181|   434017852|     3416474|     4332.22|     2433030|           1|
c countpure = 29300005
c |       66.19|     3906657|     2441374|   435267755|     3429641|     4332.99|     2441223|           1|
c countpure = 29400003
c |       66.41|     3920080|     2449564|   436614034|     3441068|     4333.64|     2449413|           1|
c countpure = 29500007
c |       66.65|     3933688|     2457756|   438153268|     3452597|     4334.41|     2457605|           1|
c countpure = 29600005
c |       66.88|     3947939|     2465949|   439639455|     3464988|     4335.05|     2465798|           1|
c countpure = 29700001
c |       67.14|     3961519|     2474139|   441250085|     3477009|     4335.83|     2473988|           1|
c countpure = 29800003
c |       67.38|     3974613|     2482333|   442757055|     3487849|     4336.47|     2482182|           1|
c countpure = 29900004
c |       67.60|     3988085|     2490526|   444231081|     3498609|     4337.25|     2490375|           1|
c countpure = 30000005
c |       67.81|     4001220|     2498717|   445597912|     3509128|     4337.89|     2498566|           1|
c countpure = 30100018
c |       68.00|     4015923|     2506908|   446739242|     3521733|     4338.66|     2506757|           1|
c |       68.20|     4030105|     2515100|   447935630|     3533704|     4339.31|     2514949|           1|
c countpure = 30200002
c |       68.42|     4042882|     2523292|   449277638|     3544182|     4340.08|     2523141|           1|
c countpure = 30300007
c |       68.64|     4055828|     2531483|   450739709|     3554620|     4340.73|     2531332|           1|
c countpure = 30400003
c |       68.90|     4066524|     2539676|   452392848|     3562275|     4341.50|     2539525|           1|
c countpure = 30500006
c |       69.16|     4077955|     2547870|   454093141|     3570913|     4342.14|     2547719|           1|
c countpure = 30600008
c |       69.36|     4090466|     2556067|   455291305|     3582818|     4342.92|     2555912|           1|
c countpure = 30700001
c |       69.52|     4102266|     2564261|   456185392|     3592713|     4343.57|     2564102|           1|
c |       69.68|     4113593|     2572457|   457174615|     3602069|     4343.93|     2572292|           1|
c countpure = 30800003
c |       69.84|     4126930|     2580650|   458147857|     3614011|     4344.71|     2580485|           1|
c countpure = 30900005
c |       70.00|     4140351|     2588845|   459101765|     3626122|     4345.36|     2588680|           1|
c |       70.15|     4153804|     2597038|   459952246|     3637791|     4346.13|     2596873|           1|
c countpure = 31000001
c |       70.29|     4166817|     2605230|   460691635|     3648367|     4346.77|     2605064|           1|
c |       70.48|     4182447|     2613421|   461811346|     3663271|     4347.55|     2613254|           1|
c countpure = 31100009
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |       70.69|     4199654|     2621614|   463185489|     3680532|     4348.35|     2621446|           1|
c countpure = 31200001
c |       70.86|     4214782|     2629805|   464230227|     3694323|     4349.12|     2629637|           1|
c countpure = 31300003
c |       71.08|     4230303|     2638007|   465687542|     3709546|     4349.77|     2637834|           1|
c countpure = 31400001
c |       71.22|     4242539|     2646195|   466429650|     3719263|     4350.54|     2646022|           1|
c |       71.39|     4255168|     2654387|   467462578|     3729911|     4351.19|     2654214|           1|
c countpure = 31500011
c |       71.57|     4269212|     2662579|   468592368|     3742847|     4351.96|     2662406|           1|
c countpure = 31600001
c |       71.74|     4284778|     2670772|   469598262|     3757558|     4352.61|     2670599|           1|
c |       71.90|     4299997|     2678964|   470555193|     3771642|     4353.38|     2678791|           1|
c countpure = 31700004
c |       72.08|     4315434|     2687156|   471699296|     3786357|     4354.15|     2686983|           1|
c countpure = 31800001
c |       72.24|     4329895|     2695350|   472613206|     3799343|     4354.80|     2695176|           1|
c |       72.42|     4344261|     2703542|   473711279|     3812364|     4355.44|     2703367|           1|
c countpure = 31900002
c |       72.60|     4358730|     2711730|   474823329|     3825583|     4356.21|     2711555|           1|
c countpure = 32000002
c |       72.79|     4374033|     2719925|   476085949|     3840119|     4356.86|     2719750|           1|
c countpure = 32100001
c |       72.98|     4389240|     2728116|   477239758|     3854063|     4357.63|     2727940|           1|
c countpure = 32200008
c |       73.18|     4403154|     2736312|   478641168|     3866661|     4358.28|     2736136|           1|
c countpure = 32300021
c |       73.40|     4419053|     2744503|   480118664|     3882093|     4359.05|     2744327|           1|
c |       73.60|     4436171|     2752698|   481572066|     3898939|     4359.70|     2752522|           1|
c countpure = 32400004
c |       73.81|     4452675|     2760887|   482975460|     3915127|     4360.47|     2760711|           1|
c countpure = 32500001
c |       74.02|     4467153|     2769079|   484370175|     3928368|     4361.11|     2768903|           1|
c countpure = 32600001
c |       74.23|     4482407|     2777270|   485814405|     3942630|     4361.89|     2777094|           1|
c countpure = 32700007
c |       74.44|     4497920|     2785463|   487240070|     3957552|     4362.53|     2785287|           1|
c countpure = 32800006
c |       74.64|     4512589|     2793654|   488685004|     3970967|     4363.30|     2793478|           1|
c countpure = 32900001
c |       74.85|     4527005|     2801845|   489975195|     3983947|     4364.08|     2801669|           1|
c countpure = 33000003
c |       75.06|     4543034|     2810038|   491405716|     3999161|     4364.72|     2809862|           1|
c |       75.27|     4559419|     2818229|   492812838|     4014991|     4365.50|     2818053|           1|
c countpure = 33100010
c |       75.46|     4573754|     2826423|   494124942|     4027899|     4366.14|     2826247|           1|
c countpure = 33200008
c |       75.66|     4587540|     2834614|   495483394|     4040439|     4366.92|     2834438|           1|
c countpure = 33300002
c |       75.84|     4600225|     2842807|   496695471|     4051340|     4367.56|     2842631|           1|
c countpure = 33400012
c |       76.05|     4613935|     2851000|   498081809|     4063743|     4368.34|     2850823|           1|
c countpure = 33500007
c |       76.25|     4627979|     2859191|   499446376|     4076444|     4368.98|     2859014|           1|
c |       76.46|     4644096|     2867387|   500929090|     4092034|     4369.76|     2867208|           1|
c countpure = 33600001
c |       76.67|     4660312|     2875576|   502423528|     4107392|     4370.40|     2875397|           1|
c countpure = 33700011
c |       76.88|     4677233|     2883770|   504024731|     4123564|     4371.18|     2883590|           1|
c countpure = 33800012
c |       77.10|     4693755|     2891964|   505564605|     4139667|     4371.82|     2891784|           1|
c countpure = 33900001
c |       77.32|     4706769|     2900155|   507195386|     4151047|     4372.59|     2899975|           1|
c countpure = 34000005
c |       77.54|     4721074|     2908345|   508789481|     4164161|     4373.24|     2908165|           1|
c countpure = 34100001
c |       77.76|     4734874|     2916539|   510406540|     4176460|     4374.01|     2916359|           1|
c countpure = 34200002
c |       77.98|     4749988|     2924732|   511825288|     4190718|     4374.66|     2924552|           1|
c countpure = 34300003
c |       78.16|     4765956|     2932923|   512960754|     4205661|     4375.43|     2932743|           1|
c countpure = 34400008
c |       78.39|     4783152|     2941111|   514560011|     4222770|     4376.07|     2940931|           1|
c countpure = 34500016
c |       78.60|     4797955|     2949310|   516044756|     4236938|     4376.85|     2949130|           1|
c countpure = 34600011
c |       78.86|     4812815|     2957500|   517694386|     4251510|     4377.49|     2957320|           1|
c countpure = 34700012
c |       79.09|     4828428|     2965692|   519306177|     4266867|     4378.27|     2965511|           1|
c countpure = 34800001
c |       79.28|     4844614|     2973884|   520452365|     4282082|     4378.91|     2973703|           1|
c countpure = 34900003
c |       79.48|     4860089|     2982077|   521838228|     4296630|     4379.68|     2981896|           1|
c countpure = 35000004
c |       79.69|     4877458|     2990269|   523258014|     4313655|     4380.33|     2990088|           1|
c countpure = 35100004
c |       79.91|     4896761|     2998461|   524752938|     4333303|     4381.10|     2998280|           1|
c countpure = 35200002
c |       80.17|     4913781|     3006653|   526629867|     4350078|     4381.75|     3006472|           1|
c countpure = 35300005
c |       80.41|     4931692|     3014844|   528438449|     4367828|     4382.52|     3014663|           1|
c countpure = 35400020
c countpure = 35500004
c |       80.65|     4947812|     3023037|   530095256|     4383725|     4383.16|     3022856|           1|
c countpure = 35600015
c |       80.89|     4963570|     3031229|   531722875|     4398901|     4383.94|     3031048|           1|
c countpure = 35700003
c |       81.13|     4978999|     3039419|   533357180|     4413541|     4384.58|     3039238|           1|
c countpure = 35800017
c |       81.36|     4994243|     3047612|   534951837|     4427677|     4385.36|     3047431|           1|
c countpure = 35900002
c |       81.58|     5012857|     3055805|   536536376|     4446379|     4386.00|     3055624|           1|
c countpure = 36000003
c |       81.80|     5030353|     3063993|   538033018|     4463445|     4386.77|     3063812|           1|
c countpure = 36100003
c |       82.02|     5047976|     3072186|   539595905|     4480675|     4387.42|     3072005|           1|
c countpure = 36200004
c |       82.26|     5067167|     3080381|   541369293|     4500142|     4388.19|     3080200|           1|
c countpure = 36300012
c |       82.51|     5087295|     3088569|   543125745|     4520904|     4388.84|     3088388|           1|
c countpure = 36400004
c |       82.73|     5103391|     3096764|   544809943|     4535953|     4389.61|     3096583|           1|
c countpure = 36500005
c |       82.95|     5120438|     3104955|   546472278|     4552537|     4390.25|     3104774|           1|
c countpure = 36600008
c |       83.18|     5138477|     3113146|   548134682|     4570442|     4391.03|     3112965|           1|
c countpure = 36700001
c |       83.40|     5154189|     3121337|   549688084|     4585081|     4391.67|     3121156|           1|
c countpure = 36800012
c |       83.64|     5172932|     3129532|   551503424|     4603785|     4392.45|     3129351|           1|
c countpure = 36900007
c |       83.88|     5190157|     3137722|   553372484|     4620288|     4393.09|     3137541|           1|
c countpure = 37000020
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |       84.09|     5205995|     3145918|   554904052|     4635372|     4393.86|     3145735|           1|
c countpure = 37100004
c |       84.29|     5220475|     3154110|   556232741|     4648838|     4394.51|     3153926|           1|
c countpure = 37200021
c |       84.50|     5235441|     3162305|   557664401|     4662776|     4395.28|     3162119|           1|
c countpure = 37300002
c |       84.71|     5250305|     3170496|   559182113|     4676503|     4396.05|     3170310|           1|
c countpure = 37400006
c |       84.94|     5265944|     3178685|   560839758|     4691283|     4396.70|     3178499|           1|
c countpure = 37500001
c |       85.16|     5280641|     3186877|   562434121|     4704505|     4397.34|     3186691|           1|
c countpure = 37600002
c |       85.38|     5294776|     3195071|   564050496|     4716950|     4398.12|     3194885|           1|
c countpure = 37700004
c |       85.60|     5310258|     3203265|   565655599|     4731493|     4398.76|     3203079|           1|
c countpure = 37800016
c |       85.82|     5322598|     3211455|   567195081|     4741740|     4399.54|     3211269|           1|
c countpure = 37900004
c |       86.03|     5336876|     3219650|   568688958|     4754814|     4400.18|     3219464|           1|
c countpure = 38000002
c |       86.22|     5352753|     3227839|   569840104|     4769633|     4400.95|     3227653|           1|
c countpure = 38100006
c |       86.41|     5369226|     3236035|   571151210|     4785154|     4401.60|     3235849|           1|
c countpure = 38200007
c |       86.62|     5385024|     3244224|   572502430|     4799503|     4402.37|     3244038|           1|
c |       86.82|     5399937|     3252415|   573938219|     4813157|     4403.02|     3252229|           1|
c countpure = 38300005
c |       87.04|     5417396|     3260608|   575399039|     4830180|     4403.79|     3260422|           1|
c countpure = 38400005
c |       87.26|     5434689|     3268801|   576889792|     4846817|     4404.43|     3268615|           1|
c countpure = 38500001
c |       87.48|     5449624|     3276994|   578635309|     4860100|     4405.21|     3276808|           1|
c countpure = 38600006
c |       87.72|     5464801|     3285181|   580376569|     4873851|     4405.85|     3284995|           1|
c countpure = 38700001
c |       87.94|     5477732|     3293377|   582023487|     4884862|     4406.62|     3293189|           1|
c countpure = 38800001
c |       88.15|     5493404|     3301571|   583531833|     4899259|     4407.27|     3301383|           1|
c countpure = 38900002
c |       88.35|     5509074|     3309762|   584929041|     4913996|     4408.04|     3309574|           1|
c countpure = 39000002
c |       88.53|     5524820|     3317952|   586131631|     4928759|     4408.82|     3317764|           1|
c countpure = 39100017
c |       88.74|     5539496|     3326145|   587617027|     4941816|     4409.46|     3325956|           1|
c countpure = 39200006
c |       88.95|     5554024|     3334338|   589038657|     4954701|     4410.11|     3334149|           1|
c countpure = 39300005
c |       89.16|     5566921|     3342532|   590537161|     4965807|     4410.88|     3342343|           1|
c countpure = 39400003
c |       89.38|     5577038|     3350735|   592142572|     4973893|     4411.53|     3350536|           1|
c countpure = 39500002
c |       89.58|     5589647|     3358927|   593422726|     4985054|     4412.30|     3358727|           1|
c countpure = 39600004
c |       89.77|     5602226|     3367119|   594651965|     4995669|     4412.95|     3366918|           1|
c countpure = 39700002
c |       89.96|     5616140|     3375311|   595848726|     5008034|     4413.72|     3375110|           1|
c countpure = 39800001
c |       90.15|     5631065|     3383502|   597101309|     5021394|     4414.36|     3383301|           1|
c countpure = 39900029
c |       90.36|     5644846|     3391696|   598417419|     5033723|     4415.14|     3391495|           1|
c countpure = 40000032
c |       90.56|     5660353|     3399888|   599754197|     5048211|     4415.91|     3399687|           1|
c countpure = 40100005
c |       90.75|     5675728|     3408080|   600945499|     5062349|     4416.55|     3407879|           1|
c |       90.94|     5690797|     3416274|   602140504|     5076411|     4417.20|     3416073|           1|
c countpure = 40200014
c |       91.16|     5707275|     3424465|   603638876|     5092917|     4417.97|     3424264|           1|
c countpure = 40300007
c |       91.37|     5723009|     3432658|   604941194|     5107735|     4418.62|     3432457|           1|
c countpure = 40400002
c |       91.59|     5736399|     3440848|   606444171|     5119685|     4419.39|     3440647|           1|
c countpure = 40500025
c |       91.79|     5750826|     3449039|   607704861|     5132785|     4420.04|     3448838|           1|
c countpure = 40600014
c |       92.00|     5764701|     3457238|   609073385|     5145587|     4420.81|     3457033|           1|
c countpure = 40700012
c |       92.21|     5777665|     3465427|   610552343|     5157227|     4421.45|     3465221|           1|
c countpure = 40800002
c |       92.43|     5788885|     3473620|   612246281|     5166425|     4422.23|     3473414|           1|
c countpure = 40900002
c countpure = 41000007
c |       92.66|     5800489|     3481814|   613913795|     5175893|     4422.87|     3481607|           1|
c |       92.87|     5815967|     3490008|   615369130|     5190212|     4423.64|     3489801|           1|
c countpure = 41100007
c |       93.09|     5831082|     3498197|   616823520|     5203963|     4424.29|     3497990|           1|
c countpure = 41200025
c |       93.30|     5847023|     3506390|   618180857|     5219489|     4425.06|     3506183|           1|
c countpure = 41300001
c countpure = 41400009
c |       93.54|     5865327|     3514585|   619832259|     5237797|     4425.84|     3514378|           1|
c countpure = 41500009
c |       93.76|     5882903|     3522773|   621316254|     5254942|     4426.48|     3522566|           1|
c countpure = 41600012
c |       93.99|     5900814|     3530965|   622833612|     5272537|     4427.25|     3530758|           1|
c countpure = 41700001
c |       94.20|     5915465|     3539159|   624318720|     5285795|     4427.90|     3538952|           1|
c countpure = 41800002
c |       94.41|     5929246|     3547350|   625684038|     5298301|     4428.54|     3547143|           1|
c countpure = 41900003
c |       94.61|     5945123|     3555541|   627031079|     5313602|     4429.32|     3555334|           1|
c countpure = 42000026
c |       94.83|     5959950|     3563732|   628502165|     5327413|     4430.09|     3563525|           1|
c countpure = 42100001
c |       95.06|     5975444|     3571926|   630056699|     5342687|     4431.06|     3571719|           1|
c countpure = 42200004
c |       95.29|     5993718|     3580118|   631573667|     5361354|     4431.70|     3579911|           1|
c countpure = 42300002
c |       95.53|     6010439|     3588311|   633118199|     5377854|     4432.35|     3588104|           1|
c countpure = 42400009
c |       95.76|     6027989|     3596503|   634687586|     5395360|     4433.12|     3596296|           1|
c countpure = 42500014
c |       96.00|     6047898|     3604694|   636208509|     5416006|     4433.77|     3604487|           1|
c countpure = 42600005
c |       96.22|     6065815|     3612885|   637568370|     5434060|     4434.54|     3612678|           1|
c countpure = 42700007
c |       96.43|     6084958|     3621080|   638872696|     5453743|     4435.18|     3620873|           1|
c countpure = 42800003
c |       96.65|     6102625|     3629267|   640247502|     5471156|     4435.96|     3629060|           1|
c countpure = 42900009
c |       96.85|     6114851|     3637461|   641595293|     5481537|     4436.60|     3637254|           1|
c countpure = 43000001
c |       97.07|     6129789|     3645654|   643245915|     5495656|     4437.38|     3645447|           1|
c countpure = 43100005
c |       97.28|     6147340|     3653845|   644669186|     5512860|     4438.15|     3653638|           1|
c countpure = 43200001
c |       97.52|     6166150|     3662038|   646476725|     5531403|     4438.79|     3661831|           1|
c countpure = 43300002
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |       97.75|     6184754|     3670226|   647956416|     5550245|     4439.57|     3670019|           1|
c countpure = 43400019
c |       97.98|     6201510|     3678421|   649414751|     5566525|     4440.21|     3678214|           1|
c countpure = 43500006
c countpure = 43600011
c |       98.22|     6218414|     3686613|   650936669|     5583341|     4440.98|     3686406|           1|
c countpure = 43700005
c |       98.45|     6235534|     3694807|   652435701|     5600093|     4441.63|     3694600|           1|
c countpure = 43800002
c |       98.67|     6251548|     3703000|   653887217|     5615376|     4442.40|     3702793|           1|
c countpure = 43900001
c |       98.90|     6268796|     3711193|   655378371|     5632144|     4443.05|     3710986|           1|
c countpure = 44000005
c |       99.11|     6282717|     3719382|   656749687|     5644387|     4443.82|     3719175|           1|
c |       99.32|     6295836|     3727576|   658012386|     5655553|     4444.46|     3727368|           1|
c countpure = 44100002
c |       99.52|     6311187|     3735770|   659192102|     5669347|     4445.24|     3735562|           1|
c countpure = 44200019
c |       99.74|     6330046|     3743960|   660543009|     5687802|     4445.88|     3743752|           1|
c countpure = 44300001
c |       99.95|     6346399|     3752151|   661880078|     5703054|     4446.66|     3751943|           1|
c countpure = 44400008
c |      100.16|     6362166|     3760345|   663108455|     5717620|     4447.43|     3760137|           1|
c countpure = 44500004
c |      100.37|     6380425|     3768536|   664434330|     5735488|     4448.07|     3768328|           1|
c countpure = 44600026
c |      100.59|     6397595|     3776727|   665827739|     5752264|     4448.72|     3776518|           1|
c countpure = 44700003
c |      100.83|     6416425|     3784919|   667281921|     5771178|     4449.49|     3784710|           1|
c countpure = 44800012
c |      101.04|     6429330|     3793113|   668779074|     5782308|     4450.14|     3792904|           1|
c countpure = 44900003
c |      101.24|     6440852|     3801301|   670224367|     5791331|     4450.91|     3801092|           1|
c countpure = 45000001
c |      101.46|     6457595|     3809496|   671842007|     5807207|     4451.55|     3809287|           1|
c countpure = 45100007
c |      101.69|     6473362|     3817689|   673347763|     5822114|     4452.33|     3817480|           1|
c countpure = 45200006
c |      101.90|     6488995|     3825879|   674702705|     5836818|     4452.97|     3825670|           1|
c countpure = 45300030
c |      102.11|     6502549|     3834074|   676195844|     5848975|     4453.75|     3833865|           1|
c countpure = 45400001
c |      102.33|     6516326|     3842267|   677650736|     5861037|     4454.39|     3842058|           1|
c countpure = 45500006
c |      102.55|     6529193|     3850456|   679087199|     5872149|     4455.16|     3850247|           1|
c countpure = 45600020
c |      102.76|     6544415|     3858649|   680507009|     5886303|     4455.81|     3858440|           1|
c countpure = 45700002
c |      102.99|     6559958|     3866839|   682038613|     5900519|     4456.58|     3866630|           1|
c countpure = 45800024
c |      103.21|     6576543|     3875030|   683423646|     5915921|     4457.23|     3874821|           1|
c countpure = 45900001
c |      103.42|     6593443|     3883225|   684753346|     5931566|     4458.00|     3883016|           1|
c countpure = 46000005
c |      103.65|     6608860|     3891415|   686194296|     5945658|     4458.64|     3891206|           1|
c countpure = 46100018
c |      103.87|     6624003|     3899608|   687578306|     5960168|     4459.42|     3899399|           1|
c countpure = 46200003
c |      104.08|     6639130|     3907800|   688967970|     5974199|     4460.06|     3907591|           1|
c countpure = 46300001
c |      104.29|     6654981|     3915994|   690299896|     5988913|     4460.84|     3915785|           1|
c countpure = 46400004
c |      104.49|     6672439|     3924184|   691612693|     6005750|     4461.61|     3923975|           1|
c countpure = 46500006
c |      104.70|     6689522|     3932375|   692951464|     6022238|     4462.25|     3932166|           1|
c countpure = 46600012
c |      104.93|     6705793|     3940567|   694392973|     6038008|     4462.90|     3940357|           1|
c countpure = 46700004
c |      105.15|     6722455|     3948759|   695876854|     6053852|     4463.67|     3948549|           1|
c countpure = 46800005
c |      105.38|     6738119|     3956953|   697450487|     6068525|     4464.45|     3956743|           1|
c countpure = 46900003
c |      105.61|     6751248|     3965143|   699046451|     6080075|     4465.09|     3964933|           1|
c countpure = 47000005
c |      105.85|     6764731|     3973340|   700727983|     6092501|     4465.86|     3973130|           1|
c countpure = 47100006
c |      106.09|     6781936|     3981527|   702225679|     6109316|     4466.51|     3981317|           1|
c countpure = 47200007
c |      106.31|     6799859|     3989722|   703628631|     6127128|     4467.28|     3989512|           1|
c countpure = 47300006
c |      106.53|     6817421|     3997913|   705092046|     6144276|     4467.93|     3997703|           1|
c countpure = 47400006
c |      106.77|     6836656|     4006105|   706676436|     6163734|     4468.70|     4005895|           1|
c countpure = 47500006
c |      106.98|     6853067|     4014297|   708017594|     6179278|     4469.34|     4014087|           1|
c countpure = 47600003
c |      107.21|     6867183|     4022488|   709529218|     6192373|     4470.12|     4022278|           1|
c countpure = 47700042
c |      107.44|     6884868|     4030681|   711074119|     6209857|     4470.76|     4030471|           1|
c countpure = 47800012
c |      107.69|     6905330|     4038870|   712712596|     6230771|     4471.54|     4038660|           1|
c countpure = 47900001
c countpure = 48000002
c |      107.94|     6921527|     4047069|   714352147|     6247006|     4472.18|     4046859|           1|
c countpure = 48100006
c |      108.19|     6936025|     4055260|   716063170|     6260946|     4472.95|     4055049|           1|
c countpure = 48200020
c |      108.45|     6951564|     4063451|   717858052|     6276388|     4473.60|     4063240|           1|
c countpure = 48300003
c |      108.69|     6971537|     4071644|   719373590|     6296568|     4474.37|     4071433|           1|
c countpure = 48400008
c |      108.95|     6992431|     4079834|   721036439|     6317911|     4475.02|     4079623|           1|
c countpure = 48500013
c countpure = 48600003
c |      109.19|     7013145|     4088027|   722525210|     6338875|     4475.79|     4087816|           1|
c countpure = 48700003
c |      109.44|     7032445|     4096221|   724127767|     6358169|     4476.57|     4096010|           1|
c countpure = 48800006
c |      109.68|     7052102|     4104410|   725676559|     6377973|     4477.21|     4104199|           1|
c countpure = 48900017
c |      109.92|     7072668|     4112603|   727212304|     6399031|     4477.98|     4112392|           1|
c countpure = 49000039
c |      110.16|     7089463|     4120795|   728768244|     6415941|     4478.63|     4120584|           1|
c countpure = 49100002
c countpure = 49200004
c |      110.42|     7104693|     4128986|   730610408|     6430924|     4479.27|     4128775|           1|
c countpure = 49300011
c |      110.68|     7121853|     4137180|   732365369|     6448210|     4480.05|     4136969|           1|
c countpure = 49400003
c |      110.93|     7141628|     4145368|   733967965|     6468390|     4480.82|     4145157|           1|
c countpure = 49500003
c countpure = 49600005
c |      111.18|     7161002|     4153562|   735634603|     6488006|     4481.47|     4153351|           1|
c countpure = 49700003
c |      111.41|     7177057|     4161754|   737154236|     6503454|     4482.24|     4161543|           1|
c countpure = 49800005
c |      111.67|     7193502|     4169946|   738827475|     6519763|     4482.89|     4169735|           1|
c countpure = 49900020
c |      111.94|     7209026|     4178136|   740612505|     6535062|     4483.66|     4177925|           1|
c countpure = 50000011
c countpure = 50100008
c |      112.20|     7227165|     4186331|   742307449|     6553030|     4484.30|     4186120|           1|
c countpure = 50200016
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |      112.45|     7245886|     4194521|   743916120|     6571447|     4485.08|     4194310|           1|
c countpure = 50300005
c |      112.68|     7263097|     4202714|   745375764|     6588115|     4485.72|     4202503|           1|
c countpure = 50400039
c |      112.91|     7282375|     4210905|   746859397|     6607730|     4486.50|     4210694|           1|
c countpure = 50500004
c |      113.14|     7299545|     4219097|   748299542|     6624738|     4487.14|     4218885|           1|
c countpure = 50600003
c |      113.37|     7315328|     4227290|   749765311|     6640105|     4487.92|     4227078|           1|
c countpure = 50700013
c |      113.61|     7330717|     4235482|   751328445|     6654899|     4488.56|     4235270|           1|
c countpure = 50800002
c countpure = 50900002
c |      113.85|     7349757|     4243674|   752847436|     6673900|     4489.34|     4243462|           1|
c countpure = 51000016
c |      114.10|     7369534|     4251864|   754419724|     6693819|     4490.11|     4251652|           1|
c countpure = 51100001
c |      114.35|     7389799|     4260059|   755975595|     6714070|     4490.75|     4259847|           1|
c countpure = 51200021
c |      114.57|     7407396|     4268252|   757443008|     6731329|     4491.53|     4268040|           1|
c countpure = 51300011
c |      114.82|     7426528|     4276441|   759000947|     6750523|     4492.17|     4276229|           1|
c countpure = 51400005
c |      115.07|     7444379|     4284633|   760547301|     6768383|     4492.95|     4284421|           1|
c countpure = 51500001
c |      115.31|     7457964|     4292829|   762134779|     6780761|     4493.59|     4292617|           1|
c countpure = 51600001
c |      115.54|     7473461|     4301020|   763654586|     6795778|     4494.36|     4300807|           1|
c countpure = 51700009
c countpure = 51800007
c |      115.78|     7489097|     4309211|   765199628|     6811094|     4495.01|     4308998|           1|
c countpure = 51900014
c |      116.02|     7506316|     4317403|   766736196|     6827901|     4495.79|     4317190|           1|
c countpure = 52000003
c |      116.25|     7522643|     4325597|   768266688|     6843636|     4496.43|     4325384|           1|
c countpure = 52100003
c |      116.49|     7537986|     4333788|   769894172|     6858341|     4497.20|     4333575|           1|
c countpure = 52200003
c |      116.73|     7554499|     4341979|   771478605|     6874489|     4497.85|     4341766|           1|
c countpure = 52300001
c |      116.96|     7572381|     4350171|   772984901|     6892231|     4498.62|     4349958|           1|
c countpure = 52400003
c countpure = 52500015
c |      117.21|     7586905|     4358363|   774671618|     6906194|     4499.27|     4358150|           1|
c countpure = 52600020
c |      117.45|     7605239|     4366555|   776206739|     6924353|     4500.04|     4366342|           1|
c countpure = 52700013
c |      117.69|     7622649|     4374747|   777773801|     6941274|     4500.68|     4374534|           1|
c countpure = 52800004
c |      117.92|     7640967|     4382938|   779173230|     6959378|     4501.46|     4382725|           1|
c countpure = 52900009
c |      118.15|     7655568|     4391131|   780696060|     6973034|     4502.10|     4390918|           1|
c countpure = 53000030
c |      118.41|     7670742|     4399325|   782453465|     6987407|     4502.88|     4399112|           1|
c countpure = 53100024
c countpure = 53200004
c |      118.65|     7686876|     4407513|   783997385|     7003006|     4503.52|     4407300|           1|
c countpure = 53300035
c |      118.89|     7704363|     4415704|   785592256|     7020251|     4504.29|     4415491|           1|
c countpure = 53400016
c |      119.15|     7721454|     4423899|   787380659|     7037047|     4504.94|     4423686|           1|
c countpure = 53500017
c countpure = 53600015
c |      119.40|     7737016|     4432090|   789016800|     7051842|     4505.71|     4431877|           1|
c countpure = 53700008
c |      119.65|     7750580|     4440281|   790727464|     7064029|     4506.36|     4440068|           1|
c countpure = 53800007
c |      119.90|     7761103|     4448480|   792593997|     7072834|     4507.13|     4448262|           1|
c countpure = 53900006
c countpure = 54000008
c |      120.15|     7773770|     4456671|   794396124|     7084071|     4507.77|     4456453|           1|
c countpure = 54100006
c |      120.39|     7787527|     4464864|   796135642|     7096682|     4508.55|     4464646|           1|
c countpure = 54200013
c |      120.62|     7800738|     4473057|   797783857|     7108447|     4509.32|     4472839|           1|
c countpure = 54300008
c countpure = 54400020
c |      120.86|     7816968|     4481248|   799425420|     7123854|     4509.96|     4481030|           1|
c countpure = 54500009
c |      121.10|     7829666|     4489439|   801155616|     7134791|     4510.74|     4489221|           1|
c countpure = 54600002
c |      121.34|     7844107|     4497633|   802883045|     7148072|     4511.39|     4497415|           1|
c countpure = 54700004
c |      121.58|     7859763|     4505826|   804578234|     7163021|     4512.16|     4505608|           1|
c countpure = 54800006
c countpure = 54900001
c |      121.82|     7874357|     4514015|   806247515|     7176413|     4512.80|     4513797|           1|
c countpure = 55000001
c |      122.08|     7887182|     4522208|   808114932|     7187551|     4513.58|     4521990|           1|
c countpure = 55100005
c |      122.32|     7902422|     4530400|   809753287|     7201605|     4514.22|     4530182|           1|
c countpure = 55200007
c |      122.53|     7918020|     4538594|   811213480|     7216001|     4515.00|     4538376|           1|
c countpure = 55300001
c |      122.75|     7931711|     4546786|   812734868|     7227838|     4515.64|     4546568|           1|
c countpure = 55400024
c |      122.96|     7947072|     4554975|   814128120|     7241786|     4516.41|     4554757|           1|
c countpure = 55500012
c |      123.19|     7964696|     4563165|   815612208|     7258600|     4517.19|     4562947|           1|
c countpure = 55600001
c countpure = 55700003
c |      123.44|     7980246|     4571361|   817337585|     7273271|     4517.83|     4571143|           1|
c countpure = 55800006
c |      123.69|     7996742|     4579554|   819046745|     7288838|     4518.61|     4579336|           1|
c countpure = 55900007
c |      123.94|     8009903|     4587743|   820782520|     7300486|     4519.25|     4587525|           1|
c countpure = 56000017
c countpure = 56100004
c |      124.21|     8023326|     4595937|   822755887|     7312530|     4519.65|     4595717|           1|
c countpure = 56200005
c |      124.46|     8035162|     4604128|   824751814|     7322622|     4520.30|     4603908|           1|
c countpure = 56300017
c countpure = 56400010
c |      124.69|     8048969|     4612323|   826512352|     7334964|     4521.07|     4612103|           1|
c countpure = 56500005
c |      124.91|     8064200|     4620514|   828067104|     7348821|     4521.71|     4620294|           1|
c countpure = 56600004
c |      125.12|     8077642|     4628706|   829574772|     7360642|     4522.76|     4628486|           1|
c countpure = 56700009
c |      125.35|     8092171|     4636898|   831186234|     7373934|     4523.40|     4636678|           1|
c countpure = 56800055
c countpure = 56900031
c |      125.63|     8106081|     4645092|   833415335|     7387064|     4524.05|     4644872|           1|
c countpure = 57000004
c |      125.87|     8123018|     4653282|   835202857|     7403268|     4524.82|     4653062|           1|
c countpure = 57100006
c |      126.09|     8140015|     4661472|   836810883|     7419378|     4525.46|     4661252|           1|
c countpure = 57200017
c countpure = 57300006
c |      126.32|     8156103|     4669667|   838479268|     7434355|     4526.24|     4669447|           1|
c countpure = 57400005
c |      126.55|     8174666|     4677859|   840116221|     7452754|     4527.01|     4677639|           1|
c countpure = 57500003
c |      126.78|     8189798|     4686052|   841703151|     7466611|     4527.66|     4685832|           1|
c countpure = 57600006
c countpure = 57700015
c |      127.05|     8204405|     4694243|   843761121|     7480219|     4528.43|     4694023|           1|
c countpure = 57800008
c |      127.28|     8220877|     4702435|   845548855|     7495728|     4529.07|     4702215|           1|
c countpure = 57900011
c |      127.51|     8239249|     4710626|   847212780|     7513576|     4529.85|     4710406|           1|
c countpure = 58000007
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |      127.73|     8257588|     4718820|   848780392|     7531380|     4530.49|     4718600|           1|
c countpure = 58100001
c |      127.97|     8274795|     4727011|   850439779|     7547767|     4531.27|     4726791|           1|
c countpure = 58200004
c countpure = 58300004
c |      128.22|     8291875|     4735203|   852252270|     7564182|     4531.91|     4734983|           1|
c countpure = 58400001
c |      128.46|     8306153|     4743395|   854022936|     7576906|     4532.68|     4743175|           1|
c countpure = 58500001
c |      128.68|     8320978|     4751586|   855566685|     7590240|     4533.33|     4751366|           1|
c countpure = 58600016
c countpure = 58700001
c |      128.92|     8338510|     4759777|   857318261|     7607241|     4534.10|     4759557|           1|
c countpure = 58800013
c |      129.13|     8355996|     4767969|   858817906|     7623888|     4534.75|     4767749|           1|
c |      129.32|     8370414|     4776163|   860113624|     7636567|     4535.52|     4775943|           1|
c countpure = 58900010
c |      129.52|     8385687|     4784354|   861380751|     7650288|     4536.29|     4784134|           1|
c countpure = 59000002
c |      129.72|     8401296|     4792547|   862813837|     7664632|     4536.94|     4792327|           1|
c countpure = 59100002
c |      129.95|     8417223|     4800739|   864387816|     7679339|     4537.71|     4800519|           1|
c countpure = 59200002
c |      130.16|     8433502|     4808931|   865860353|     7694536|     4538.36|     4808711|           1|
c countpure = 59300002
c |      130.38|     8448144|     4817121|   867359572|     7707570|     4539.13|     4816901|           1|
c countpure = 59400040
c |      130.62|     8463878|     4825316|   868949800|     7722226|     4539.77|     4825095|           1|
c countpure = 59500004
c |      130.82|     8478907|     4833507|   870366479|     7735492|     4540.55|     4833286|           1|
c countpure = 59600004
c |      131.04|     8495489|     4841699|   871805732|     7751103|     4541.32|     4841478|           1|
c countpure = 59700009
c |      131.25|     8512020|     4849889|   873253827|     7766507|     4541.96|     4849668|           1|
c |      131.46|     8528170|     4858086|   874715967|     7781887|     4542.74|     4857865|           1|
c countpure = 59800021
c |      131.68|     8542856|     4866274|   876311529|     7795098|     4543.38|     4866053|           1|
c countpure = 59900010
c countpure = 60000004
c |      131.90|     8556737|     4874467|   877886032|     7807495|     4544.16|     4874246|           1|
c countpure = 60100007
c |      132.12|     8571930|     4882658|   879443648|     7821261|     4544.93|     4882437|           1|
c countpure = 60200002
c |      132.35|     8588603|     4890850|   881026515|     7837192|     4545.57|     4890629|           1|
c countpure = 60300003
c |      132.58|     8603673|     4899041|   882596793|     7850778|     4546.22|     4898820|           1|
c countpure = 60400004
c |      132.80|     8617111|     4907235|   884234350|     7862597|     4546.99|     4907014|           1|
c |      133.00|     8631743|     4915431|   885566070|     7875594|     4547.64|     4915210|           1|
c countpure = 60500003
c |      133.19|     8645469|     4923621|   886904135|     7887221|     4548.41|     4923400|           1|
c countpure = 60600001
c |      133.39|     8658921|     4931810|   888315453|     7898092|     4549.18|     4931589|           1|
c countpure = 60700002
c |      133.60|     8673877|     4940005|   889751071|     7911710|     4549.83|     4939784|           1|
c countpure = 60800002
c |      133.82|     8689024|     4948197|   891284356|     7925888|     4550.60|     4947976|           1|
c countpure = 60900001
c |      134.04|     8703197|     4956391|   892793630|     7938946|     4551.38|     4956170|           1|
c countpure = 61000002
c |      134.26|     8719150|     4964580|   894284169|     7954042|     4552.02|     4964359|           1|
c countpure = 61100013
c |      134.47|     8736420|     4972773|   895653024|     7970732|     4552.79|     4972552|           1|
c countpure = 61200009
c |      134.69|     8753774|     4980964|   897171891|     7987416|     4553.44|     4980743|           1|
c countpure = 61300005
c |      134.90|     8769156|     4989158|   898558416|     8001600|     4554.21|     4988937|           1|
c countpure = 61400001
c |      135.12|     8782325|     4997349|   900085223|     8012600|     4554.86|     4997128|           1|
c countpure = 61500004
c |      135.34|     8795905|     5005541|   901629565|     8024350|     4555.63|     5005320|           1|
c countpure = 61600001
c |      135.56|     8810528|     5013732|   903167908|     8038282|     4556.27|     5013511|           1|
c countpure = 61700002
c |      135.78|     8825989|     5021923|   904661056|     8052991|     4557.05|     5021702|           1|
c countpure = 61800005
c |      136.01|     8841848|     5030118|   906273754|     8067919|     4557.82|     5029897|           1|
c countpure = 61900005
c |      136.26|     8857376|     5038309|   908029461|     8082223|     4558.46|     5038088|           1|
c countpure = 62000039
c |      136.49|     8873573|     5046500|   909607653|     8097122|     4559.24|     5046279|           1|
c countpure = 62100005
c |      136.72|     8887923|     5054693|   911002655|     8109493|     4559.88|     5054472|           1|
c countpure = 62200012
c |      136.94|     8905006|     5062884|   912580353|     8125237|     4560.66|     5062663|           1|
c countpure = 62300002
c |      137.17|     8919623|     5071075|   914069165|     8138310|     4561.30|     5070854|           1|
c countpure = 62400003
c |      137.38|     8935170|     5079268|   915424653|     8152883|     4562.07|     5079047|           1|
c countpure = 62500020
c |      137.60|     8949329|     5087459|   916957833|     8165509|     4562.85|     5087238|           1|
c countpure = 62600001
c |      137.81|     8962952|     5095651|   918405920|     8176861|     4563.49|     5095429|           1|
c countpure = 62700003
c |      138.03|     8977925|     5103844|   919922617|     8190289|     4564.27|     5103622|           1|
c countpure = 62800004
c |      138.26|     8992021|     5112036|   921509809|     8202588|     4564.91|     5111814|           1|
c countpure = 62900017
c |      138.49|     9006046|     5120227|   923201152|     8214687|     4565.68|     5120005|           1|
c countpure = 63000009
c |      138.71|     9019682|     5128418|   924799080|     8226052|     4566.33|     5128196|           1|
c countpure = 63100002
c |      138.93|     9034658|     5136608|   926348290|     8239374|     4567.10|     5136386|           1|
c countpure = 63200001
c |      139.15|     9050217|     5144803|   927962446|     8253383|     4567.75|     5144581|           1|
c countpure = 63300001
c |      139.35|     9064028|     5152997|   929302570|     8265023|     4568.52|     5152775|           1|
c countpure = 63400001
c |      139.57|     9080358|     5161186|   930786835|     8280547|     4569.29|     5160964|           1|
c countpure = 63500025
c |      139.78|     9094707|     5169380|   932301613|     8293134|     4569.94|     5169158|           1|
c countpure = 63600004
c |      139.98|     9107554|     5177574|   933732123|     8303789|     4570.71|     5177352|           1|
c countpure = 63700009
c |      140.19|     9120938|     5185764|   935111207|     8315475|     4571.36|     5185542|           1|
c countpure = 63800002
c |      140.39|     9135832|     5193956|   936405135|     8329116|     4572.13|     5193734|           1|
c |      140.60|     9152894|     5202146|   937770709|     8345474|     4572.90|     5201924|           1|
c countpure = 63900002
c |      140.80|     9169419|     5210338|   939082206|     8361223|     4573.55|     5210116|           1|
c countpure = 64000002
c |      141.02|     9186527|     5218529|   940481156|     8377633|     4574.32|     5218307|           1|
c countpure = 64100003
c |      141.21|     9202789|     5226723|   941769345|     8393057|     4575.09|     5226501|           1|
c countpure = 64200014
c |      141.42|     9219015|     5234915|   943124715|     8408363|     4575.74|     5234693|           1|
c countpure = 64300011
c --------------------------------------------------------------------------------------------------------
c |        time|     #posHit|     #negHit|      memory|      #split|     mem(MB)|  #dec. Node|     #cutter|
c --------------------------------------------------------------------------------------------------------
c |      141.63|     9234925|     5243107|   944451174|     8422923|     4576.51|     5242885|           1|
c countpure = 64400017
c |      141.84|     9248882|     5251296|   945838432|     8434921|     4577.16|     5251074|           1|
c countpure = 64500003
c |      142.06|     9261605|     5259492|   947368699|     8445735|     4577.93|     5259270|           1|
c countpure = 64600001
c |      142.29|     9277924|     5267685|   948910864|     8461401|     4578.57|     5267463|           1|
c countpure = 64700003
c |      142.51|     9295251|     5275875|   950400323|     8477977|     4579.35|     5275653|           1|
c countpure = 64800001
c |      142.73|     9311902|     5284068|   951913275|     8493777|     4579.99|     5283846|           1|
c countpure = 64900011
c |      142.96|     9328250|     5292262|   953458115|     8509246|     4580.77|     5292040|           1|
c |      143.19|     9344179|     5300451|   954938858|     8523641|     4581.54|     5300229|           1|
c countpure = 65000018
c |      143.42|     9358489|     5308642|   956576093|     8536562|     4582.18|     5308420|           1|
c countpure = 65100028
c |      143.64|     9373077|     5316835|   958208026|     8549181|     4582.96|     5316613|           1|
c countpure = 65200005
c |      143.86|     9388639|     5325027|   959913357|     8563179|     4583.73|     5324805|           1|
c countpure = 65300006
c |      144.09|     9405158|     5333217|   961458395|     8578747|     4584.38|     5332995|           1|
c countpure = 65400021
c --------------------------------------------------------------------------------------------------------
c
c [1m[31mStatistics [0m
c [33mCompilation Information[0m
c Number of recursive call: 10678089
c Number of split formula: 8587190
c Number of decision: 5339044
c Number of paritioner calls: 1
c
c [1m[34mCache Information[0m
c Number of positive hit: 9415192
c Number of negative hit: 5339266
c
c
c Final time: 144.25
c
s SATISFIABLE
c s type pmc
c s log10-estimate 8.25280924024255437319550646500372346084624789855861
c s exact arb int 178981952
