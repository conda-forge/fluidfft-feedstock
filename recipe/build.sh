#!/bin/bash
set -xeuo pipefail

if [[ "$mpi" == "nompi" ]]; then
  cp "$RECIPE_DIR/site_nompi.cfg" site.cfg
  $PYTHON -m pip install .[fftw] --no-deps -vv
else
  cp "$RECIPE_DIR/site_mpi.cfg" site.cfg
  $PYTHON -m pip install .[fftw,mpi] --no-deps -vv
fi
