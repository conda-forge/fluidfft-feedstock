COPY %RECIPE_DIR%\site_nompi.cfg %cd% /s /e
if errorlevel 1 exit 1

"%PYTHON%" -m pip install .[fftw] --no-deps -vv
if errorlevel 1 exit 1
