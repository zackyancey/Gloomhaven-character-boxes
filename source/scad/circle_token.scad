$fn = 300;
f=.1;

// #######################################
// ## Parameters
// #######################################
// An SVG of an icon. The icon needs to be sized and scaled in a certain way,
// see the README.md for details.
icon_file = "../../resource/icons/beetle_tokens/Bedrock_Termite.svg";
multicolor = 0;
half = 0;

d_base = 23;
h_base = 1;
h_icon = 1.8;

// #######################################
// ## Calculations
// #######################################
r_base = d_base/2;

// #######################################
// ## Objects
// #######################################
module a() {
    translate([0,0,h_base/2])
    cylinder(r=r_base, h=h_base, center=true);
}

module b() {
    // The svg should be scaled to fit in an a circle with a diameter of 100,
    // scale it to our size.
    s = 1/100*d_base;

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
    if (half == 0) {
        rotate([0,180,180])
        half();
    }
}

token();