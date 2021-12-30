#!/bin/bash

sudo apt-get update

sudo apt-get install \
    -y flex \
    -y bison \
    -y libgmp3-dev \
    -y libmpfr-dev \
    -y autoconf \
    -y texinfo \
    -y build-essential \
    -y libncurses5-dev
