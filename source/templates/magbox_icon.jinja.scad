use <../../source/icons/{{name}}.scad>;

$fn = 300;
f=.1;

d_base = 9.8;
r_base = d_base/2;
h_base = 2;

h_raised = .75;

r_hole = 3.05/2;
h_hole = h_base - .2;

difference() {
    union() {
        translate([0,0,h_base/2])
        cylinder(r=r_base, h=h_base, center=true);
        _s = {{icon_scale}}/100*d_base;

        scale([_s,_s])
        {{name}}(2.75);
    }
    
    translate([0,0,h_hole/2-f])
    cylinder(r=r_hole, h=h_hole+f, center=true);
}