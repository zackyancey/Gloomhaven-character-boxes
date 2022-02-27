$fn = 300;
f=.1;
icon_file = "../../resource/icons/01_Brute.svg";
d_base = 9.8;
r_base = d_base/2;
h_base = 2;
multicolor = 0;

h_raised = .75;

r_hole = 3.05/2;
h_hole = h_base - .2;

module a() {
    difference() {
        translate([0,0,h_base/2])
        cylinder(r=r_base, h=h_base, center=true);

        translate([0,0,h_hole/2-f])
        cylinder(r=r_hole, h=h_hole+f, center=true);
    }
}

module b() {
    s = 1/100*d_base;

    color(["blue"])
    translate([0,0,h_base])
    linear_extrude(2.75-h_base)
    scale([s,s])
    translate([-50, -50]) import(icon_file);
}

if (!multicolor || multicolor == 1) {
    a();
}
if (!multicolor || multicolor == 2) {
    b();
}