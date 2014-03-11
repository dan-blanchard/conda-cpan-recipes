#!/bin/bash

# Patch installation paths to always use site_perl
cat Makefile.PL | perl -pe 's/^( *)INSTALLDIRS .*=>.+$/\1INSTALLDIRS => "site",/' > Makefile.NEW
mv Makefile.NEW Makefile.PL

perl Makefile.PL
make
make test
make install


# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
