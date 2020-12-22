source_mesh = "../../resource/CharacterBox/CharacterBox_Std_HorizontalSlots.stl";

//=====================================
// Parameters
//=====================================
$fn =200;
// Thickness - how much space is avaliable inside for stacked cards.
//  * Original: 16.06
//  * Match cardboard box: 10
//  * Minimum for JOTL/Saw: 13
T = 13;
// Diameter of the icon hole
Di = 13;
// Depth of the icon hole
Hi = 1;
// Radius of the ramp for the token space
R = 30;


//=====================================
// Measurements
//=====================================
// Thickness - how much space is avaliable inside for stacked cards.
_T=16.06;
// Thickness of the base
_Tb=.5;
// Thickness of the walls
_Tw=1.5;
// Thickness of the box at the lower lip
_Tl=19.76;
// Total thickness of the box
_Tt=21.52;
// Radius of the icon hole
_Ri=18.56;
// Diameter of the icon hole
_Hi = 1;

// Total length in the X dimension of the box
_Lx = 152.748;
_Ly = 121.218;

// Translate distances to get the box at about the origin
_pos = [-339,0,1.2+21.52];
// Where to put the wall to line it up with the existing one
wall_pos = [102,100.42,0];
// Where to put the ramp to get it to line up with the end of the wall
ramp_pos = [102,100.42,0];

//=====================================
// Calculated values
//=====================================
// Height of an interior wall (from 0)
h=T+_Tb;
_h=_T+_Tb;
// Total thickness of the box
Tt=T+_Tb+(_Tt-_T-_Tb);
// Thickness at the lower lip
Tl=Tt-(_Tt-_Tl);

Tl_min = Tl+1;

echo("Minimum Thickness:", Tl_min);
echo("Total Thickness:", Tt);
assert(Di<Tl_min, "The Icon hole won't fit on the top");

//=====================================
// Objects
//=====================================
union () {

// ------------
// box    
// ------------
difference () {
    union () {    
        // Start with the bottom part of the box
        intersection () {
            translate([-1,-1,-100]) cube([300,300,100.7]);
            translate(_pos) import(source_mesh);
        }

        // Then, extend the walls for the main height section
        linear_extrude(height=h)
            translate([0,0,.6]) projection(cut=true) translate(_pos+[0,0,-.6])
            import(source_mesh);

        // And plop the top part on pretty much unchanged
        difference () {
            translate(_pos+[0,0,h-_h]) import(source_mesh);
            translate([-1,-1,-100]) cube([300,300,100+h-5]);
        }

        // We need to cover up any vestiges of the old icon hole
        intersection () {
            linear_extrude(height=Tl-.05) projection(cut=true) translate(_pos+[0,0,-.1]) import(source_mesh);
            
            translate([100,118.5,0]) cube(50);
        }
    }
    
    // Then subtract the new hole
    translate ([_Lx-18.5,_Ly+10-Hi,Tl/2]) rotate([90,0,0]) cylinder(d=Di,h=10);
}

// ------------
// tokens section
// ------------
// Create a wall to get rid of the rounded edge on the existing wall.
translate(wall_pos)
cube([45,_Tw,h]);

// Enclose the token space, with a ramp to make getting tokens out easier
translate(ramp_pos)
difference() {
    // How long to make the wall to block off the token corner
    y = 19;
    // Determine how far to shift the ramp so that there is still a 1.5mm wall.
    x = sqrt(R*R - (R-h)*(R-h));
    assert(R>h, "The walls are too tall for the ramp's radius");
    
    cube([x,y,h]);
    translate([x+_Tw,-.5,R])
    rotate([-90,0,0]) cylinder(r=R, h=y+1);    
}

}
