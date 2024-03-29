OPENSCAD=openscad
OPENSCAD_ARGS=--hardwarnings -q --export-format binstl

.SECONDARY:

official: GH FC JOTL FH
all: official custom

##############################################################################
## Classes
##############################################################################
classes_gh  = 01_Brute 02_Tinkerer 03_Spellweaver 04_Scoundrel 05_Cragheart \
	06_Mindthief 07_Sun 08_Three_Spears 09_Circles 10_Eclipse \
	11_Squidface 12_Lightning 13_Music_Note 14_Angry_Face 15_Saw \
	16_Triangles 17_Two_Mini

classes_fc = 18_Diviner

classes_jotl = 19_Hatchet 20_Demolitionist 21_Voidwarden 22_Red_Guard

classes_fh = 23_Banner_Spear 24_Drifter 25_Blinkblade 26_Deathwalker \
			 27_Boneshaper 28_Geminate

classes_custom  = C_Brightspark C_Chieftan C_Artificer C_Brewmaster \
	C_Rootwhisperer C_Frostborn C_Amber_Aegis C_Hollowpact C_Bombard \
	C_Mirefoot C_Fire_Knight

-include spoilers/spoiler_rules.mk
classes = $(classes_gh) $(classes_fc) $(classes_jotl) $(classes_fh) $(classes_custom)

GH: $(classes_gh) characterbox
FC: $(classes_fc) characterbox
JOTL: $(classes_jotl) characterbox
FH: $(classes_fh) characterbox
custom: $(classes_custom) characterbox

characterbox: characterbox_slim characterbox_med characterbox_large characterbox_fits_mini

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
ifeq ($(CHARACTERBOX_LID), 1)
components += build/stl/%_characterbox_lid.stl
endif

# This lists all the files to build for a given class
$(classes): %: $(components)

##############################################################################
## Magbox icon badges
##############################################################################

build/stl/%_magbox_icon.stl : resource/icons/%.svg source/scad/magbox_icon.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/magbox_icon.scad -D icon_file="\"../../$<"\" -o $@

##############################################################################
## Amber Aegis Colony Tokens
##############################################################################
amber_aegis_colonies = Fire_Ant Bedrock_Termite Ghost_Bee Brown_Recluse
D_COLONY_TOKEN = 23
amber_aegis_colony_tokens: $(foreach c,$(amber_aegis_colonies),build/stl/$c_colony_token.stl)
build/stl/%_colony_token.stl: resource/icons/amber_aegis_tokens/%.svg source/scad/characterbox_icon.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/characterbox_icon.scad -D icon_file="\"../../$<"\" -D d_base=$(D_COLONY_TOKEN) -o $@


##############################################################################
## Class Storage Boxes
##############################################################################
CHARACTERBOX_SLIM = 10
CHARACTERBOX_MED = 13
CHARACTERBOX_LARGE = 16.06
CHARACTERBOX_FITS_MINI = 35

characterbox_slim: build/stl/characterbox_slim.stl
build/stl/characterbox_slim.stl: source/scad/characterbox.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@ -D T=${CHARACTERBOX_SLIM}

characterbox_med: build/stl/characterbox_med.stl
build/stl/characterbox_med.stl: source/scad/characterbox.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@ -D T=${CHARACTERBOX_MED}

characterbox_large: build/stl/characterbox_large.stl
build/stl/characterbox_large.stl: source/scad/characterbox.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@ -D T=${CHARACTERBOX_LARGE}

characterbox_fits_mini: build/stl/characterbox_fits_mini.stl
build/stl/characterbox_fits_mini.stl: source/scad/characterbox.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@ -D T=${CHARACTERBOX_FITS_MINI} -D ICON_CENTER=0

build/stl/%_characterbox_lid.stl: resource/icons/%.svg source/scad/characterbox_lid.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/characterbox_lid.scad -D icon_file="\"../../$<\"" -o $@

build/stl/%_characterbox_icon.stl: resource/icons/%.svg source/scad/characterbox_icon.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/characterbox_icon.scad -D icon_file="\"../../$<"\" -o $@
