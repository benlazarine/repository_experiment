#!/bin/bash
curl -H "Pragma:" --retry 30 --retry-delay 6 -o v840.zip http://proxy.chtc.wisc.edu/SQUID/ndmiller/v840.zip
unzip -q v840.zip
export MCR_CACHE_ROOT=$PWD/mcr_cache
mkdir -p $MCR_CACHE_ROOT
./run_singleSeedlingImage.sh "MATLAB_Compiler_Runtime/v840/"
