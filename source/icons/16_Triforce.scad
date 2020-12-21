// Generated by inkscape - + inkscape-paths2openscad 0.27
// Fri Oct 23 17:42:25 2020 from "16 Triangles.svg"

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


path11_0_center = [-0.365856,93.375000];
path11_0_points = [[-2.401752,180.661935],[-2.774451,180.445593],[-3.142197,180.198804],[-3.462610,179.951969],[-3.693312,179.735485],[-4.833498,177.805382],[-7.920911,172.499948],[-18.829189,153.680840],[-51.821944,96.633913],[-84.939900,39.278710],[-96.004680,20.074256],[-99.193819,14.518348],[-100.451382,12.299235],[-100.562495,12.064885],[-100.658928,11.826905],[-100.808687,11.342386],[-100.902526,10.850345],[-100.942316,10.355446],[-100.929926,9.862356],[-100.867224,9.375740],[-100.756081,8.900265],[-100.598364,8.440594],[-100.395944,8.001395],[-100.150690,7.587333],[-99.864471,7.203073],[-99.539156,6.853281],[-99.176614,6.542622],[-98.778715,6.275763],[-98.567091,6.160216],[-98.347328,6.057369],[-98.119660,5.967804],[-97.884322,5.892105],[-97.383142,5.863283],[-96.092513,5.836154],[-91.179162,5.787073],[-83.216785,5.745042],[-72.277899,5.710245],[-41.760670,5.663081],[-0.207612,5.647035],[49.020535,5.660188],[65.993223,5.679613],[78.637660,5.710255],[87.528346,5.754106],[93.239786,5.813153],[95.082821,5.848997],[96.346483,5.889386],[97.102584,5.934570],[97.312741,5.959037],[97.422938,5.984795],[97.772279,6.152963],[98.105376,6.357028],[98.420511,6.593691],[98.715968,6.859650],[98.990030,7.151606],[99.240981,7.466258],[99.467105,7.800306],[99.666685,8.150450],[99.838003,8.513390],[99.979345,8.885825],[100.088992,9.264454],[100.165229,9.645979],[100.206338,10.027097],[100.210604,10.404510],[100.176310,10.774916],[100.101738,11.135015],[99.802132,11.701915],[98.975916,13.179160],[95.883642,18.621883],[84.919646,37.760608],[69.449563,64.666285],[51.713203,95.454008],[33.950380,126.238870],[18.400906,153.135966],[7.304591,172.260390],[4.126310,177.693817],[3.252128,179.165878],[2.901248,179.727235],[2.656488,179.971704],[2.386243,180.193820],[2.093497,180.393059],[1.781235,180.568894],[1.452441,180.720799],[1.110101,180.848248],[0.757198,180.950715],[0.396718,181.027674],[0.031646,181.078599],[-0.335035,181.102965],[-0.700340,181.100243],[-1.061283,181.069910],[-1.414880,181.011439],[-1.758147,180.924303],[-2.088099,180.807978],[-2.401752,180.661935],[-2.401752,180.661935]];
path11_1_center = [-107.768481,-93.380588];
path11_1_points = [[-109.526492,-5.943455],[-109.869893,-6.135466],[-110.250473,-6.400562],[-110.621920,-6.703746],[-110.937922,-7.010025],[-111.297305,-7.578530],[-112.179293,-9.056036],[-115.371233,-14.495735],[-120.234041,-22.844493],[-126.488017,-33.617680],[-142.050675,-60.498825],[-159.821607,-91.262133],[-177.563213,-122.030569],[-193.037896,-148.927097],[-199.225891,-159.711821],[-204.008055,-168.074681],[-207.104689,-173.531045],[-207.933525,-175.017845],[-208.236092,-175.596285],[-208.315135,-175.958815],[-208.360105,-176.323007],[-208.371890,-176.686977],[-208.351377,-177.048839],[-208.299453,-177.406706],[-208.217007,-177.758695],[-208.104925,-178.102920],[-207.964094,-178.437495],[-207.795403,-178.760534],[-207.599738,-179.070154],[-207.377987,-179.364468],[-207.131038,-179.641590],[-206.859777,-179.899637],[-206.565093,-180.136722],[-206.247872,-180.350959],[-205.909002,-180.540465],[-204.795552,-181.102965],[-107.786022,-181.097965],[-53.130067,-181.085547],[-35.906599,-181.065554],[-24.050532,-181.029898],[-16.535158,-180.973724],[-14.084386,-180.936425],[-12.333774,-180.892175],[-11.154982,-180.840368],[-10.419673,-180.780397],[-9.999509,-180.711655],[-9.766152,-180.633535],[-9.419092,-180.460624],[-9.095501,-180.268164],[-8.795714,-180.056779],[-8.520066,-179.827099],[-8.268893,-179.579748],[-8.042530,-179.315355],[-7.841314,-179.034545],[-7.665579,-178.737946],[-7.515661,-178.426184],[-7.391896,-178.099887],[-7.294619,-177.759680],[-7.224166,-177.406192],[-7.180872,-177.040049],[-7.165073,-176.661877],[-7.177105,-176.272303],[-7.217302,-175.871955],[-7.267781,-175.737285],[-7.403062,-175.457466],[-7.931993,-174.455447],[-8.812025,-172.852046],[-10.051086,-170.633408],[-13.638018,-164.295013],[-18.756227,-155.329435],[-25.469151,-143.625848],[-33.840230,-129.073428],[-55.810602,-90.978785],[-81.400052,-46.690694],[-89.961026,-31.915746],[-96.192853,-21.209173],[-100.465551,-13.937706],[-101.982858,-11.392242],[-103.149138,-9.468078],[-104.010644,-8.086057],[-104.613629,-7.167020],[-105.004344,-6.631809],[-105.134554,-6.483401],[-105.229042,-6.401265],[-105.453848,-6.264652],[-105.696728,-6.141142],[-105.955059,-6.031013],[-106.226220,-5.934544],[-106.507588,-5.852013],[-106.796543,-5.783701],[-107.090461,-5.729885],[-107.386722,-5.690846],[-107.682702,-5.666861],[-107.975781,-5.658210],[-108.263336,-5.665173],[-108.542746,-5.688027],[-108.811388,-5.727052],[-109.066641,-5.782528],[-109.305883,-5.854732],[-109.526492,-5.943945],[-109.526492,-5.943455]];
path11_2_center = [107.814630,-93.358455];
path11_2_points = [[105.944478,-6.081245],[105.725029,-6.192252],[105.495657,-6.328945],[105.034278,-6.657938],[104.614607,-7.025337],[104.437370,-7.210037],[104.290908,-7.388255],[103.127940,-9.362799],[100.033454,-14.685397],[89.148904,-33.472714],[56.290318,-90.301553],[23.298758,-147.442136],[12.247989,-166.619132],[9.045461,-172.195021],[7.757828,-174.461825],[7.566156,-174.879280],[7.421438,-175.309387],[7.322510,-175.748430],[7.268208,-176.192695],[7.257370,-176.638466],[7.288831,-177.082029],[7.361427,-177.519670],[7.473996,-177.947672],[7.625373,-178.362322],[7.814395,-178.759904],[8.039899,-179.136705],[8.300720,-179.489008],[8.595695,-179.813099],[8.923660,-180.105264],[9.283453,-180.361787],[9.673908,-180.578955],[10.756368,-181.102965],[107.786158,-181.102965],[151.653221,-181.087602],[181.948570,-181.039840],[192.295571,-181.003023],[199.596108,-180.957165],[203.965667,-180.901950],[205.087421,-180.870735],[205.519738,-180.837065],[205.857102,-180.681354],[206.208263,-180.467840],[206.562601,-180.206379],[206.909497,-179.906832],[207.238331,-179.579058],[207.538482,-179.232916],[207.799331,-178.878265],[208.010258,-178.524965],[208.098325,-178.333255],[208.174075,-178.120939],[208.237543,-177.890853],[208.288764,-177.645836],[208.354608,-177.122358],[208.371890,-176.573208],[208.340893,-176.021090],[208.261900,-175.488706],[208.204493,-175.237009],[208.135194,-174.998760],[208.054037,-174.776796],[207.961058,-174.573955],[206.711090,-172.372621],[203.525506,-166.826580],[192.457821,-147.621928],[159.308738,-90.213217],[126.279168,-33.092675],[115.360874,-14.248234],[112.272393,-8.936330],[111.134468,-7.005155],[111.011156,-6.877254],[110.864980,-6.749765],[110.514255,-6.500350],[110.102733,-6.265563],[109.650852,-6.054058],[109.179053,-5.874490],[108.707774,-5.735512],[108.257456,-5.645779],[107.848538,-5.613945],[107.651767,-5.623482],[107.427597,-5.650818],[106.928297,-5.751216],[106.413110,-5.899803],[105.944508,-6.081245],[105.944478,-6.081245]];
path11_3_center = [-0.360029,-76.906761];
path11_3_points = [[-66.104032,-18.859375],[-66.309378,-18.996389],[-66.500726,-19.147884],[-66.677566,-19.312613],[-66.839390,-19.489329],[-66.985688,-19.676784],[-67.115949,-19.873732],[-67.229665,-20.078925],[-67.326325,-20.291117],[-67.405421,-20.509060],[-67.466443,-20.731508],[-67.508881,-20.957212],[-67.532226,-21.184927],[-67.535968,-21.413404],[-67.519598,-21.641398],[-67.482605,-21.867660],[-67.424482,-22.090945],[-67.195224,-22.554392],[-66.616609,-23.616834],[-64.504272,-27.378159],[-61.273388,-33.053828],[-57.109881,-40.322748],[-46.728677,-58.355978],[-34.848025,-78.909117],[-22.955293,-99.413432],[-12.537845,-117.300190],[-8.347155,-124.459256],[-5.083049,-130.000658],[-2.931448,-133.603305],[-2.330937,-134.577254],[-2.078272,-134.946105],[-1.899440,-135.066412],[-1.708365,-135.170708],[-1.506791,-135.258990],[-1.296463,-135.331259],[-1.079126,-135.387512],[-0.856523,-135.427750],[-0.630400,-135.451972],[-0.402500,-135.460177],[-0.174570,-135.452364],[0.051648,-135.428532],[0.274408,-135.388681],[0.491967,-135.332809],[0.702578,-135.260917],[0.904499,-135.173002],[1.095984,-135.069065],[1.275288,-134.949105],[1.349255,-134.863475],[1.484094,-134.671180],[1.936261,-133.966822],[3.569640,-131.280583],[6.173336,-126.893954],[9.745263,-120.810502],[14.283335,-113.033793],[19.785465,-103.567393],[33.673548,-79.579785],[46.044549,-58.158597],[56.294277,-40.381568],[63.356593,-28.099825],[65.359303,-24.598163],[66.165358,-23.164495],[66.419487,-22.657151],[66.607028,-22.257691],[66.732559,-21.937920],[66.800661,-21.669646],[66.815911,-21.424674],[66.782888,-21.174812],[66.706171,-20.891867],[66.590338,-20.547645],[66.492790,-20.298667],[66.377609,-20.060081],[66.245826,-19.833266],[66.098476,-19.619600],[65.936589,-19.420461],[65.761199,-19.237228],[65.573338,-19.071279],[65.374038,-18.923995],[64.524558,-18.353345],[-0.375962,-18.354345],[-37.806083,-18.363086],[-49.367906,-18.382231],[-57.176217,-18.419028],[-61.992500,-18.479332],[-63.516595,-18.520128],[-64.578241,-18.568996],[-65.272621,-18.626667],[-65.694923,-18.693872],[-65.940331,-18.771344],[-66.104032,-18.859815],[-66.104032,-18.859375]];
module poly_path11(h, w, s, res=line_fn)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    translate (path11_0_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path11_0_center) polygon(path11_0_points);
    translate (path11_1_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path11_1_center) polygon(path11_1_points);
    translate (path11_2_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path11_2_center) polygon(path11_2_points);
    translate (path11_3_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path11_3_center) polygon(path11_3_points);
  }
}

module 16_Triforce(h)
{
  difference()
  {
    union()
    {
      translate ([0,0,0]) poly_path11(h, min_line_mm(0.25), 100.0);
    }
    union()
    {
    }
  }
}

//16_Triforce(zsize);
