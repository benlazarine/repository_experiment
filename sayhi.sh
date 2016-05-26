#!/bin/bash
echo "Start download: MCR-v717.zip"
curl -H "Pragma:" --retry 30 --retry-delay 6 -o v717.zip http://proxy.chtc.wisc.edu/SQUID/ndmiller/v717.zip
echo "Done download: MCR-v717.zip"
echo "Start download: iPlant_ver0"
wget https://bitbucket.org/leeatuw/repository_experiment/raw/master/iPlant_ver0
echo "Done download: iPlant_ver0"
echo "start unzip: vv717.zip"
unzip -q v717.zip
echo "Done unzip: vv717.zip"
echo "Start export: vv717.zip"
export MCR_CACHE_ROOT=$PWD/mcr_cache
echo "Done export: vv717.zip"
echo "Start run: shell for compile"
mkdir -p $MCR_CACHE_ROOT
./run_singleSeedlingImage.sh "MATLAB_Compiler_Runtime/v840/"
echo "Done run: shell for compile"
