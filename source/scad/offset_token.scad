
$fn = 300;
f=.1;

// #######################################
// ## Parameters
// #######################################
// An SVG of an icon. The icon needs to be sized and scaled in a certain way,
// see the README.md for details.
icon_file = "../../resource/icons/C_Rootwhisperer_2.svg";
multicolor = 0; // 0: one color; 1 or 2: Multicolor
half = 0;  // 0: one piece; 1 or 2: Multiple pieces

d_base = 27;
h_base = 1;
h_icon = 1.8;

delta = 3.5;

// #######################################
// ## Calculations
// #######################################
r_base = d_base/2;

// The svg should be scaled to fit in an a circle with a diameter of 100,
// scale it to our size.
s = 1/100*(d_base-delta/2);

// #######################################
// ## Objects
// #######################################

// Base
module a () {
    linear_extrude(h_base)
    scale([s,s])
    translate([-50,-50]) offset(delta=delta) import(icon_file);
}

// Raised
module b () {
    color("blue")
    translate([0,0,h_base]) linear_extrude(h_icon-h_base)
    scale([s,s])
    translate([-50,-50]) import(icon_file);
}

// Make one half of the module
module half () {
    if ((multicolor == 0) || (multicolor == 1)) {
        a();
    }
    if (multicolor == 0 || multicolor == 2) {
        b();       
    }
}

module token() {
    if (half == 0 || half == 1) {
        half();
    }
    if (half == 0 || half == 2) {
        mirror([0,0,1]) half();
    }
}

token();