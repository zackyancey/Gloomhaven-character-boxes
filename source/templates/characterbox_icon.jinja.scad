$fn = 300;
f=.1;

// #######################################
// ## Parameters
// #######################################
d_base = 12.5;
h_base = 1;

h_raised = 1.8;

icon_scale = {{icon_scale}};
icon_file = "../../resource/icons/{{name}}.svg";
icon_translate_x = {{icon_translate_x|default(0)}};
icon_translate_y = {{icon_translate_y|default(0)}};

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
    _s = icon_scale;
    __s = 1/100*d_base;

    color("blue")
    linear_extrude(h_raised)
    scale([_s,_s])
    translate([icon_translate_x, icon_translate_y])
    scale([__s,__s])
    import(icon_file, center=true);
}