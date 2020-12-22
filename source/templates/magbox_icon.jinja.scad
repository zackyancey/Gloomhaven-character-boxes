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
        _s = {{icon_scale}};
        __s = 1/100*d_base;
        
        color(["blue"])
        linear_extrude(2.75)
        scale([_s,_s])
        translate([{{icon_translate_x|default(0)}},{{icon_translate_y|default(0)}}])
        scale([__s,__s])
        import("../../resource/icons/{{name}}.svg", center=true);
    }
    
    translate([0,0,h_hole/2-f])
    cylinder(r=r_hole, h=h_hole+f, center=true);
}