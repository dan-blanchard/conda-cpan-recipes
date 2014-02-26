#!/bin/bash

# Hard-code environment prefix in Util.pm so that it gets replaced later.
sed -i -e "s,CONDA_PREFIX_PLACEHOLDER,$PREFIX/lib," ./lib/ZMQ/FFI/Util.pm

cpanm .
