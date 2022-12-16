OPENSCAD=openscad
OPENSCAD_ARGS=--hardwarnings -q --export-format binstl

.SECONDARY:

official: GH 18_Diviner JOTL FH
all: official custom
boxes: GH JOTL FH CS TOA

vpath %.svg resource/icons
vpath %.scad source/scad

##############################################################################
## Classes
##############################################################################
classes_gh  = 01_Brute 02_Tinkerer 03_Spellweaver 04_Scoundrel 05_Cragheart \
	06_Mindthief 07_Sun 08_Three_Spears 09_Circles 10_Eclipse \
	11_Squidface 12_Lightning 13_Music_Note 14_Angry_Face 15_Saw \
	16_Triangles 17_Two_Mini

classes_fc = 18_Diviner

classes_jotl = 19_Hatchet 20_Demolitionist 21_Voidwarden 22_Red_Guard

classes_fh = 23_Banner_Spear 24_Drifter 25_Boneshaper 26_Deathwalker \
			 27_Blinkblade 28_Geminate \
			 29_Astral 30_Meteor 31_Shards 32_Trap 33_Shackles 34_Snowflake \
			 35_Fist 36_Kelp 37_Coral 38_Prism 39_Drill

classes_cs = C_Flask C_Galaxy C_Ladder_Axe C_Sprig  C_Tusks \
	C_Target C_Vortex C_Leaf C_Chained_Helmet C_Crescent_Sun \
	C_Skull \
	C_Beetle C_Bleeding_Claw C_Tools # Add-on classes

classes_toa = C_Spiked_Ring C_Three_Eyes C_Ice_Meteor \
			  C_Lightning_Ball C_Gemstone

classes_custom = $(classes_cs) $(classes_toa) \
	C_Brewmaster C_Rootwhisperer C_Frostborn C_Rootwhisperer_2 

-include spoilers/spoiler_rules.mk
classes = $(classes_gh) $(classes_fc) $(classes_jotl) $(classes_fh) $(classes_custom)

GH: $(classes_gh) build/zips/Characters_GH_FC.zip characterbox
JOTL: $(classes_jotl) build/zips/Characters_JOTL.zip characterbox
FH: $(classes_fh) build/zips/Characters_FH.zip  characterbox
custom: $(classes_custom) characterbox
CS: $(classes_cs) build/zips/Characters_CS_custom.zip characterbox
TOA: $(classes_toa) build/zips/Characters_TOA_custom.zip characterbox

characterbox: characterbox_slim characterbox_med characterbox_large characterbox_fits_mini

build/stl:
	mkdir -p build/stl

build/zips:
	mkdir -p build/zips

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
components += build/stl/%_characterbox_lid_2color.stl
endif

# This lists all the files to build for a given class
$(classes): %: $(components) build/zips/%.zip

##############################################################################
## Magbox icon badges
##############################################################################

build/stl/%_magbox_icon.stl : %.svg magbox_icon.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/magbox_icon.scad -D icon_file="\"../../$<"\" -o $@

##############################################################################
## Amber Aegis Colony Tokens
##############################################################################
beetle_colonies = Fire_Ant Bedrock_Termite Ghost_Bee Brown_Recluse
D_COLONY_TOKEN = 23
beetle_colony_tokens: $(foreach c,$(beetle_colonies),build/stl/$c_colony_token.stl)
build/stl/%_colony_token.stl: beetle_tokens/%.svg characterbox_icon.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/characterbox_icon.scad -D icon_file="\"../../$<"\" -D d_base=$(D_COLONY_TOKEN) -o $@

##############################################################################
## Rootwhisperer Root Tokens
##############################################################################
build/stl/C_Rootwhisperer_2_root_token.stl: resource/icons/C_Rootwhisperer_2.svg rootwhisperer_token.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/rootwhisperer_token.scad -o $@

build/stl/C_Rootwhisperer_2_root_token_half_a.stl: resource/icons/C_Rootwhisperer_2.svg rootwhisperer_token.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/rootwhisperer_token.scad -Dhalf=1 -o $@

build/stl/C_Rootwhisperer_2_root_token_half_b.stl: resource/icons/C_Rootwhisperer_2.svg rootwhisperer_token.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/rootwhisperer_token.scad -Dhalf=2 -o $@

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
	$(OPENSCAD) $(OPENSCAD_ARGS) $< -o $@ -D T=${CHARACTERBOX_FITS_MINI} -DICON_CENTER=false -DCLOSE_CORNER=true -DRAISE_CARDS=true

build/stl/%_characterbox_lid.stl: %.svg characterbox_lid.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/characterbox_lid.scad -D icon_file="\"../../$<\"" -o $@

build/stl/%_characterbox_icon.stl: %.svg characterbox_icon.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/characterbox_icon.scad -D icon_file="\"../../$<"\" -o $@

build/stl/characterbox_lid_base_2color.stl: characterbox_lid.scad resource/CharacterBox/CharacterBox_Lid_Blank.stl | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/characterbox_lid.scad -D icon_file="\"../../$<\""  -D multicolor=3 -o $@

build/stl/%_characterbox_lid_2color.stl: %.svg build/stl/characterbox_lid_base_2color.stl characterbox_lid.scad | build/stl
	$(OPENSCAD) $(OPENSCAD_ARGS) source/scad/characterbox_lid.scad -D icon_file="\"../../$<\""  -D multicolor=4 -o $@

##############################################################################
## Character zip files
##############################################################################

build/zips/%.zip: $(components)	| build/zips
	zip -j $@ $^

build/zips/C_Beetle.zip: \
	$(subst %,C_Beetle,$(components)) \
	$(foreach c,$(beetle_colonies),build/stl/$c_colony_token.stl) \
	| build/zips
	zip -j $@ $^

build/zips/C_Rootwhisperer_2.zip: \
	$(subst %,C_Rootwhisperer_2,$(components)) \
	build/stl/C_Rootwhisperer_2_root_token.stl \
	build/stl/C_Rootwhisperer_2_root_token_half_a.stl \
	build/stl/C_Rootwhisperer_2_root_token_half_b.stl \
	| build/zips
	zip -j $@ $^

##############################################################################
## Game zip files
##############################################################################

build/zips/Characters_GH_FC.zip: \
	$(foreach c,$(classes_gh),$(subst %,$c,$(components))) \
	$(foreach c,$(classes_fc),$(subst %,$c,$(components))) \
	| build/zips
	zip -j $@ $^

build/zips/Characters_JOTL.zip: $(foreach c,$(classes_jotl),$(subst %,$c,$(components))) | build/zips
	zip -j $@ $^

build/zips/Characters_FH.zip: $(foreach c,$(classes_fh),$(subst %,$c,$(components))) | build/zips
	zip -j $@ $^

build/zips/Characters_CS_custom.zip: $(foreach c,$(classes_cs),$(subst %,$c,$(components))) | build/zips
	zip -j $@ $^

build/zips/Characters_TOA_custom.zip: $(foreach c,$(classes_toa),$(subst %,$c,$(components))) | build/zips
	zip -j $@ $^
