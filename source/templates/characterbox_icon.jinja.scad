$fn = 300;
f=.1;

// #######################################
// ## External Parameters
// #######################################
icon_scale = {{icon_scale}};
icon_file = "../../resource/icons/{{name}}.svg";
icon_translate_x = {{icon_translate_x|default(0)}};
icon_translate_y = {{icon_translate_y|default(0)}};
custom = {{custom | default("false")| lower()}};

// #######################################
// ## Parameters
// #######################################
d_base = 12.5;
h_base = 1;

h_icon = 1.8;
h_ring = 1.3;
w_ring = .4;

// #######################################
// ## Calculations
// #######################################
r_base = d_base/2;
icon_size = custom?d_base-(w_ring*2)-.1:d_base;

module customring(){
    if (custom) {
        translate([0,0,h_base/2])
        difference(){
            cylinder(r=r_base, h=h_ring, center=true);
            cylinder(r=r_base-w_ring, h=h_ring+1, center=true);
        }
    }
}

// #######################################
// ## Objects
// #######################################
union() {
    translate([0,0,h_base/2])
    cylinder(r=r_base, h=h_base, center=true);
    _s = icon_scale;
    __s = 1/100*icon_size;

    color("blue")
    linear_extrude(h_icon)
    scale([_s,_s])
    translate([icon_translate_x, icon_translate_y])
    scale([__s,__s])
    import(icon_file, center=true);

    color("blue")
    customring();
}