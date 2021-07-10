$fn = 300;
f=.1;

// #######################################
// ## Parameters
// #######################################
// An SVG of an icon. The icon needs to be sized and scaled in a certain way,
// see the README.md for details.
icon_file = "../../resource/icons/01_Brute.svg";

d_base = 12.5;
h_base = 1;
h_icon = 1.8;

// #######################################
// ## Calculations
// #######################################
r_base = d_base/2;

// #######################################
// ## Objects
// #######################################
union() {
    translate([0,0,h_base/2])
    cylinder(r=r_base, h=h_base, center=true);
    // The svg should be scaled to fit in an a circle with a diameter of 100,
    // scale it to our size.
    s = 1/100*d_base;

    color("blue")
    linear_extrude(h_icon)
    scale([s,s])
    translate([-50,-50]) import(icon_file);
}
