#! env python3

import json
import subprocess
import sys

name = "thermal-solar-power"

f = open(f"{name}/info.json")
text = f.read()
data = json.loads(text)
version = data["version"]

res = subprocess.run(["zip", "-vr", f"{name}_{version}.zip", f"{name}"])

sys.exit(res.returncode)
