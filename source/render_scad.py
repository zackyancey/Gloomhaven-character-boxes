#! /usr/bin/env python
import sys
import json
from dataclasses import dataclass
from pathlib import Path

from jinja2 import Environment, FileSystemLoader, StrictUndefined

# Set up paths
root_dir = Path(__file__).resolve().parent.parent
scad_dir = root_dir/"build"/"scad"
scad_dir.mkdir(parents=True, exist_ok=True)

# Set up Jinja templates
env = Environment(
    loader=FileSystemLoader(root_dir / "source" / "templates"),
    undefined=StrictUndefined,
    keep_trailing_newline=True,
)
magbox_icon = env.get_template("magbox_icon.jinja.scad")
characterbox_lid = env.get_template("characterbox_lid.jinja.scad")


# Read character config
config = json.loads(Path(sys.argv[1]).read_text())

magbox_icon_out = scad_dir/(config["name"] + "_magbox_icon.scad")
magbox_icon_out.write_text(magbox_icon.render(**config))

characterbox_lid_out = scad_dir/(config["name"] + "_characterbox_lid.scad")
characterbox_lid_out.write_text(characterbox_lid.render(**config))
