set DISABLE_PYTHRAN=1

COPY %RECIPE_DIR%\site_nompi.cfg %cd%
if errorlevel 1 exit 1

"%PYTHON%" -m pip install .[fftw] --no-deps -vv
if errorlevel 1 exit 1
