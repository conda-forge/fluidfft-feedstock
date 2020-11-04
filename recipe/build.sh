#!/bin/bash

cat > site.cfg <<EOF
[fftw3]
use = True
dir =
include_dir =
library_dir =

[fftw3_mpi]
use = False
dir =
include_dir =
library_dir =

[cufft]
use = False
dir =
include_dir =
library_dir =

[pfft]
use = False
dir =
include_dir =
library_dir =

[p3dfft]
use = False
dir =
include_dir =
library_dir =

EOF
cat > site.cfgmpi <<EOF
[fftw3]
use = True
dir =
include_dir =
library_dir =

[fftw3_mpi]
use = True
dir =
include_dir =
library_dir =

[cufft]
use = False
dir =
include_dir =
library_dir =

[pfft]
use = False
dir =
include_dir =
library_dir =

[p3dfft]
use = False
dir =
include_dir =
library_dir =

EOF
cp site.cfgmpi site.cfg  # [mpi != 'nompi']

$PYTHON -m pip install --no-deps --ignore-installed -vv .[fftw]  # [mpi == 'nompi']
$PYTHON -m pip install --no-deps --ignore-installed -vv .[fftw,mpi]  # [mpi != 'nompi']
