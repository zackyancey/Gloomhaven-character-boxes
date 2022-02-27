icons = [
    "../../resource/icons/23_Banner_Spear.svg",
    "../../resource/icons/24_Drifter.svg",
    "../../resource/icons/25_Boneshaper.svg",
    "../../resource/icons/26_Deathwalker.svg",
    "../../resource/icons/27_Blinkblade.svg",
    "../../resource/icons/28_Geminate.svg",
    "../../resource/icons/29_Diamonds.svg",
    "../../resource/icons/30_Meteor.svg",
    "../../resource/icons/31_Drill.svg",
    "../../resource/icons/32_Seaweed.svg",
    "../../resource/icons/33_Shattered_Stone.svg",
    "../../resource/icons/34_Snowflake.svg",
    "../../resource/icons/35_Trap.svg",
    "../../resource/icons/36_Fist.svg",
    "../../resource/icons/37_Moon_and_Star.svg",
    "../../resource/icons/38_Anemone.svg",
    "../../resource/icons/39_Shackles.svg",
];

linear_extrude(1)
text("Rename this file to a .zip", 30);

for (i=[0:len(icons)-1]) {
    file = icons[i];
    x = i % 6;
    y = -(i - x)/6 - 1;
    translate([100*x, 100*y, 0])
    linear_extrude(1) import(icons[i]);
}