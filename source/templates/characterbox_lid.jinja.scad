translate([-200,355])
import("../../resource/CharacterBox/CharacterBox_Lid_Blank.stl");

icon_file = "../../resource/icons/{{name}}.svg";
icon_scale = {{icon_scale}};

h=1.756;
s = icon_scale*1.1;

//color("blue")
//translate([82.9472,62.4196,-1])
//cube([149.43,119.58,10],center=true);

color("blue")
linear_extrude(h)
translate([82.9472,62.4196,-1])
scale([s,s])
import(icon_file, center=true);