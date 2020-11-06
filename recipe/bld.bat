set DISABLE_PYTHRAN=1

rem When Cython extensions are fixed, uncomment the following. See https://foss.heptapod.net/fluiddyn/fluidfft/-/issues/29
rem COPY %RECIPE_DIR%\site_nompi.cfg .\site.cfg
rem if errorlevel 1 exit 1

"%PYTHON%" -m pip install .[fftw] --no-deps -vv
if errorlevel 1 exit 1
