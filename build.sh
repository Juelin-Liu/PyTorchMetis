#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo "Script directory: $SCRIPT_DIR"

Torch_DIR=$(python3 -c "import torch;print(torch.utils.cmake_prefix_path)")
export Torch_DIR=$Torch_DIR/Torch
cmake -B $SCRIPT_DIR/build -DTorch_DIR=${Torch_DIR} -G Ninja && cmake --build build -j