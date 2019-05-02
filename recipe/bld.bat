setlocal EnableDelayedExpansion

echo [fftw3] > site.cfg
echo use = True >> site.cfg
echo dir = >> site.cfg
echo include_dir = >> site.cfg
echo library_dir = >> site.cfg

echo [fftw3_mpi] >> site.cfg
echo use = False >> site.cfg
echo dir = >> site.cfg
echo include_dir = >> site.cfg
echo library_dir = >> site.cfg

echo [cufft] >> site.cfg
echo use = False >> site.cfg
echo dir = >> site.cfg
echo include_dir = >> site.cfg
echo library_dir = >> site.cfg

echo [pfft] >> site.cfg
echo use = False >> site.cfg
echo dir = >> site.cfg
echo include_dir = >> site.cfg
echo library_dir = >> site.cfg

echo [p3dfft] >> site.cfg
echo use = False >> site.cfg
echo dir = >> site.cfg
echo include_dir = >> site.cfg
echo library_dir = >> site.cfg


python -m pip install --no-deps --ignore-installed -vv .[full]
