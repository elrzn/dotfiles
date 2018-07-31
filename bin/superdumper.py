#!/usr/bin/env python3

import sys
import oyaml as yaml

python = yaml.load(sys.stdin)
print(yaml.dump(python, default_flow_style=False))
