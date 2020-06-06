#!/bin/bash

Xvfb :100 +extension Composite +extension RANDR +extension RENDER +extension GLX -screen 0 100x100x24 &

python3 ../gcp/run.py
