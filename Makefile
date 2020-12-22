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

all: $(classes) classbox_slim classbox_med
GH: $(classes_gh)
FC: $(classes_fc)
JOTL: $(classes_jotl)

# This lists all the files to build for a given class
$(classes): %: build/stl/%_magbox_icon.stl

build/stl:
	mkdir -p build/stl

build/scad:
	mkdir -p build/scad

clean:
	rm -rf build

##############################################################################
## Magbox icon badges
##############################################################################

build/stl/%_magbox_icon.stl : build/scad/%_magbox_icon.scad | build/stl
	$(OPENSCAD) $< -o $@

build/scad/%_magbox_icon.scad : characters/%.json source/templates/magbox_icon.jinja.scad | build/scad
	python source/render_scad.py $<

##############################################################################
## Class Storage Boxes
##############################################################################
CLASSBOX_SLIM = 10
CLASSBOX_MED = 13

classbox_slim: build/stl/classbox_slim.stl
build/stl/classbox_slim.stl: source/scad/classbox.scad
	$(OPENSCAD) $< -o $@ -D T=${CLASSBOX_SLIM}

classbox_med: build/stl/classbox_med.stl
build/stl/classbox_med.stl: source/scad/classbox.scad
	$(OPENSCAD) $< -o $@ -D T=${CLASSBOX_MED}