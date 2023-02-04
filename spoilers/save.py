import json
from pathlib import Path
from base64 import b64encode

here = Path(__file__).resolve().parent
spoiler_dir = here/"resource"
project_root = here.parent

spoiler_dir.mkdir(exist_ok=True)

spoilers = json.loads((here/"spoiler_files.json").read_text())

for filename, data in spoilers.items():
    paths = data["paths"]
    data["paths"] = {}
    for path in paths:
        filedata = (project_root/path).read_bytes()
        data["paths"][path] = b64encode(filedata).decode()

    json_data = json.dumps(data, indent=4)
    b64_data = b64encode(json_data.encode()).decode()
    (spoiler_dir/filename).write_text(b64_data)