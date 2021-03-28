# Gloomhaven Character 3D printables

**Download the models on Thingiverse:**
* [for official classes](https://www.thingiverse.com/thing:4808239)
* [for custom classes](https://www.thingiverse.com/thing:4808314)

This is a collection of tools for generating some 3D models for 3D printing
organizers for gloomhaven. The code is set up so that you can generate the items
with any of the various gloomhaven class icons (or really, any arbitrary SVG.)

## Dependencies

In order to run this code, you need the following installed on your computer:

* [OpenSCAD](https://www.openscad.org/)
* [Python](python.org) version 3 or greater
    * [Jinja2](https://pypi.org/project/Jinja2/) python library
* GNU Make (should be installed by default on Linux, try
  [here](http://gnuwin32.sourceforge.net/packages/make.htm) for windows.)

## Building

To build all of the official classes (Gloomhaven, Forgotten Circles, Jaws of the
Lion), just open a terminal in this directory and run `make`. To make those
classes plus all of the custom classes, run `make all`.

You can also run `make {target}` to build a different set of classes, eg:

* `make GH` makes Gloomhaven classes
* `make FC` makes just the diviner
* `make JOTL` makes the Jaws of the Lion classes
* `make custom` makes all of the custom classes
* Run with a class name (`make 01_Brute`, `make C_Artificer`) to make just that
  class.

## Adding more classes

To add another class, the following changes need to be made:

1. Add an icon at `resource/icons/{class_name}.svg`
2. Add a JSON file at `characters/{class_name}.json`. See the readme in that
   directory for what needs to go in that file.
3. Add the class name to one of the lists in the makefile (probably
   `classes_custom`)


## Spoilers

There's a bit more in this repo that's been obfusticated because it spoils some
in-game secrets. If you know what you're looking for, check the readme in the
`spoilers` directory.