#!/bin/bash
set -e

Xvfb :100 +extension Composite +extension RANDR +extension RENDER +extension GLX -screen 0 100x100x24 &

python3 /seed_rl/gcp/run.py "$@"
