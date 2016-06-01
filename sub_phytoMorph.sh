#!/bin/bash
################################################################################################################
echo "Start download: MCR-v717.zip"
wget -O v717.zip http://davos.cyverse.org/irods-rest/rest/fileContents/iplant/home/nmiller/publicData/v717.zip?ticket=fCMgrszgk7H3Dy2
echo "Done download: MCR-v717.zip"
################################################################################################################
################################################################################################################
echo "Start download: iPlant_ver0"
wget -O iPlant_ver0 https://bitbucket.org/leeatuw/repository_experiment/raw/master/iPlant_ver0
echo "Done download: iPlant_ver0"
################################################################################################################
################################################################################################################
echo "Start download: phytoG"
wget -O phytoG https://bitbucket.org/leeatuw/repository_experiment/raw/master/phytoG
echo "Done download: phytoG"
################################################################################################################
################################################################################################################
echo "Start download: launch.sh"
wget -O launch.sh https://bitbucket.org/leeatuw/repository_experiment/raw/master/launch.sh
echo "Done download: launch.sh"
################################################################################################################
################################################################################################################
echo "Start download: run_phytoG.sh "
wget -O run_phytoG.sh https://bitbucket.org/leeatuw/repository_experiment/raw/master/run_phytoG.sh 
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
