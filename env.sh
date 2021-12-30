#!/bin/bash

# This is sample script to setup the environment.
# Change the script changing the TOOLCHAIN_PATH accordingly

TOOLCHAIN_PATH=$(dirname $(readlink -f $0))
ARCH=$(basename $(dirname ${script_path}))

export LANG="en_GB.UTF-8"

# Pre-append path (binaries prefixed with arch name)
export PATH="${TOOLCHAIN_PATH}/bin":${PATH}

# Pre-append path (binaries without prefix overlapping system settings)
export PATH="${TOOLCHAIN_PATH}/${ARCH}/bin":${PATH}

# Headers
export C_INCLUDE_PATH="${TOOLCHAIN_PATH}/include":${C_INCLUDE_PATH}
export CPLUS_INCLUDE_PATH="${TOOLCHAIN_PATH}/include":${CPLUS_INCLUDE_PATH}

# Libraries
export LIBRARY_PATH="${TOOLCHAIN_PATH}/lib":${LIBRARY_PATH}

# Documentation
export MANPATH="${BASE}/share/man":${MANPATH}
export INFOPATH="${BASE}/share/info":${INFOPATH}
