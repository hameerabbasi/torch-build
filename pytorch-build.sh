#!/bin/bash
set -e

if [ ${PYTORCH_PIXI_BUILD:-0} -ne 0 ]; then
    echo "${CONDA_PREFIX}" > "${PIXI_PROJECT_ROOT}/last-used-env"
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ ${PYTORCH_PIXI_BUILD:-0} -eq 0 ]; then
    eval "$(conda shell.bash hook)"
    conda activate ${PYTORCH_CONDA_ENV:=pytorch-dev$PYTORCH_BUILD_SUFFIX}
fi
cd ${PYTORCH_BUILD_DIRECTORY:=~/git$PYTORCH_BUILD_SUFFIX}/pytorch

source $SCRIPT_DIR/torch-common.sh

pwd
pip uninstall torch -y
pip install -e . --no-build-isolation -v $@

# comment out if you're developing triton as well
if [[ "$(uname)" != "Darwin" ]]; then
    make triton
fi
