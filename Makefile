OPENSCAD=openscad
OPENSCAD_ARGS=--hardwarnings -q

.SECONDARY:


##############################################################################
## Classes
##############################################################################
classes_gh  = 01_Brute 02_Tinkerer 03_Spellweaver 04_Scoundrel 05_Cragheart \
	06_Mindthief 07_Sun 08_Three_Spears 09_Circles 10_Eclipse \
	11_Squidface 12_Lightning 13_Music_Note 14_Angry_Face 15_Saw \
	16_Triangles 17_Two_Mini

classes_fc = 18_Diviner

classes_jotl = 19_Hatchet 20_Demolitionist 21_Voidwarden 22_Red_Guard

classes_custom  = C_Brightspark C_Chieftan C_Artificer C_Brewmaster \
	C_Rootwhisperer C_Frostborn C_Amber_Aegis

classes = $(classes_gh) $(classes_fc) $(classes_jotl) $(classes_custom)

official: GH FC JOTL
all: official custom

GH: $(classes_gh) characterbox
FC: $(classes_fc) characterbox
JOTL: $(classes_jotl) characterbox
custom: $(classes_custom) characterbox

characterbox: characterbox_slim characterbox_med

build/stl:
	mkdir -p build/stl

build/scad:
	mkdir -p build/scad

clean:
	rm -rf build

##############################################################################
## Components
##############################################################################
BUILD_ALL=1
ifeq ($(BUILD_ALL), 1)
MAGBOX_ICON=1
CHARACTERBOX_ICON=1
CHARACTERBOX_LID=1
endif

ifeq ($(MAGBOX_ICON), 1)
components += build/stl/%_magbox_icon.stl
endif
ifeq ($(CHARACTERBOX_ICON), 1)
components += build/stl/%_characterbox_icon.stl
endif
ifeq ($(MAGBOX_ICON), 1)
components += build/stl/%_characterbox_lid.stl
endif

# This lists all the files to build for a given class
$(classes): %: $(components)

##############################################################################
## Templated scad files
##############################################################################

templates =  source/templates/magbox_icon.jinja.scad \
	source/templates/characterbox_icon.jinja.scad \
	source/templates/characterbox_lid.jinja.scad

template_targets =  build/scad/%_magbox_icon.scad \
	build/scad/%_characterbox_lid.scad \
	build/scad/%_characterbox_icon.scad

$(template_targets) &: characters/%.json $(templates) | build/scad
	python source/render_scad.py $<

##############################################################################
## Magbox icon badges
##############################################################################

build/stl/%_magbox_icon.stl : build/scad/%_magbox_icon.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@

##############################################################################
## Class Storage Boxes
##############################################################################
CHARACTERBOX_SLIM = 10
CHARACTERBOX_MED = 13

characterbox_slim: build/stl/characterbox_slim.stl
build/stl/characterbox_slim.stl: source/scad/characterbox.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@ -D T=${CHARACTERBOX_SLIM}

characterbox_med: build/stl/characterbox_med.stl
build/stl/characterbox_med.stl: source/scad/characterbox.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@ -D T=${CHARACTERBOX_MED}

build/stl/%_characterbox_lid.stl: build/scad/%_characterbox_lid.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@

build/stl/%_characterbox_icon.stl: build/scad/%_characterbox_icon.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@