// portion to print for multi-color printing
multicolor = 0; //[0: full, 1: lower, 2: upper, 3: Base only, 4: Icon only] 
// Path to the file with the class icon
icon_file = "../../resource/icons/01_Brute.svg";

module icon () {
    h=1.756;
    s = 1.1;

    color("blue")
    linear_extrude(h)
    translate([82.9472,62.4196,-1])
    scale([s,s])
    translate([-50,-50]) import(icon_file);
}

module base() {
    translate([-200,355])
    import("../../resource/CharacterBox/CharacterBox_Lid_Blank.stl");
}

module lid () {
    base();
    icon();
}

module multicolor_split() {
    translate([0,0,-3]) cube([300,300,3.771]);
}

if (multicolor == 0) {
    lid();
} else if (multicolor == 1) {
    intersection() {
        lid();
        multicolor_split();
    }
} else if (multicolor == 2) {
    difference() {
        lid();
        multicolor_split();
    }
} else if (multicolor == 3) {
    base();
} else if (multicolor == 4) {
    difference() {
        icon();
        multicolor_split();
    }
}