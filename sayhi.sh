#!/bin/bash
################################################################################################################
echo "Start download: MCR-v717.zip"
curl -H "Pragma:" --retry 30 --retry-delay 6 -o v717.zip http://proxy.chtc.wisc.edu/SQUID/ndmiller/v717.zip
echo "Done download: MCR-v717.zip"
################################################################################################################
################################################################################################################
echo "Start download: iPlant_ver0"
wget https://bitbucket.org/leeatuw/repository_experiment/raw/master/iPlant_ver0
echo "Done download: iPlant_ver0"
################################################################################################################
################################################################################################################
echo "Start download: phytoG"
wget https://bitbucket.org/leeatuw/repository_experiment/raw/master/phytoG
echo "Done download: phytoG"
################################################################################################################
################################################################################################################
echo "Start download: launch.sh"
wget https://bitbucket.org/leeatuw/repository_experiment/raw/master/launch.sh
echo "Done download: launch.sh"
################################################################################################################
################################################################################################################
echo "Start download: run_phytoG.sh "
wget https://bitbucket.org/leeatuw/repository_experiment/raw/master/run_phytoG.sh 
echo "Done download: run_phytoG.sh "
################################################################################################################
################################################################################################################
echo "start unzip: vv717.zip"
mkdir -p /opt/imagePhenomics/common/MATLAB/MATLAB_Compiler_Runtime_R2012a/
unzip -q v717.zip -C /opt/imagePhenomics/common/MATLAB/MATLAB_Compiler_Runtime_R2012a/
echo "Done unzip: vv717.zip"
################################################################################################################
################################################################################################################
echo "Start export: vv717.zip"
export MCR_CACHE_ROOT=$PWD/mcr_cache
echo "Done export: vv717.zip"
################################################################################################################
################################################################################################################
echo "Start run: shell for compile"
mkdir -p $MCR_CACHE_ROOT
./launch.sh
echo "Done run: shell for compile"
