// Autogenerated by python -m sk_bias emit_code

namespace n2k {
namespace sk_globals {

// mu_min = 1.0;
// mu_max = 90.0;

double xmin = -0.03599847736264212;
double xmax = 4.535808147692907;
int nx = 128;
int ny = 4;
int n_min = 64;

float bias_coeffs[512] = {
  0.0018437357020770762,  0.4234818333361899,  3.08423585770428,  19.605219754738016,
  -0.0019930847752644976,  0.3432293516497397,  2.558259212230691,  18.378343882520806,
  -0.004758143762124911,  0.27655521360487245,  2.083826035501058,  16.94960132117438,
  -0.006665268882807052,  0.22191078799265893,  1.6643220596547612,  15.363975965839527,
  -0.007899551873285171,  0.17771791008622984,  1.3009133039745406,  13.678925679850936,
  -0.008617622140482561,  0.14243153521418245,  0.9926457323445089,  11.95702580218461,
  -0.008949128692732788,  0.1145913579905766,  0.7367249769856729,  10.259316348397899,
  -0.008999070950063581,  0.09286023773174885,  0.5289186113027495,  8.639810020162022,
  -0.008850643578908635,  0.07604904666858657,  0.3640099656952339,  7.1417953480121685,
  -0.008568308216489351,  0.06312881631521705,  0.23625057657000142,  5.795917623836387,
  -0.008200863776880007,  0.05323199405103195,  0.13976986671537256,  4.619776176361316,
  -0.007784347962488836,  0.04564517253887247,  0.06890605798434754,  3.6190565788566436,
  -0.007344659482175997,  0.03979569691871986,  0.018458337763606024,  2.789225874250329,
  -0.006899839628643711,  0.03523463755955801,  -0.016161359455052034,  2.118178576158129,
  -0.006461991475778639,  0.031618057693577846,  -0.03884759658558339,  1.5886374202673232,
  -0.006038844610107841,  0.028688328109414133,  -0.05279377814736073,  1.1806192343355855,
  -0.005634993567438462,  0.02625660694538467,  -0.06052916551288835,  0.8733588279137166,
  -0.005252850165580636,  0.024187340779199932,  -0.06399688091641975,  0.6470668281835669,
  -0.004893355239351749,  0.022385040727375127,  -0.06463729600045538,  0.4837497491243986,
  -0.004556495518687198,  0.020783578207627336,  -0.06348941469582443,  0.3680864350026809,
  -0.004241668146079958,  0.019337695702102305,  -0.0612727020322823,  0.287335347878922,
  -0.003947930002634159,  0.018016638577435636,  -0.05847261699318647,  0.23152524686888043,
  -0.0036741627632335128,  0.016799439743518715,  -0.05540243855671119,  0.19301608734528716,
  -0.003419178282271229,  0.015671588781241752,  -0.05225544497898169,  0.16614514916723644,
  -0.0031817830980043205,  0.014622785730232126,  -0.04915086852770387,  0.14709356875390533,
  -0.002960815867538491,  0.013645336165751587,  -0.04614784913883292,  0.1329392725601499,
  -0.002755167511439671,  0.012733287099845109,  -0.04328373558450821,  0.12205982627340471,
  -0.002563790764914531,  0.011881713448779863,  -0.04056944775334103,  0.11317289182621745,
  -0.0023857035780490143,  0.01108644482429355,  -0.03801167754727399,  0.1056585419573634,
  -0.0022199892601915128,  0.01034383177926656,  -0.03561192437132308,  0.09915634382920925,
  -0.0020657952620253273,  0.009650656989769857,  -0.033369741074693406,  0.09345526547985335,
  -0.0019223319137249284,  0.00900415984974501,  -0.03128906518736633,  0.08854692788738266,
  -0.0017888721736600832,  0.008402117338306427,  -0.029382122840616105,  0.08463444683002853,
  -0.00166475341240635,  0.007842993036742742,  -0.027671036191350206,  0.08203498383227095,
  -0.0015493823960139874,  0.00732620692597763,  -0.026195091978933948,  0.08130245657228581,
  -0.001442244894119371,  0.0068525138666863964,  -0.025016220817861052,  0.0832157816912588,
  -0.0013429216759055507,  0.006424514984761488,  -0.024224058479830904,  0.08872425700245738,
  -0.0012511130225727474,  0.006047471598588316,  -0.023961600807978992,  0.09960367185702387,
  -0.00116667422715655,  0.005730080383248295,  -0.024413770831643367,  0.11764903858421899,
  -0.0010896648037141965,  0.0054856944952597075,  -0.025832803167759287,  0.14522898728319128,
  -0.0010204142212724143,  0.005333678790190534,  -0.0285505995805126,  0.1853421189298436,
  -0.0009596068430706151,  0.005300955913746464,  -0.03298757170500742,  0.24151687503036737,
  -0.0009083883230884826,  0.00542364449649213,  -0.03964987239987761,  0.3173459353420243,
  -0.0008684949472077541,  0.005748986558948843,  -0.04915623055353531,  0.417275344327206,
  -0.0008424062870189264,  0.006336871234111641,  -0.06219744774102756,  0.5449403208185631,
  -0.0008335200773730289,  0.007261701851444259,  -0.07956845641706424,  0.7045375570887652,
  -0.0008463464965962064,  0.008613484747936441,  -0.10211648161839533,  0.8992486547649509,
  -0.0008867171189919087,  0.010498772316775984,  -0.13072905581020683,  1.131473335044577,
  -0.0009620018624092452,  0.013040876995422222,  -0.16629639847360436,  1.4024132821795785,
  -0.0010813254320667376,  0.016379279469234124,  -0.20965840689950743,  1.7113718071778,
  -0.0012557732400553245,  0.020668355335111244,  -0.26157616620412166,  2.0562758361920364,
  -0.001498575727665541,  0.026074803418037362,  -0.32264220750653266,  2.4320306948502415,
  -0.0018252595759258305,  0.032774662841660536,  -0.39327744020533917,  2.832310990270375,
  -0.00225375455924004,  0.04094875710958236,  -0.47362742861992346,  3.247542795827136,
  -0.002804445820793422,  0.05077798966676283,  -0.5635688302293124,  3.6669356997734797,
  -0.003500163105456089,  0.062437564058541284,  -0.6626553559360655,  4.077941887240633,
  -0.0043661008841979765,  0.0760908227868633,  -0.77008759347336,  4.466354069285266,
  -0.005429666211521189,  0.09188321378879749,  -0.8847388554775083,  4.817944131078516,
  -0.006720254358292044,  0.10993597285837711,  -1.0051380630809492,  5.118024488445361,
  -0.008268955567122926,  0.13034058305250085,  -1.1295268565538672,  5.353188414694092,
  -0.010108199435561849,  0.1531535265260686,  -1.255873242423824,  5.510851982704125,
  -0.01227134624590609,  0.1783924604753722,  -1.381978701545679,  5.581745461226095,
  -0.014792236852012808,  0.20603274730454058,  -1.5054771887225917,  5.557832309132623,
  -0.017704714382386966,  0.23600611087671908,  -1.623979152704795,  5.435291489440176,
  -0.02104213191650639,  0.2681999022724178,  -1.7351069837329822,  5.213137318496799,
  -0.024836860493409496,  0.3024581145319978,  -1.8365975897322602,  4.8943144024960334,
  -0.02911981128874097,  0.3385833961322753,  -1.9263476838518663,  4.484375682091529,
  -0.03391998466560153,  0.3763405240711607,  -2.002506372745767,  3.9924061127532844,
  -0.039264057193182156,  0.41546083897846847,  -2.063540026224923,  3.4309294050904873,
  -0.045176015774920586,  0.45564708068211607,  -2.108217856686239,  2.8132191870688206,
  -0.05167684580363607,  0.49657951754350915,  -2.135691862170699,  2.1546930310581986,
  -0.058784278074387464,  0.5379221150369986,  -2.145503742368882,  1.4720282966446883,
  -0.06651259691313816,  0.5793288538835846,  -2.1375687730526276,  0.7817654582900391,
  -0.07487250998289574,  0.6204501756647645,  -2.1121812273881906,  0.1005737704106734,
  -0.08387107837681795,  0.660938939901687,  -2.0699482358238717,  -0.5571882960207676,
  -0.09351170406520715,  0.7004564382519977,  -2.0118043301061355,  -1.1777800028048666,
  -0.1037941705096892,  0.7386776516010303,  -1.938955340604722,  -1.7493859848032964,
  -0.11471473134370891,  0.7752959311399826,  -1.8528444394223622,  -2.2616387860765705,
  -0.12626624134655762,  0.8100266241640776,  -1.7550396552008198,  -2.7083583129852045,
  -0.13843832362192243,  0.8426110327792388,  -1.647293420315696,  -3.0834563769755006,
  -0.15121756669381203,  0.8728182536916264,  -1.53138542229656,  -3.3849589463362206,
  -0.16458774541274823,  0.9004472408314221,  -1.4091149233615692,  -3.613411396539433,
  -0.17853005970250146,  0.9253285731539653,  -1.2823613485338112,  -3.7677449288484848,
  -0.1930233856552166,  0.9473233443596456,  -1.152787735775737,  -3.8550731494912736,
  -0.2080445338422312,  0.9663251440669282,  -1.0221538280336067,  -3.876905141560477,
  -0.22356851032785197,  0.9822575621067492,  -0.8919756453390023,  -3.841196302150984,
  -0.23956877633717655,  0.9950744339966598,  -0.7637328940363731,  -3.7529273616532586,
  -0.25601750314867533,  1.004757271441477,  -0.6386597075263281,  -3.6216396854891446,
  -0.27288581932374956,  1.0113149126727092,  -0.5179751718169118,  -3.4515146572971545,
  -0.290144047881119,  1.0147799486884705,  -0.40261181076920194,  -3.2517868703465225,
  -0.3077619315444198,  1.0152074667929123,  -0.29336941610519457,  -3.030274459030009,
  -0.3257088446531329,  1.0126728162119434,  -0.1909247210281448,  -2.7929602304328944,
  -0.3439539906817817,  1.007269092079632,  -0.09580396316160587,  -2.545261937821667,
  -0.3624665847421984,  0.9991044028985486,  -0.00832380906003052,  -2.2946566462528817,
  -0.3812160207074986,  0.9883001826270612,  0.07127989502777134,  -2.045559558840712,
  -0.40017202287646336,  0.9749888581080804,  0.142876827228744,  -1.8012191796151173,
  -0.41930478233652435,  0.9593109648665744,  0.2065334827787164,  -1.5674757056852222,
  -0.43858507834823324,  0.9414148800520581,  0.2622210245501287,  -1.3419893245869465,
  -0.457984385279147,  0.9214519008647142,  0.3102840532998863,  -1.1329097280379683,
  -0.4774749656150794,  0.8995776700896025,  0.350924100520111,  -0.9395954544872396,
  -0.4970299498418205,  0.8759489986306164,  0.3844262962041706,  -0.7616394684967835,
  -0.5166234038755029,  0.8507219404641266,  0.41124723958766257,  -0.6032588735949616,
  -0.5362303849048673,  0.8240528785669349,  0.4315893465577775,  -0.4566937624927689,
  -0.5558269864455703,  0.796092385995486,  0.44621693603268325,  -0.334527600644811,
  -0.5753903734545689,  0.7669915615718423,  0.4552735940124304,  -0.22477732552396454,
  -0.594898808358532,  0.7368949154068004,  0.4592653962813549,  -0.12865546625083857,
  -0.6143316688163631,  0.7059415661087483,  0.4587541350845771,  -0.04930713070203554,
  -0.6336694580093012,  0.6742655059089414,  0.45421630136436464,  0.013351010739336425,
  -0.6528938082654727,  0.6419952540847547,  0.44601041775832667,  0.0638415188291839,
  -0.671987478773515,  0.609253193848314,  0.43444486124533294,  0.10763475557811222,
  -0.6909343480693215,  0.5761532008506691,  0.42007746549350233,  0.14051880613148526,
  -0.7097194020409532,  0.5428030801102962,  0.4033403234352994,  0.16161950988854637,
  -0.7283287180532814,  0.5093049321146808,  0.38441281350991785,  0.17945856130967625,
  -0.7467494458428221,  0.4757515272872723,  0.36382986450506455,  0.18796213055648905,
  -0.7649697857795068,  0.44223110539038724,  0.34172196901005686,  0.19507811894905616,
  -0.7829789650347543,  0.4088208614967782,  0.31885110259738225,  0.18393079031285164,
  -0.8007672122209817,  0.3755978677698798,  0.29490620241225024,  0.17747797390466974,
  -0.8183257310318415,  0.34262754617021673,  0.27035152812733393,  0.16809691827740403,
  -0.8356466733784167,  0.30997047667346334,  0.2454080646723364,  0.15613246370080863,
  -0.8527231125751265,  0.2776821034363124,  0.22007539994045897,  0.1503229051891503,
  -0.8695490170763458,  0.2458078889412257,  0.19501523005805657,  0.13197914126794016,
  -0.8861192253496697,  0.2143927998793557,  0.1700596292860306,  0.11336558889818169,
  -0.9024294224876923,  0.1834747248396055,  0.14522031860272314,  0.1008822422577469,
  -0.9184761192443098,  0.15308461722633734,  0.12088152358387703,  0.08303734747457973,
  -0.934256634298803,  0.12325141959936302,  0.09689566655697647,  0.06976962770561149,
  -0.9497690807073822,  0.09399729803877224,  0.07340833162152047,  0.059837703971412304,
  -0.9650123577317733,  0.06533743539522163,  0.05106147102606125,  0.030546304362283175,
  -0.9799861495589,  0.03729282283224224,  0.028845838288358933,  0.022613654960989917
};

}}  // namespace n2k::global_sk
