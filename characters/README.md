# Character definitions

The JSON files in this folder hold all of the information needed to generate a character.

## Fields

The JSON file should have the following fields:

* icon_name: The name of the scad file containing the icon, and the name of the
  function within that file that generates the icon (If you used inkscape to
  generate it the function and the file that created it will be the same).
* icon_scale: This is a reference value to scale the icon--It should be a value
  that will fit the icon within a circle of diameter 100mm.