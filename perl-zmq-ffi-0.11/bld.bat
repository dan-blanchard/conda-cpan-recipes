:: Use sed, assuming cygwin is installed
sed -i -e "s,CONDA_PREFIX_PLACEHOLDER,$PREFIX\lib," .\lib\ZMQ\FFI\Util.pm

cpanm .
if errorlevel 1 exit 1

:: Add more build steps here, if they are necessary.

:: See
:: http://docs.continuum.io/conda/build.html
:: for a list of environment variables that are set during the build process.
