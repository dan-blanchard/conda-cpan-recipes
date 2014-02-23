#!/bin/bash

# Check for Mac vs Linux
if [[ -z "$OSX_ARCH" ]]; then
	export LD_LIBRARY_PATH=$PREFIX/lib
else
	export DYLD_FALLBACK_LIBRARY_PATH=$PREFIX/lib
fi

cpanm .

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
