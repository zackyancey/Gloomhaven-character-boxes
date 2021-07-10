translate([-200,355])
import("../../resource/CharacterBox/CharacterBox_Lid_Blank.stl");

icon_file = "../../resource/icons/01_Brute.svg";

h=1.756;
s = 1.1;

color("blue")
linear_extrude(h)
translate([82.9472,62.4196,-1])
scale([s,s])
translate([-50,-50]) import(icon_file);
