use <offset_token.scad>;
$fn = 300;

difference(){
    token();
    // Cut out the hole in the middle of the token.
    cylinder(100, d=1.994, center=true);
}