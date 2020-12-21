// Generated by inkscape - + inkscape-paths2openscad 0.27
// Fri Oct 23 17:23:33 2020 from "01 Brute.svg"

// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;
zsize = 5;
line_fn = 16;
min_line_width = 1.0;
line_width_scale = 1.0;
function min_line_mm(w) = max(min_line_width, w * line_width_scale) * 90/25.4;


path43_0_center = [0.038808,0.000000];
path43_0_points = [[-3.696246,162.222552],[-4.359436,162.063539],[-5.012862,161.886809],[-5.657627,161.691815],[-6.294838,161.478012],[-6.925598,161.244852],[-7.551012,160.991789],[-8.172187,160.718276],[-8.790226,160.423766],[-9.406234,160.107713],[-10.021316,159.769569],[-10.636578,159.408789],[-11.253124,159.024826],[-11.872059,158.617132],[-12.494487,158.185161],[-13.121515,157.728367],[-13.754246,157.246202],[-14.256333,156.834313],[-14.924568,156.253804],[-16.643818,154.693881],[-18.680683,152.780339],[-20.803846,150.727082],[-22.721027,148.852687],[-24.306266,147.325845],[-25.621848,146.092305],[-26.730061,145.097812],[-27.693189,144.288114],[-28.573520,143.608957],[-29.433340,143.006088],[-30.334936,142.425252],[-30.984965,142.044816],[-31.702400,141.667027],[-32.452258,141.306542],[-33.199556,140.978016],[-33.909310,140.696106],[-34.546539,140.475468],[-35.076259,140.330758],[-35.289870,140.291456],[-35.463486,140.276632],[-35.547310,140.268933],[-35.623207,140.244898],[-35.692072,140.199751],[-35.754800,140.128714],[-35.812284,140.027010],[-35.865420,139.889859],[-35.962222,139.490112],[-36.052363,138.891251],[-36.142998,138.055055],[-36.354376,135.517772],[-36.411341,134.577799],[-36.456311,133.412907],[-36.511583,130.513418],[-36.522832,127.029409],[-36.492698,123.170981],[-36.423820,119.148237],[-36.318837,115.171280],[-36.180389,111.450211],[-36.099441,109.751291],[-36.011116,108.195132],[-35.772624,104.512965],[-35.508902,100.722625],[-35.219810,96.822924],[-34.905208,92.812674],[-34.564956,88.690685],[-34.198915,84.455769],[-33.806945,80.106737],[-33.388906,75.642400],[-32.474064,66.363059],[-31.453273,56.608235],[-30.325413,46.368418],[-29.089369,35.634100],[-27.744024,24.395770],[-26.288259,12.643919],[-24.720958,0.369038],[-23.041003,-12.438384],[-21.247278,-25.787856],[-19.338665,-39.688888],[-17.314046,-54.150988],[-15.172306,-69.183668],[-12.897787,-84.870478],[-10.543031,-100.850271],[-8.219102,-116.396684],[-6.037062,-130.783357],[-4.107973,-143.283927],[-2.542897,-153.172034],[-1.931571,-156.909425],[-1.452897,-159.721315],[-1.120758,-161.516908],[-1.013977,-162.005220],[-0.949036,-162.205410],[-0.886370,-162.262099],[-0.797721,-162.314986],[-0.558867,-162.404719],[-0.265265,-162.465350],[0.050294,-162.487618],[0.251994,-162.481575],[0.424932,-162.462378],[0.572219,-162.428422],[0.696966,-162.378105],[0.802282,-162.309822],[0.891278,-162.221969],[0.967066,-162.112944],[1.032754,-161.981143],[1.099282,-161.732384],[1.205551,-161.216111],[1.515368,-159.507505],[1.918311,-157.108299],[2.370484,-154.271468],[4.671511,-139.395791],[6.897359,-124.840622],[9.047482,-110.610720],[11.121335,-96.710843],[13.118372,-83.145751],[15.038048,-69.920204],[16.879817,-57.038961],[18.643134,-44.506780],[20.327453,-32.328422],[21.932228,-20.508646],[23.456914,-9.052211],[24.900965,2.036124],[26.263836,12.751599],[27.544981,23.089456],[28.743855,33.044934],[29.859912,42.613275],[30.892606,51.789719],[31.841392,60.569506],[32.705724,68.947879],[33.485058,76.920076],[34.178846,84.481339],[34.786544,91.626909],[35.307606,98.352026],[35.741486,104.651931],[35.925562,107.640942],[36.087639,110.521865],[36.227648,113.294106],[36.345520,115.957068],[36.441187,118.510159],[36.514582,120.952782],[36.565636,123.284342],[36.594280,125.504246],[36.600448,127.611897],[36.584069,129.606701],[36.545077,131.488063],[36.483403,133.255388],[36.398979,134.908082],[36.291737,136.445549],[36.161608,137.867194],[36.008524,139.172422],[35.871374,140.211422],[34.624694,140.490432],[34.318198,140.567530],[33.991685,140.665738],[33.286569,140.921379],[32.525267,141.249148],[31.723698,141.640836],[30.897784,142.088236],[30.063445,142.583139],[29.236602,143.117337],[28.433174,143.682622],[28.004877,144.021928],[27.409695,144.529553],[25.826734,145.950665],[23.900409,147.747770],[21.846834,149.722682],[19.806749,151.703183],[17.917161,153.515489],[16.388572,154.959089],[15.431484,155.833472],[14.774015,156.393681],[14.117004,156.930098],[13.460622,157.442622],[12.805038,157.931156],[12.150423,158.395600],[11.496947,158.835853],[10.844781,159.251818],[10.194094,159.643394],[9.545058,160.010482],[8.897841,160.352983],[8.252616,160.670797],[7.609551,160.963825],[6.968817,161.231968],[6.330584,161.475127],[5.695023,161.693201],[5.062304,161.886092],[4.622455,161.999028],[4.136403,162.100934],[3.610975,162.191547],[3.053001,162.270605],[1.866717,162.393009],[0.632172,162.466046],[-0.596016,162.487618],[-1.763228,162.455625],[-2.306899,162.418886],[-2.814844,162.367969],[-3.280236,162.302612],[-3.696246,162.222552],[-3.696246,162.222552]];
path43_1_center = [-111.354608,23.314984];
path43_1_points = [[-86.413566,154.668532],[-87.055905,154.549501],[-87.738795,154.392018],[-88.428047,154.207138],[-89.089474,154.005917],[-89.688889,153.799411],[-90.192105,153.598674],[-90.564933,153.414763],[-90.691768,153.332572],[-90.773186,153.258732],[-90.823497,153.131243],[-90.881320,152.870206],[-91.011327,152.010987],[-91.146856,150.808066],[-91.271556,149.388432],[-91.328753,148.514298],[-91.374290,147.537933],[-91.430460,145.282747],[-91.440223,142.631334],[-91.403736,139.592157],[-91.321153,136.173677],[-91.192631,132.384355],[-91.018327,128.232653],[-90.798396,123.727032],[-90.595536,119.262722],[-90.429036,114.486205],[-90.301439,109.584377],[-90.215287,104.744134],[-90.173123,100.152371],[-90.177490,95.995986],[-90.197917,94.139465],[-90.230930,92.461875],[-90.276847,90.986576],[-90.335986,89.736932],[-90.461245,87.769986],[-90.604479,85.861556],[-90.766273,84.010105],[-90.947215,82.214095],[-91.147888,80.471990],[-91.368880,78.782253],[-91.610775,77.143345],[-91.874159,75.553731],[-92.159619,74.011872],[-92.467739,72.516232],[-92.799106,71.065274],[-93.154305,69.657460],[-93.533922,68.291253],[-93.938543,66.965116],[-94.368753,65.677512],[-94.825138,64.426904],[-95.308284,63.211754],[-95.818776,62.030525],[-96.357201,60.881681],[-96.924143,59.763684],[-97.520189,58.674996],[-98.145924,57.614081],[-98.801935,56.579402],[-99.488806,55.569421],[-100.207123,54.582601],[-100.957473,53.617405],[-101.740440,52.672296],[-102.556611,51.745737],[-103.406572,50.836190],[-104.290907,49.942118],[-105.210203,49.061985],[-106.165046,48.194252],[-107.308090,47.197023],[-108.461615,46.223880],[-109.639669,45.265432],[-110.856303,44.312289],[-112.125565,43.355059],[-113.461503,42.384352],[-114.878169,41.390777],[-116.389609,40.364944],[-118.009874,39.297460],[-119.753013,38.178936],[-121.633075,36.999980],[-123.664109,35.751203],[-125.860164,34.423212],[-128.235289,33.006617],[-133.578946,29.870052],[-139.355930,26.481432],[-141.901084,24.965736],[-144.239817,23.554079],[-146.388982,22.235182],[-148.365433,20.997766],[-150.186024,19.830552],[-151.867608,18.722262],[-153.427038,17.661618],[-154.881169,16.637339],[-156.246853,15.638149],[-157.540944,14.652768],[-158.780297,13.669917],[-159.981763,12.678319],[-161.162197,11.666693],[-162.338453,10.623762],[-163.298220,9.743599],[-164.219820,8.865203],[-165.104023,7.986791],[-165.951599,7.106578],[-166.763320,6.222780],[-167.539955,5.333613],[-168.282274,4.437292],[-168.991047,3.532034],[-169.667046,2.616055],[-170.311040,1.687569],[-170.923800,0.744794],[-171.506096,-0.214056],[-172.058699,-1.190764],[-172.582377,-2.187115],[-173.077903,-3.204892],[-173.546046,-4.245880],[-173.987577,-5.311863],[-174.403265,-6.404626],[-174.793882,-7.525952],[-175.160197,-8.677626],[-175.502981,-9.861431],[-175.823004,-11.079153],[-176.121036,-12.332575],[-176.397848,-13.623481],[-176.654210,-14.953655],[-176.890893,-16.324883],[-177.108666,-17.738947],[-177.308300,-19.197632],[-177.490566,-20.702723],[-177.656233,-22.256003],[-177.806072,-23.859256],[-177.940853,-25.514268],[-177.997646,-26.433463],[-178.046871,-27.575599],[-178.122611,-30.422277],[-178.168071,-33.841471],[-178.183249,-37.620349],[-178.168143,-41.546079],[-178.122751,-45.405830],[-178.047071,-48.986770],[-177.941100,-52.076068],[-177.331412,-65.807168],[-177.183156,-69.703520],[-177.071564,-73.865245],[-176.997367,-78.115539],[-176.961295,-82.277599],[-176.964079,-86.174621],[-177.006448,-89.629800],[-177.042705,-91.136448],[-177.089133,-92.466334],[-177.145822,-93.597357],[-177.212864,-94.507418],[-177.360548,-96.028854],[-177.518262,-97.461896],[-177.686869,-98.812268],[-177.867230,-100.085691],[-178.060210,-101.287890],[-178.266672,-102.424587],[-178.487478,-103.501505],[-178.723492,-104.524368],[-178.942320,-105.441774],[-179.101117,-106.172263],[-179.200698,-106.740398],[-179.241876,-107.170743],[-179.240818,-107.341921],[-179.225465,-107.487862],[-179.195918,-107.611638],[-179.152279,-107.716319],[-179.094650,-107.804975],[-179.023132,-107.880676],[-178.838839,-108.005499],[-178.674481,-108.087181],[-178.517942,-108.149351],[-178.365601,-108.189793],[-178.213835,-108.206293],[-178.059025,-108.196635],[-177.897547,-108.158605],[-177.725781,-108.089987],[-177.540105,-107.988565],[-177.336898,-107.852126],[-177.112538,-107.678454],[-176.585872,-107.210550],[-175.931137,-106.567132],[-175.119361,-105.730481],[-174.273980,-104.827104],[-173.439642,-103.892965],[-172.616415,-102.928164],[-171.804369,-101.932805],[-171.003570,-100.906988],[-170.214089,-99.850816],[-169.435992,-98.764389],[-168.669348,-97.647809],[-167.914226,-96.501178],[-167.170693,-95.324598],[-166.438819,-94.118169],[-165.718671,-92.881995],[-165.010318,-91.616176],[-164.313828,-90.320814],[-163.629270,-88.996011],[-162.956712,-87.641868],[-162.144376,-85.939774],[-161.358491,-84.222160],[-160.595700,-82.479080],[-159.852645,-80.700589],[-159.125968,-78.876741],[-158.412312,-76.997591],[-157.708319,-75.053194],[-157.010630,-73.033603],[-156.315889,-70.928874],[-155.620738,-68.729061],[-154.921818,-66.424218],[-154.215773,-64.004400],[-153.499244,-61.459662],[-152.768874,-58.780057],[-152.021305,-55.955641],[-151.253179,-52.976468],[-149.696791,-46.952426],[-149.014828,-44.396913],[-148.386438,-42.117395],[-147.803686,-40.092614],[-147.258637,-38.301314],[-146.743356,-36.722237],[-146.249907,-35.334125],[-145.770356,-34.115722],[-145.296766,-33.045770],[-144.821202,-32.103012],[-144.580201,-31.672687],[-144.335730,-31.266190],[-144.086798,-30.880862],[-143.832414,-30.514046],[-143.303318,-29.825325],[-142.740508,-29.178768],[-142.136048,-28.553118],[-141.268688,-27.729348],[-140.338428,-26.920411],[-139.326982,-26.116577],[-138.216067,-25.308119],[-136.987398,-24.485307],[-135.622690,-23.638413],[-134.103659,-22.757706],[-132.412020,-21.833459],[-130.529489,-20.855942],[-128.437782,-19.815427],[-126.118613,-18.702184],[-123.553698,-17.506485],[-120.724754,-16.218601],[-117.613494,-14.828803],[-114.201635,-13.327361],[-110.470893,-11.704548],[-105.670998,-9.610584],[-101.191854,-7.621961],[-97.014122,-5.728146],[-93.118463,-3.918608],[-89.485538,-2.182814],[-86.096006,-0.510233],[-82.930530,1.109669],[-79.969769,2.687422],[-78.560114,3.463785],[-77.194385,4.233560],[-75.870165,4.998064],[-74.585037,5.758614],[-73.336584,6.516526],[-72.122388,7.273117],[-70.940032,8.029703],[-69.787097,8.787600],[-68.661168,9.548126],[-67.559826,10.312596],[-66.480654,11.082328],[-65.421235,11.858637],[-64.379151,12.642841],[-63.351984,13.436255],[-62.337319,14.240197],[-61.332736,15.055982],[-60.099156,16.101684],[-58.801487,17.258671],[-57.487056,18.480353],[-56.203193,19.720135],[-54.997228,20.931426],[-53.916491,22.067632],[-53.008310,23.082162],[-52.633719,23.529238],[-52.320016,23.928422],[-51.950324,24.432893],[-51.585538,24.958407],[-51.225810,25.504534],[-50.871293,26.070842],[-50.178501,27.262274],[-49.508383,28.529253],[-48.862158,29.868328],[-48.241046,31.276045],[-47.646268,32.748955],[-47.079044,34.283605],[-46.540595,35.876544],[-46.032139,37.524320],[-45.554898,39.223482],[-45.110092,40.970578],[-44.698940,42.762156],[-44.322663,44.594766],[-43.982482,46.464955],[-43.679616,48.369272],[-43.572412,49.128607],[-43.500504,49.792625],[-43.467339,50.451244],[-43.476368,51.194384],[-43.531039,52.111962],[-43.634801,53.293899],[-44.003396,56.810522],[-45.038109,66.603271],[-46.078760,76.870569],[-47.096720,87.301753],[-48.063362,97.586161],[-48.950056,107.413131],[-49.728173,116.471999],[-50.369086,124.452104],[-50.629144,127.940538],[-50.844166,131.042782],[-51.315606,138.143222],[-51.452496,140.178912],[-54.192446,140.810792],[-55.413527,141.106688],[-56.640041,141.431705],[-57.866024,141.783413],[-59.085515,142.159383],[-60.292551,142.557184],[-61.481171,142.974386],[-62.645412,143.408559],[-63.779312,143.857274],[-64.876909,144.318098],[-65.932240,144.788604],[-66.939344,145.266360],[-67.892258,145.748936],[-68.785021,146.233903],[-69.611669,146.718829],[-70.366242,147.201286],[-71.042776,147.678842],[-71.699441,148.199121],[-72.311134,148.744704],[-72.872984,149.309653],[-73.380122,149.888029],[-73.827676,150.473891],[-74.210777,151.061303],[-74.524554,151.644323],[-74.653923,151.932330],[-74.764136,152.217012],[-74.889320,152.554558],[-75.005590,152.823112],[-75.124709,153.034700],[-75.258441,153.201347],[-75.418550,153.335079],[-75.616801,153.447920],[-75.864958,153.551896],[-76.174786,153.659032],[-76.768857,153.841792],[-77.389035,154.010568],[-78.031037,154.164937],[-78.690578,154.304477],[-79.363374,154.428765],[-80.045140,154.537380],[-80.731591,154.629898],[-81.418443,154.705897],[-82.101412,154.764956],[-82.776213,154.806651],[-83.438562,154.830560],[-84.084174,154.836260],[-84.708765,154.823331],[-85.308050,154.791347],[-85.877745,154.739889],[-86.413566,154.668532],[-86.413566,154.668532]];
path43_2_center = [111.270060,23.306163];
path43_2_points = [[80.397404,154.654332],[79.288332,154.470010],[78.252488,154.254278],[77.312878,154.015077],[76.492513,153.760345],[75.814400,153.498022],[75.535878,153.366495],[75.301547,153.236048],[75.114283,153.107672],[74.976962,152.982361],[74.892461,152.861107],[74.863654,152.744902],[74.852113,152.598876],[74.818353,152.432893],[74.689366,152.049663],[74.487070,151.612433],[74.221839,151.138422],[73.904051,150.644849],[73.544080,150.148934],[73.152303,149.667895],[72.739094,149.218952],[72.231035,148.742980],[71.604683,148.221623],[70.885427,147.672363],[70.098659,147.112679],[69.269770,146.560050],[68.424148,146.031958],[67.587186,145.545882],[66.784274,145.119302],[66.162626,144.818219],[65.480483,144.509115],[64.744514,144.194231],[63.961389,143.875808],[62.280351,143.237306],[60.490723,142.611532],[58.645863,142.016412],[56.799127,141.469867],[55.003872,140.989823],[54.142224,140.780339],[53.313454,140.594202],[52.595856,140.462616],[52.312983,140.407797],[52.074288,140.339333],[51.874942,140.241503],[51.788515,140.176664],[51.710115,140.098587],[51.639137,140.005309],[51.574978,139.894864],[51.464702,139.614614],[51.374457,139.242114],[51.299414,138.761646],[51.234744,138.157488],[51.175617,137.413919],[51.054675,135.445666],[50.897954,132.731122],[50.718277,129.883872],[50.505500,126.785310],[49.983482,119.865620],[49.337572,112.034787],[48.573444,103.355547],[47.696772,93.890635],[46.713227,83.702787],[45.628484,72.854738],[44.448214,61.409222],[43.298244,50.414122],[43.886024,46.889322],[44.176631,45.244776],[44.495445,43.625462],[44.841494,42.034194],[45.213809,40.473784],[45.611419,38.947046],[46.033353,37.456793],[46.478640,36.005837],[46.946309,34.596991],[47.435391,33.233069],[47.944914,31.916883],[48.473908,30.651247],[49.021402,29.438973],[49.586425,28.282875],[50.168007,27.185765],[50.765177,26.150457],[51.376964,25.179762],[51.810623,24.561603],[52.330097,23.888706],[52.928954,23.167215],[53.600759,22.403271],[54.339081,21.603019],[55.137486,20.772600],[55.989540,19.918159],[56.888812,19.045837],[57.828867,18.161779],[58.803273,17.272126],[59.805597,16.383023],[60.829406,15.500611],[61.868266,14.631034],[62.915744,13.780435],[63.965408,12.954957],[65.010824,12.160742],[66.928632,10.759081],[68.881843,9.391083],[70.888377,8.047316],[72.966154,6.718347],[75.133093,5.394744],[77.407115,4.067076],[79.806139,2.725910],[82.348086,1.361814],[85.050874,-0.034644],[87.932426,-1.472896],[91.010659,-2.962374],[94.303494,-4.512510],[97.828851,-6.132736],[101.604651,-7.832485],[105.648812,-9.621188],[109.979254,-11.508278],[116.044066,-14.148425],[121.056784,-16.367851],[123.218009,-17.344003],[125.175490,-18.244028],[126.948988,-19.077610],[128.558263,-19.854431],[130.023075,-20.584178],[131.363185,-21.276533],[132.598352,-21.941182],[133.748337,-22.587808],[134.832900,-23.226095],[135.871800,-23.865728],[136.884798,-24.516391],[137.891654,-25.187768],[139.134984,-26.047682],[140.249286,-26.868308],[140.762877,-27.273783],[141.250002,-27.681310],[141.712589,-28.094846],[142.152570,-28.518350],[142.571874,-28.955780],[142.972431,-29.411093],[143.356171,-29.888248],[143.725024,-30.391203],[144.080920,-30.923914],[144.425789,-31.490342],[144.761562,-32.094442],[145.090167,-32.740174],[145.413535,-33.431495],[145.733596,-34.172363],[146.052280,-34.966737],[146.371517,-35.818573],[146.693237,-36.731831],[147.019369,-37.710467],[147.692592,-39.879709],[148.406627,-42.357963],[149.176912,-45.176891],[150.018888,-48.368158],[150.947994,-51.963428],[151.847557,-55.441687],[152.655323,-58.507978],[153.390842,-61.231148],[154.073667,-63.680045],[154.723348,-65.923518],[155.359437,-68.030416],[156.001485,-70.069586],[156.669044,-72.109878],[157.418889,-74.311588],[158.181732,-76.448985],[158.958325,-78.523592],[159.749418,-80.536931],[160.555761,-82.490527],[161.378105,-84.385901],[162.217200,-86.224576],[163.073797,-88.008075],[163.948645,-89.737921],[164.842496,-91.415637],[165.756100,-93.042745],[166.690207,-94.620769],[167.645567,-96.151231],[168.622932,-97.635654],[169.623051,-99.075561],[170.646674,-100.472475],[171.512728,-101.586652],[172.503504,-102.802377],[173.553616,-104.045883],[174.597681,-105.243399],[175.570312,-106.321158],[176.406124,-107.205390],[177.039734,-107.822328],[177.260279,-108.007508],[177.405754,-108.098202],[177.642441,-108.175306],[177.865944,-108.219619],[178.077012,-108.230992],[178.276396,-108.209277],[178.464845,-108.154325],[178.643109,-108.065987],[178.811939,-107.944116],[178.972084,-107.788563],[179.100663,-107.636331],[179.189794,-107.485713],[179.237519,-107.306399],[179.241876,-107.068079],[179.200905,-106.740442],[179.112646,-106.293180],[178.786424,-104.918538],[178.538570,-103.862411],[178.310944,-102.797177],[178.101202,-101.708427],[177.907001,-100.581756],[177.725996,-99.402756],[177.555844,-98.157022],[177.394202,-96.830147],[177.238724,-95.407725],[177.154034,-94.385966],[177.083805,-93.107589],[177.027849,-91.595881],[176.985979,-89.874125],[176.958006,-87.965607],[176.943743,-85.893611],[176.955596,-81.352327],[177.020033,-76.436552],[177.135552,-71.332566],[177.300650,-66.226648],[177.401322,-63.731177],[177.513824,-61.305078],[177.626982,-58.830486],[177.728342,-56.220648],[177.894763,-50.723847],[178.011267,-45.071908],[178.076034,-39.522063],[178.087246,-34.331544],[178.072200,-31.951418],[178.043083,-29.757586],[177.999668,-27.782201],[177.941726,-26.057419],[177.869031,-24.615393],[177.781354,-23.488278],[177.618761,-21.933871],[177.444378,-20.430796],[177.257303,-18.977073],[177.056635,-17.570721],[176.841473,-16.209762],[176.610916,-14.892214],[176.364063,-13.616098],[176.100012,-12.379433],[175.817863,-11.180240],[175.516714,-10.016538],[175.195663,-8.886348],[174.853810,-7.787689],[174.490254,-6.718582],[174.104093,-5.677046],[173.694426,-4.661101],[173.260352,-3.668768],[172.800969,-2.698065],[172.315377,-1.747014],[171.802675,-0.813634],[171.261960,0.104055],[170.692332,1.008034],[170.092890,1.900281],[169.462732,2.782777],[168.800957,3.657503],[168.106665,4.526437],[167.378953,5.391561],[166.616921,6.254855],[165.819668,7.118297],[164.986292,7.983869],[164.115891,8.853551],[163.207566,9.729322],[162.260414,10.613162],[161.145734,11.616674],[159.993183,12.611301],[158.790963,13.604947],[157.527277,14.605514],[156.190326,15.620906],[154.768312,16.659023],[153.249436,17.727771],[151.621901,18.835050],[149.873907,19.988764],[147.993658,21.196815],[145.969354,22.467106],[143.789198,23.807539],[141.441391,25.226018],[138.914136,26.730445],[133.274084,30.028752],[129.149710,32.436128],[125.488670,34.613637],[122.234524,36.597424],[119.330832,38.423639],[116.721154,40.128426],[115.508933,40.946581],[114.349050,41.747935],[113.234451,42.537005],[112.158080,43.318311],[111.112883,44.096371],[110.091804,44.875702],[109.484637,45.357497],[108.832559,45.898077],[107.428877,47.121179],[105.951170,48.476189],[104.469848,49.894286],[103.055323,51.306649],[101.778005,52.644456],[101.212802,53.263895],[100.708305,53.838887],[100.273316,54.360831],[99.916634,54.821122],[99.403468,55.535869],[98.905058,56.268457],[98.421325,57.019168],[97.952189,57.788282],[97.497567,58.576080],[97.057380,59.382844],[96.631548,60.208854],[96.219989,61.054392],[95.822622,61.919739],[95.439368,62.805175],[95.070146,63.710982],[94.714874,64.637440],[94.373473,65.584831],[94.045862,66.553436],[93.731959,67.543535],[93.431686,68.555410],[93.144960,69.589342],[92.871701,70.645611],[92.611829,71.724499],[92.365262,72.826288],[92.131921,73.951257],[91.911725,75.099687],[91.704593,76.271861],[91.510444,77.468059],[91.329199,78.688561],[91.160775,79.933650],[91.005093,81.203605],[90.862072,82.498708],[90.613690,85.165483],[90.414984,87.936222],[90.310302,89.741717],[90.221913,91.515574],[90.150062,93.279913],[90.094997,95.056856],[90.056966,96.868525],[90.036215,98.737040],[90.032991,100.684522],[90.047542,102.733092],[90.080114,104.904872],[90.130954,107.221983],[90.288427,112.380681],[90.521939,118.386154],[90.833464,125.415372],[91.051213,130.238253],[91.218257,134.231646],[91.337276,137.523277],[91.410951,140.240871],[91.441960,142.512153],[91.432984,144.464847],[91.386702,146.226678],[91.305794,147.925372],[91.202823,149.682113],[91.108069,151.011951],[91.002438,151.982439],[90.939578,152.354036],[90.866838,152.661129],[90.781832,152.912159],[90.682174,153.115573],[90.565477,153.279813],[90.429353,153.413323],[90.271417,153.524549],[90.089281,153.621933],[89.642864,153.808952],[89.178712,153.977935],[88.684205,154.132821],[88.162598,154.273312],[87.617149,154.399112],[87.051114,154.509922],[86.467750,154.605444],[85.870312,154.685381],[85.262058,154.749435],[84.646244,154.797308],[84.026126,154.828701],[83.404961,154.843319],[82.786005,154.840861],[82.172515,154.821032],[81.567747,154.783533],[80.974958,154.728065],[80.397404,154.654332],[80.397404,154.654332]];
module poly_path43(h, w, s, res=line_fn)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    translate (path43_0_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path43_0_center) polygon(path43_0_points);
    translate (path43_1_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path43_1_center) polygon(path43_1_points);
    translate (path43_2_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path43_2_center) polygon(path43_2_points);
  }
}

module 01_Brute(h)
{
  difference()
  {
    union()
    {
      translate ([0,0,0]) poly_path43(h, min_line_mm(0.2251), 100.0);
    }
    union()
    {
    }
  }
}

//01_Brute(zsize);
