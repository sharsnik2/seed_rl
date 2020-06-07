#!/bin/bash
set -e

#LD_LIBRARY_PATH=/usr/lib/mesa-diverted/x86_64-linux-gnu Xvfb :100 +extension Composite +extension RANDR +extension RENDER +extension GLX -screen 0 100x100x24 &

#export DISPLAY=:100
#echo "=========== XVFB started ========"
#echo $DISPLAY
#ps aux | grep Xvfb
#glxinfo
#lspci -k
#pacman -Qs llvm

#echo "=========== Starting seed rl ========"
#echo "$@"

#nvidia-smi

LD_LIBRARY_PATH=/usr/lib/mesa-diverted/x86_64-linux-gnu  xvfb-run --auto-servernum --server-args="-screen 0 100x100x24" python3 /seed_rl/gcp/run.py "$@"
#python3 /seed_rl/gcp/run.py "$@"

#LD_LIBRARY_PATH=/usr/lib/mesa-diverted/x86_64-linux-gnu xvfb-run --auto-servernum --server-args='-screen 0 100x100x24' /seed_rl/unity/envs/GridWorldLinux/GridWorldLinux.x86_64 &

#sleep 30

#echo "=========== Unity log ========"
#less "/root/.config/unity3d/Unity Technologies/UnityEnvironment/Player.log"