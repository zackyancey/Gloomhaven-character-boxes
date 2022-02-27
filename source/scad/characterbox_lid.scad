multicolor = 0;
icon_file = "../../resource/icons/01_Brute.svg";

module lid () {
    translate([-200,355])
    import("../../resource/CharacterBox/CharacterBox_Lid_Blank.stl");

    h=1.756;
    s = 1.1;

    color("blue")
    linear_extrude(h)
    translate([82.9472,62.4196,-1])
    scale([s,s])
    translate([-50,-50]) import(icon_file);
}

if (multicolor == 0) {
    lid();
} else if (multicolor == 1) {
    intersection() {
        lid();
        translate([0,0,-3]) cube([300,300,3.771]);
    }
} else if (multicolor == 2) {
    difference() {
        lid();
        translate([0,0,-3]) cube([300,300,3.771]);
    }
}