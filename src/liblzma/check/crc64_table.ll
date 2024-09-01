; ModuleID = 'liblzma/check/crc64_table.c'
source_filename = "liblzma/check/crc64_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_crc64_table = dso_local local_unnamed_addr constant [4 x [256 x i64]] [[256 x i64] [i64 0, i64 -5535402513002963089, i64 -827476681416466341, i64 5164075066763771700, i64 8921845837811637811, i64 -3963573138538102436, i64 -8118593940182008216, i64 4357999468653093127, i64 -603052398086275994, i64 4940391307328217865, i64 226782375002905661, i64 -5761232158350294190, i64 -8326798863640698283, i64 4566377562367245626, i64 8715998937306186254, i64 -3757340862016250527, i64 9051005139383707209, i64 -3551671569944921818, i64 -8565961459053115886, i64 4193374422961527165, i64 453564750005811322, i64 -5375839991167752427, i64 -950447627940620255, i64 4747102235666401102, i64 -8486428553008784849, i64 4113029525020509504, i64 9132755124734491252, i64 -3634302816408165093, i64 -1014746199097179108, i64 4811156168024382323, i64 391483189436228679, i64 -5314072338612520152, i64 -344733794942137198, i64 5195199925788447741, i64 1131375642422963401, i64 -4855662593294912602, i64 -9158208430687022431, i64 3731739485546663374, i64 8386748845923054330, i64 -4085333180854407787, i64 907129500011622644, i64 -4631800727367372901, i64 -571126819714445137, i64 5421418680781082560, i64 8594564625313771207, i64 -4294100590368099928, i64 -8952539602376749412, i64 3525329033817543155, i64 -8742362874173347109, i64 3855837706121835956, i64 8226059050041019008, i64 -4537770656272329233, i64 -181233824240569112, i64 5643692520190618503, i64 718348998302913715, i64 -4983696819872789540, i64 8146277531524994749, i64 -4457674130217743918, i64 -8824431737660786970, i64 3938150108875254153, i64 782966378872457358, i64 -5047431839805663263, i64 -118903857361917739, i64 5582173445676054458, i64 7257036000092981153, i64 -2911463407282235186, i64 -8056344222132656134, i64 2529986302517213333, i64 2262751284845926802, i64 -6032390349762361603, i64 -1449351927949395511, i64 6398650419759490726, i64 -7847613871801156665, i64 2322133910755632296, i64 7463478971093326748, i64 -3117099887985244941, i64 -1673246381863442956, i64 6622864283287239323, i64 2036569382881248687, i64 -5805960506456565056, i64 1814259000023245288, i64 -6195890629502321017, i64 -1321317598487363149, i64 6811676960462675676, i64 7132938157145702363, i64 -3327309341956448076, i64 -7603906712147386496, i64 2690676064372932847, i64 -1257614823082009202, i64 6747026957542163169, i64 1875814858707893717, i64 -6258183708997999942, i64 -7684039816217820227, i64 2770420489343360210, i64 7050658067635086310, i64 -3245207924841710455, i64 -6953160100862932173, i64 3219832958944941148, i64 7711675412243671912, i64 -2870179086519323641, i64 -1994625973627513600, i64 6305011443818121839, i64 1213047649942025563, i64 -6630476404036343244, i64 7503259434831574869, i64 -2662012149972555718, i64 -7159359033328314610, i64 3425713581329221729, i64 1436697996605827430, i64 -6854934340521691639, i64 -1768758650736473795, i64 6078267261889762898, i64 -2154189010659562118, i64 5851447209550246421, i64 1630020308903038241, i64 -6507505285908540850, i64 -7365062116336110775, i64 3090674103720225830, i64 7876300217750508306, i64 -2422811326922453891, i64 1565932757744914716, i64 -6443240161887138189, i64 -2215918504504708793, i64 5913566482019610152, i64 7956607163135676207, i64 -2502382151029190592, i64 -7282397182357442700, i64 3008957496780927003, i64 -3932672073523589310, i64 8809633696146542637, i64 4460922918905818905, i64 -8158783662249152394, i64 -5567412237929787023, i64 113391187501452830, i64 5059972605034426666, i64 -786178333796749755, i64 4525502569691853604, i64 -8222556824080028597, i64 -3870308643033771137, i64 8748148222884465680, i64 4980157760350383383, i64 -706115546429410696, i64 -5649443234190570164, i64 195741594718114339, i64 -5406581602485245685, i64 565687821211481700, i64 4644267821511264592, i64 -910417325212854721, i64 -3519786131522898120, i64 8937808626997553239, i64 4297282312656885603, i64 -8607135623245150196, i64 4852190599768102253, i64 -1119077323475416574, i64 -5201015507135072970, i64 359174499151456857, i64 4073138765762497374, i64 -8383170749551946703, i64 -3746286292604474619, i64 9163920108173816938, i64 3628518000046490576, i64 -9118283621180465985, i64 -4116532283263851637, i64 8498696072880078052, i64 5299565100954197475, i64 -385731908190223732, i64 -4823390152784200264, i64 1018284691440624343, i64 -4180867759418146890, i64 8562713237611094233, i64 3566469078572851181, i64 -9056483741914333054, i64 -4743889748392664699, i64 937907429353946858, i64 5381352128745865694, i64 -468326524461261135, i64 5746791986423309721, i64 -220966226947081482, i64 -4952690158625225278, i64 606523824971012781, i64 3751629717415787434, i64 -8701451563069430587, i64 -4569956191557559311, i64 8338992711486538910, i64 -5160786708676208129, i64 815010154451519120, i64 5540840978686720420, i64 -14837645541906741, i64 -4345427938439378996, i64 8115412784602421411, i64 3978303581567838103, i64 -8927389306748356360, i64 -5919282011750233885, i64 2230461459452909452, i64 6439665917889882296, i64 -1553734490144933929, i64 -3023393249222207792, i64 7288217715337890239, i64 2490078880175191691, i64 -7953140121649534492, i64 6520081235612152965, i64 -1633197079553807382, i64 -5836721186073307938, i64 2148641156328442801, i64 2426095299884051126, i64 -7888771163999816231, i64 -3085231252839216403, i64 7350228890552538498, i64 -3440225204046401878, i64 7165105895222849989, i64 2649782550477098737, i64 -7499716522796904034, i64 -6084047658828648295, i64 1783234539286425590, i64 6851427162658443458, i64 -1424434862061826131, i64 2873395993211654860, i64 -7724211225838613085, i64 -3214325240990928233, i64 6938393941075996152, i64 6642978682516671743, i64 -1216300290739711088, i64 -6290209549930025820, i64 1989151790783919051, i64 6263731030979658865, i64 -1890541448826905826, i64 -6743849654609058774, i64 1245039440087595845, i64 3260040617806076482, i64 -7056101485762165459, i64 -2757949010207720935, i64 7680756410435167606, i64 -6823875760881862633, i64 1324891275238549368, i64 6181348207440451660, i64 -1808542903113677021, i64 -2694143638208535004, i64 7616209416359311691, i64 3321489341258335871, i64 -7118501837995222768, i64 3131865515489829432, i64 -7468987255756522153, i64 -2309597564811247005, i64 7844397531750915340, i64 5811434156413844491, i64 -2051371843948305564, i64 -6619611109670331312, i64 1660744670629167935, i64 -2533529747438199202, i64 8068573254449152305, i64 2905717078206922245, i64 -7242523810129747606, i64 -6410914086585843603, i64 1452858539103461122, i64 6017914993561854006, i64 -2256970321264951463], [256 x i64] [i64 0, i64 6118555238288912653, i64 -6209633597131726310, i64 -199413240349781225, i64 -4504363363348915535, i64 -7668450455997043780, i64 7543452712389327019, i64 4343374206906190246, i64 1162559746622204903, i64 4957131115480832746, i64 -5048307812380947971, i64 -1361855819642783504, i64 -3359838648930897578, i64 -8811841195869700005, i64 8686748413812380492, i64 3198961161184305729, i64 2325119493244409806, i64 8407378615347160771, i64 -8532481842747886124, i64 -2486003028321483559, i64 -2217685545794499201, i64 -5345690102390162318, i64 5254506258681524069, i64 2018377927885299304, i64 3487552142959377449, i64 7246080283574668580, i64 -7371067581838451149, i64 -3648535252071092418, i64 -1073247246084790632, i64 -6488993534402373739, i64 6397922322368611458, i64 873845550624159119, i64 4650238986488819612, i64 1468611264581623441, i64 -1631986843015230074, i64 -4777337277487006581, i64 -9082143227827751635, i64 -3090376128493550560, i64 2893367039927949111, i64 8993183146101597754, i64 5812680741028562043, i64 307286854339917174, i64 -470562995238148511, i64 -5939895099810769044, i64 -7937731556346503478, i64 -4233671005431779385, i64 4036755855770598608, i64 7848658706446142941, i64 6975104285918754898, i64 3757679901787621727, i64 -3954583506560214456, i64 -7064169989010560187, i64 -6795433730259279133, i64 -767656388567444498, i64 604386294999662841, i64 6668229816820511220, i64 8137636784695169973, i64 2596263716583940792, i64 -2793284350038658641, i64 -8226604013230407518, i64 -5650899428972328700, i64 -1911072727012902903, i64 1747691101248318238, i64 5523790692630174227, i64 -9146266100731912392, i64 -3028504848233550283, i64 2937222529163246882, i64 8947075512310451247, i64 4642267913777087881, i64 1478833794519692420, i64 -1603750723235780717, i64 -4803321392440174946, i64 -7983806135478455073, i64 -4189848431127689774, i64 4098594218943518405, i64 7784568886045304776, i64 5786734079855898222, i64 335485660068962147, i64 -460377781506356108, i64 -5947828720897868423, i64 -6821382591652427530, i64 -739455384773264901, i64 614573708679834348, i64 6660293997941431265, i64 6929031904881267271, i64 3801500275841901386, i64 -3892747341216993187, i64 -7128257609425305264, i64 -5658868303618923759, i64 -1900852397295316452, i64 1775925023235784971, i64 5497808777625382918, i64 8073511711541197216, i64 2658137194938402989, i64 -2749426660817265734, i64 -8272713844851250505, i64 -4496535501872041820, i64 -7678530322301255255, i64 7515359803575243454, i64 4369215658492879795, i64 64266086328445461, i64 6056541296517372696, i64 -6253632299521816561, i64 -153162945314473726, i64 -3334030249881085117, i64 -8839901187563148722, i64 8676701462472931673, i64 3206755967968430164, i64 1208772589999325682, i64 4913169729330573567, i64 -5110284440068529176, i64 -1297627187128397083, i64 -2171470504319211670, i64 -5389653688794982809, i64 5192527433167881584, i64 2082608760381092989, i64 2350925692077440475, i64 8379320821714095318, i64 -8542526594135318591, i64 -2478210419334025524, i64 -1008983360010908531, i64 -6551005278075748992, i64 6353925819959930519, i64 920093647833407386, i64 3495382202496636476, i64 7235998217053677361, i64 -7399162688449203162, i64 -3622691600532388565, i64 -7999675197100351243, i64 -4318379916320812552, i64 4118967294799201007, i64 7908597456515216354, i64 5874445058326493764, i64 391603411424480073, i64 -552593049088649122, i64 -5999443282652272301, i64 -9162208246155375854, i64 -3156964280351196641, i64 2957667589039384840, i64 9071030930460645381, i64 4729911307347480995, i64 1535020299074674862, i64 -1695897306136759367, i64 -4855003608149802316, i64 -5710834708691028165, i64 -1993278771512277450, i64 1832394617641637153, i64 5585730863000118316, i64 8197188437887036810, i64 2678299164963691655, i64 -2877606301618942064, i64 -8288371800912216419, i64 -6873275913997755172, i64 -831953810993009199, i64 670971320137924294, i64 6748289234561093579, i64 7052776217202099821, i64 3821593491595032416, i64 -4020995667772677001, i64 -7143847910456257158, i64 -3426247065032585367, i64 -8891513173181268380, i64 8764415362900159859, i64 3262871967819308158, i64 1229147417359668696, i64 5037195377843840213, i64 -5126156077826689086, i64 -1426157124752324913, i64 -4588680263947017074, i64 -7730215391719893629, i64 7603000551683802772, i64 4425403642365261721, i64 84709666887204415, i64 6180499360129388338, i64 -6269571591236248539, i64 -281624198258135768, i64 -1137161454317119321, i64 -6566665809199257174, i64 6477599625422879421, i64 940257368289594288, i64 3551850046471569942, i64 7323923223311315739, i64 -7451126518458785780, i64 -3715119521244802815, i64 -2299720650627157184, i64 -5405241137190665651, i64 5316274389876805978, i64 2102700497890566231, i64 2407324781779167729, i64 8467313413945678076, i64 -8594422769115935765, i64 -2570707025801495834, i64 1291018766690942925, i64 4973072573440528064, i64 -5172263643116986921, i64 -1382301566445753126, i64 -3416024466559064708, i64 -8899484176854231951, i64 8738431316985759590, i64 3291108156134209131, i64 128532172656890922, i64 6134424711959717159, i64 -6333661480674806224, i64 -219785903619619011, i64 -4560481527290294629, i64 -7756162121394454634, i64 7595066862094806145, i64 4435588787024731532, i64 3580050981226981379, i64 7297974293382715662, i64 -7459062405873317351, i64 -3704932176603399404, i64 -1093341148763688270, i64 -6612738259308018753, i64 6413511935936860328, i64 1002093465131966885, i64 2417545179998651364, i64 8459344608371405545, i64 -8620404615048404482, i64 -2542473035312131853, i64 -2237847103234975403, i64 -5469366141810235304, i64 5270164626790366031, i64 2146558256149678658, i64 5864365122984562769, i64 399431204366950748, i64 -526751666036362677, i64 -6027536260504075450, i64 -8061689207373788448, i64 -4254113899064689683, i64 4165217520762185978, i64 7864598685623228919, i64 4701851384154880950, i64 1560828767195761339, i64 -1688102430281360980, i64 -4865050490988402527, i64 -9206169563266866937, i64 -3110751368438624246, i64 3021896290089222941, i64 9009054371811832336, i64 8153224920554538911, i64 2724514274940876434, i64 -2813375400621251195, i64 -8350350557353536376, i64 -5738892433789690578, i64 -1967472503641527261, i64 1840187295666814772, i64 5575686180147088953, i64 6990764404993272952, i64 3885857308630146421, i64 -3974747639602196894, i64 -7187844481400389777, i64 -6883358049590020407, i64 -824123819956598844, i64 696814903175779539, i64 6720194058879067614], [256 x i64] [i64 0, i64 4542972359516777931, i64 9085944719033555862, i64 4691664355513513565, i64 -274854635642439892, i64 -4385269770102777113, i64 -9063415362682524486, i64 -4813320001403027087, i64 7676286055365832925, i64 6164376987427609878, i64 1481798532234586955, i64 3142253189322229376, i64 -7590781620845230095, i64 -6222917917170816454, i64 -1675371220970759065, i64 -2903691964978662996, i64 -3094171962977885766, i64 -1583952375690785679, i64 -6117990098854331860, i64 -7776756536872511513, i64 2963597064469173910, i64 1597421751597874013, i64 6284506378644458752, i64 7511137813735006411, i64 -4645199676475731609, i64 -9186482545610589012, i64 -4494824337857885455, i64 -102232183676524742, i64 4874982405016790603, i64 8983709158270585728, i64 4445237816650825181, i64 196831773885239318, i64 4091022007653359089, i64 562346998784700474, i64 5103132815620245095, i64 8780357948041161644, i64 -4257660877277074723, i64 -296570481443076330, i64 -4972399051446767285, i64 -8793951024165626752, i64 5927194128938347820, i64 7875246409875505383, i64 3194843503195748026, i64 1395478681687169905, i64 -5877731316420634112, i64 -7969687125679048757, i64 -3424468446239538794, i64 -1192827875742340003, i64 -1312394493013443509, i64 -3259883321988263552, i64 -7791593783370061859, i64 -5992791409806046698, i64 1289987737384422247, i64 3381381201708377772, i64 8066289525279445233, i64 5835212509754572090, i64 -8696779263675970410, i64 -5168667699186359971, i64 -479325757168380160, i64 -4155988434061428021, i64 8890475633301650362, i64 4929947589851190897, i64 393663547770478636, i64 4214651972966108647, i64 8182044015306718178, i64 5658655167774316073, i64 1124693997569400948, i64 3499391957275839935, i64 -8240478442469061426, i64 -5573184959588048635, i64 -886028177627228328, i64 -3693000779295049069, i64 1948880861322201919, i64 2594127930539943668, i64 7285718382500778153, i64 6491924633276939618, i64 -1791212214774694893, i64 -2868875762953809448, i64 -7407410462321039483, i64 -6469290964795143602, i64 -6592355815832855976, i64 -7239292194976745581, i64 -2696251253958540850, i64 -1900769114940249083, i64 6389687006391496052, i64 7469038772501250239, i64 2790957363374339810, i64 1851148384058628905, i64 -3601584275065918843, i64 -1076506110024071346, i64 -5759161941737803501, i64 -8135548283655381800, i64 3615017233668480425, i64 946035540305899618, i64 5493509258033841727, i64 8302171348940565492, i64 5281120895271462419, i64 8521283507583323096, i64 3989500891288354181, i64 600787064567550030, i64 -5375668122245803713, i64 -8471786460141339404, i64 -3786954689532065111, i64 -830375865738369182, i64 2579975474768844494, i64 2073357103652371205, i64 6762762403416755544, i64 7120694423275413651, i64 -2314165023150661150, i64 -2240102767914726359, i64 -6776319054200407436, i64 -6990064962642765889, i64 -7186331552849688663, i64 -6679149625617880478, i64 -2138427992238302145, i64 -2496922355888541196, i64 6947506857025941637, i64 6872882154850049358, i64 2196985003345963795, i64 2411294364755134168, i64 -665792807106250892, i64 -3906518965802657089, i64 -8586848894007169822, i64 -5197572713764011735, i64 787327095540957272, i64 3884007889973030291, i64 8429303945932217294, i64 5472161678768272901, i64 -2082656043096115260, i64 -2588714269448791537, i64 -7129433738160919470, i64 -6772067473445240423, i64 2249387995138801896, i64 2322888996435045667, i64 6998783914551679870, i64 6785602652076537525, i64 -8530013253266176231, i64 -5290410795457811758, i64 -610083031911834481, i64 -3998231113229356732, i64 8480501340405739573, i64 5384944246861192702, i64 839650424281590691, i64 3795664592519366248, i64 3897761722644403838, i64 656471011406904245, i64 5188255861079887336, i64 8578093388688728099, i64 -3875307308707995310, i64 -778060871886287719, i64 -5462894807155672380, i64 -8420597331836889329, i64 6669836397870376611, i64 7177582867921406824, i64 2488175334770097461, i64 2129119614032302334, i64 -6863624405732208241, i64 -6938814759902167996, i64 -2402596308948514279, i64 -2187726699626502190, i64 -2603413136294499787, i64 -1957604856076253186, i64 -6500643563716447837, i64 -7295002001846690712, i64 2878174689517968665, i64 1799951022334374098, i64 6478030266801178255, i64 7416715545229372228, i64 -5667370060926559512, i64 -8191320127033854173, i64 -3508666528707051138, i64 -1133403887668597579, i64 5581914726748679620, i64 8249768321177223183, i64 3702296768117257810, i64 894758378090191769, i64 1067805515879173007, i64 3592318064290702916, i64 8126281399163064345, i64 5750455340522077650, i64 -937278275677848413, i64 -3605695459438522008, i64 -8292854474786789579, i64 -5484753774184936706, i64 7230034467336960850, i64 6583663697231173273, i64 1892071080611799236, i64 2686992928761285903, i64 -7459725557641868162, i64 -6380938308575239755, i64 -1842401375828420632, i64 -2781648972280481245, i64 -7884502283166626778, i64 -5935885355257257491, i64 -1404177058542905424, i64 -3204103132986049925, i64 7979001782576708362, i64 5886480219318720193, i64 1201574129135100060, i64 3433774845539634519, i64 -571047248263791365, i64 -4100286911679049424, i64 -8789626689038489747, i64 -5111840311257396570, i64 305328503063841751, i64 4266984645440464412, i64 8803266454141587521, i64 4981154328058445194, i64 5159950949537688988, i64 8687502257518297175, i64 4146714207304742410, i64 470617173809470401, i64 -4921219266876040528, i64 -8881185961822521477, i64 -4205355227158724314, i64 -384931353366024979, i64 3250597773715660097, i64 1303669193657626762, i64 5984074333724313303, i64 7782311056298339100, i64 -3372083029989725587, i64 -1281250921610967130, i64 -5826471765718453765, i64 -8056984237281616848, i64 -6173691657206951465, i64 -7685034945382089700, i64 -3150999455596557759, i64 -1491104918652737654, i64 6232173811933554427, i64 7599472825692375856, i64 2912390363305901421, i64 1684630829289181350, i64 -4551730359657668342, i64 -9323789643674431, i64 -4700979764009452900, i64 -9094700017125370025, i64 4393970006691927590, i64 284119552558480365, i64 4822588729510268336, i64 9072122871209877627, i64 9177754244107333741, i64 4635909983525117350, i64 92935459340889083, i64 4486092121981797936, i64 -8974992421503875263, i64 -4865705385977566582, i64 -187557560010367785, i64 -4436529220410216164, i64 1574654191081914544, i64 3085435160094502267, i64 7768015779946060582, i64 6108684823746459373, i64 -1588136181845117028, i64 -2954871786593363369, i64 -7502420716173005814, i64 -6275223673052626495], [256 x i64] [i64 0, i64 2156813408461955548, i64 4313626816923911096, i64 2752718492472304228, i64 8627253633847822192, i64 7661928252530632364, i64 5505436984944608456, i64 5875429064940414228, i64 -1192236806013907232, i64 -965220923126206660, i64 -3122887568648286888, i64 -3942958564765537148, i64 -7435870103820334704, i64 -8853810958536333236, i64 -6695885943828723160, i64 -4684335785382351884, i64 5489899806547772229, i64 5899293950881604249, i64 8641596751236382973, i64 7639112309309301025, i64 4290280838231655477, i64 2766522915734824425, i64 24548853041579917, i64 2141951263632483921, i64 -6682118946941760091, i64 -4707719121736979335, i64 -7450839975048229347, i64 -8829369900623138879, i64 -3098914973555651883, i64 -3958387965280965879, i64 -1215015340106659475, i64 -950840465322252111, i64 -7466944460614007158, i64 -8822938916188018858, i64 -6648156171946343118, i64 -4732285463874902802, i64 -1163550571236785670, i64 -993968726265683930, i64 -3168519455090949566, i64 -3897405838858427490, i64 8580561676463310954, i64 7708699370463537590, i64 5533045831469648850, i64 5847881786764880398, i64 49097706083159834, i64 2107935609010204358, i64 4283902527264967842, i64 2782645096555375998, i64 -3147981665602894385, i64 -3909523579072371693, i64 -1185278040933579145, i64 -980797662532343893, i64 -6635431580800220481, i64 -4754468064814029981, i64 -7478470592704298745, i64 -8801818452109336357, i64 4261616546501692207, i64 2795266376586341107, i64 70185227798988951, i64 2096376465831291211, i64 5520961050865536095, i64 5868452604588535171, i64 8593836137267777511, i64 7687075229128879675, i64 -6766513246202621039, i64 -4614485015425535411, i64 -7366322521915305943, i64 -8923008618636512779, i64 -3052686879101250335, i64 -4013790101409614531, i64 -1261085096275486887, i64 -895878125242976635, i64 5579070418531851633, i64 5801301123735731373, i64 8552830750928559817, i64 7736981982542757653, i64 4239857041646656001, i64 2826138345940532189, i64 75412445699561913, i64 2082177495183685733, i64 -1285620720782929708, i64 -881011616693964536, i64 -3029345332782476436, i64 -4027607684417064272, i64 -7380652410770253916, i64 -8900188311696165256, i64 -6750980500179790820, i64 -4638363061112179264, i64 98195412166319668, i64 2067810197125185512, i64 4215871218020408716, i64 2841563382736944208, i64 8567805054529935684, i64 7712554084374493336, i64 5565290193110751996, i64 5824680096370817824, i64 4213277561403610395, i64 2852497928146826439, i64 118647349622822563, i64 2038740285422565247, i64 5603244184571253355, i64 5777048188553278391, i64 8511711324634206675, i64 7778039831901335567, i64 -3094883959936181253, i64 -3971531443617678809, i64 -1237971117710616509, i64 -918912934686033505, i64 -6721928008858231669, i64 -4658867946919215785, i64 -7391534351426986189, i64 -8897576891100922129, i64 8523233093003384414, i64 7756906139291137922, i64 5590532753172682214, i64 5799235221864313914, i64 140370455597977902, i64 2025555993157185778, i64 4192752931662582422, i64 2864620100732154698, i64 -7404821971978479426, i64 -8875957182137648798, i64 -6709838864532481274, i64 -4679425536210830630, i64 -1259071799173996594, i64 -907358223879029230, i64 -3072593615451792266, i64 -3984139495117128278, i64 -2960651452748252761, i64 -3817032205530654597, i64 -1354260170373629409, i64 -1091496381395772477, i64 -6821952570253066537, i64 -4846713130544521461, i64 -7309734771006243473, i64 -8691928956582667085, i64 4151744643171039047, i64 2626583331457439387, i64 162377516962444543, i64 2282879863086044451, i64 5631712546292871223, i64 6037452326221451755, i64 8501327171535303567, i64 7499692239708246611, i64 -7288603236645848350, i64 -8703444155837539522, i64 -6844141826238088870, i64 -4833995057016874874, i64 -1341082571852431982, i64 -1113217178856317874, i64 -2972780108624036310, i64 -3796505469138149386, i64 8479714083293312002, i64 7512977616177960414, i64 5652276691881064378, i64 6025361010828170854, i64 150824891399123826, i64 2303974039851176622, i64 4164354990367371466, i64 2604286280411140374, i64 5659250822143950637, i64 6009834889821986545, i64 8454565055791594645, i64 7546392787102457161, i64 4121809449076176989, i64 2656298618920900993, i64 211263906290727909, i64 2233791159333640761, i64 -6774011619188985395, i64 -4894451767163252719, i64 -7340598086059265419, i64 -8660845734919482455, i64 -3006213043526977859, i64 -3771409046389581983, i64 -1325503502495714043, i64 -1120173888738143015, i64 196390824332639336, i64 2258328937796115892, i64 4135620394250371024, i64 2632959299571932684, i64 8431742436040817432, i64 7560729365405768388, i64 5683126765473888416, i64 5994308631384381820, i64 -1311133964649680248, i64 -1142963480220429484, i64 -3021635904960564944, i64 -3747429774764617492, i64 -7316163687488047624, i64 -8675822128059837404, i64 -6797383880967915968, i64 -4880673833144789092, i64 8426555122807220790, i64 7574959341548112874, i64 5704995856293652878, i64 5963537623700588626, i64 237294699245645126, i64 2208312048661695642, i64 4077480570845130494, i64 2700071425513574178, i64 -7240255704567044906, i64 -8760632044756302582, i64 -6892647696602994834, i64 -4776367372049267022, i64 -1423321424441138266, i64 -1021803734804004230, i64 -2890664409906880482, i64 -3887514301488021054, i64 4089596066908350835, i64 2679540256679954607, i64 224121464376355531, i64 2230046074588744471, i64 5727171952466636291, i64 5950815117732351967, i64 8405427952099257787, i64 7586487769270013031, i64 -2903279120755644525, i64 -3865230478908750257, i64 -1411755639065779157, i64 -1042893479128545801, i64 -6913216205843095325, i64 -4764289285122490049, i64 -7218629456512490661, i64 -8773912988784901497, i64 -1400277887702782788, i64 -1044908848499356320, i64 -2932931795127275772, i64 -3845326085389431080, i64 -7265678567364187188, i64 -8735411487809861104, i64 -6848273629980923788, i64 -4820961336695240280, i64 280740911195955804, i64 2165085734748128128, i64 4051111986314371556, i64 2726642315882184760, i64 8385505863325164844, i64 7616087770173211888, i64 5729240201464309396, i64 5939354855465699144, i64 -6872145140872368135, i64 -4805421918443499995, i64 -7242869176078341055, i64 -8749752429767701091, i64 -2946738307862452087, i64 -3821973606225802923, i64 -1385418034209101007, i64 -1069450990615835923, i64 5752625691707646233, i64 5925581285101240517, i64 8361067032314929825, i64 7631051003498906493, i64 4066548076212889193, i64 2702667407911749557, i64 266366940911429073, i64 2187862166416278541]], align 16

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"}
