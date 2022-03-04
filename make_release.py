#! env python3

import json
import subprocess

name = "thermal-solar-power"

f = open(f"{name}/info.json")
text = f.read()
data = json.loads(text)
version = data["version"]

subprocess.run(["zip", "-vr", f"{name}_{version}.zip", f"{name}"])
