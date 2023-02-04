#! /usr/bin/env python3
from binascii import hexlify
import json
from pathlib import Path
from base64 import b64decode
import textwrap
from typing import Any, List

here = Path(__file__).resolve().parent
spoiler_dir = here / "resource"
project_dir = here.parent

def unlock(spfile: str):
    # Get the spoiler data
    file = spoiler_dir / spfile
    data = json.loads(b64decode(file.read_text()))
    spoiler_index = here / "spoiler_files.json"

    # Unpack files
    for path, filedata in data["paths"].items():
        (project_dir / path).write_bytes(b64decode(filedata))
    data["paths"] = list(data["paths"].keys())

    # Add to existing spoilers
    existing_spoilers: Any
    if spoiler_index.exists():
        existing_spoilers = json.loads(spoiler_index.read_text())
    else:
        existing_spoilers = {}
    existing_spoilers.update({file.name: data})
    spoiler_index.write_text(json.dumps(existing_spoilers, indent=4))

    # Build spoiler makefile
    spoiler_makefile = project_dir / "spoilers" / "spoiler_rules.mk"
    makefile_lines: List[str] = []
    for spdata in existing_spoilers.values():
        makefile_lines.extend(spdata["makefile"])

    spoiler_makefile.write_text(
        textwrap.dedent(
            """\
            unspoil:
            \tfind . -type f -name 'spoiler_*' -delete
            """
        )
        + "\n".join(makefile_lines)
    )

    # Done
    print("\n".join(data["message"]))


secrets = {
    b"\x64\x36\x32\x37\x31\x36\x37\x37\x33\x37\x35\x36\x34\x36\x31\x36\x63\x36\x32\x36": "sp0.b64",
    b"\x32\x37\x35\x36\x38\x36\x33\x37\x39\x36\x35\x37\x31\x37\x65\x36\x31\x36\x36\x37": "sp1.b64"
}

import argparse

p = argparse.ArgumentParser()
p.add_argument("entry", default=None, nargs="?")
p.add_argument("-v", action="store_true")
args = p.parse_args()

if args.entry is None:
    entry = input(
        "Enter the name of what you're spoiling here (case insensitive)"
    ).lower()
else:
    entry = args.entry


code = hexlify(entry.encode())[::-1]

if entry == "uuddlrlrba+":
    if input("This will spoil EVERYTHING in here, it could be for ANY game. Are you sure?[y/n]") == "y":
        for s in secrets.values():
            unlock(s)
elif code in secrets:
    unlock(secrets[code])
else:
    print("Nope, that's not it.")
    if args.v:
        print("b\"" + "".join(f"\\x{b:02X}" for b in code) + "\"")

