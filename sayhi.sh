#!/bin/bash
echo "Start download: MCR-v840.zip"
curl -H "Pragma:" --retry 30 --retry-delay 6 -o v840.zip http://proxy.chtc.wisc.edu/SQUID/ndmiller/v840.zip
echo "Done download: MCR-v840.zip"
echo "start unzip: v840.zip"
unzip -q v840.zip
echo "Done unzip: v840.zip"
echo "Start export: v840.zip"
export MCR_CACHE_ROOT=$PWD/mcr_cache
echo "Done export: v840.zip"
echo "Start run: shell for compile"
mkdir -p $MCR_CACHE_ROOT
./run_singleSeedlingImage.sh "MATLAB_Compiler_Runtime/v840/"
echo "Done run: shell for compile"
