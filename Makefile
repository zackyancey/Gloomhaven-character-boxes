OPENSCAD=openscad

.SECONDARY: 


##############################################################################
## Classes
##############################################################################
classes_gh  = 01_Brute 02_Tinkerer 03_Spellweaver 04_Scoundrel 05_Cragheart
classes_gh += 06_Mindthief 07_Sun 08_Three_Spears 09_Circles 10_Eclipse
classes_gh += 11_Squidface 12_Lightning 13_Music_Note 14_Angry_Face 15_Saw
classes_gh += 16_Triangles 17_Two_Mini

classes_fc = 18_Diviner

classes_jotl = 19_Hatchet 20_Demolitionist 21_Voidwarden 22_Red_Guard

classes = $(classes_gh) $(classes_fc) $(classes_jotl)

all: $(classes) characterbox_slim characterbox_med
GH: $(classes_gh)
FC: $(classes_fc)
JOTL: $(classes_jotl)

# This lists all the files to build for a given class
$(classes): %: build/stl/%_magbox_icon.stl build/stl/%_characterbox_lid.stl

build/stl:
	mkdir -p build/stl

build/scad:
	mkdir -p build/scad

clean:
	rm -rf build

##############################################################################
## Templated scad files
##############################################################################

build/scad/%_magbox_icon.scad build/scad/%_characterbox_lid.scad &: characters/%.json source/templates/magbox_icon.jinja.scad | build/scad
	python source/render_scad.py $<

##############################################################################
## Magbox icon badges
##############################################################################

build/stl/%_magbox_icon.stl : build/scad/%_magbox_icon.scad | build/stl
	$(OPENSCAD) $< -o $@

##############################################################################
## Class Storage Boxes
##############################################################################
CHARACTERBOX_SLIM = 10
CHARACTERBOX_MED = 13

characterbox_slim: build/stl/characterbox_slim.stl
build/stl/characterbox_slim.stl: source/scad/characterbox.scad | build/stl
	$(OPENSCAD) $< -o $@ -D T=${CHARACTERBOX_SLIM}

characterbox_med: build/stl/characterbox_med.stl
build/stl/characterbox_med.stl: source/scad/characterbox.scad | build/stl
	$(OPENSCAD) $< -o $@ -D T=${CHARACTERBOX_MED}

build/stl/%_characterbox_lid.stl: build/scad/%_characterbox_lid.scad
	$(OPENSCAD) $< -o $@