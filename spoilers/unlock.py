#! /usr/bin/env python3
from binascii import hexlify, unhexlify
from pathlib import Path
from base64 import b64decode

spoiler_dir = Path(__file__).resolve().parent / "resource"
project_dir = Path(__file__).resolve().parent.parent

secret = b'\x64\x36\x32\x37\x31\x36\x37\x37\x33\x37\x35\x36\x34\x36\x31\x36\x63\x36\x32\x36'



entry = input("Enter the solution to the puzzle here (case insensitive)").lower()
if hexlify(entry.encode())[::-1] == secret:
    name = f"spoiler_{entry[0].upper()}{entry[1:]}"
    print(f"Success. Adding {name} as a target")
    print(f"To build it, run `make {name}`")

    file2 = b64decode((spoiler_dir / "sp1.b64").read_bytes())
    (project_dir/"spoilers"/"spoiler_rules.mk").write_bytes(file2)
else:
    print("Nope, that's not it.")
