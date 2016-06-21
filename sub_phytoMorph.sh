#!/bin/bash
<<<<<<< HEAD
			# $1 progName="phytoG";
			# $2 REPO="https://bitbucket.org/leeatuw/repository_experiment/raw/master"
			# echo $progName
			#$3 MCRver="v717";
			#echo $MCRver
			#$4 MRCticN="HlB1NJlWX8f8mqJ";
			#$5 mainP="/opt/imagePhenomics";
			#$6 MCRdownP="$mainP/common"
			#$7 MCRruntimeVer="R2012a"
			#$8 MCRuzipP="$MCRdownP/MATLAB/MATLAB_Compiler_Runtime_$MCRruntimeVer";
################################################################################################################
# download environment configuration script
echo "Start download: envConfig_phytoMorph.sh"
wget -O download_phytoMorph.sh $2/download_phytoMorph.sh
echo "Done download: envConfig_phytoMorph.sh"
sudo chmod +x download_phytoMorph.sh
./download_phytoMorph.sh $2 $1 $5
################################################################################################################
################################################################################################################
# $1: MCR version: MCRver
# $2: ticket number: MRCticN
# $3: MCR download path: MCRdownP
# $4: MCR uzip path: MCRuzipP
# $5: MCR runtime version: MCRruntimeVer
# run environment configuration script
echo "Start run: envConfig_phytoMorph.sh"
sudo chmod +x envConfig_phytoMorph.sh
./envConfig_phytoMorph.sh $3 $4 $6 $8 $7
echo "End run: envConfig_phytoMorph.sh"
################################################################################################################
################################################################################################################
# $1: program name
# $2: program path
# $3: MCR version
# $4: MCR runtime version
# $5: MCR path
=======
################################################################################################################
echo "Create directory for MCR-v717.zip"
mkdir -p /opt/imagePhenomics/common/
echo "Start download: MCR-v717.zip"
wget -O /opt/imagePhenomics/common/v717.zip http://davos.cyverse.org/irods-rest/rest/fileContents/iplant/home/nmiller/publicData/v717.zip?ticket=HlB1NJlWX8f8mqJ
echo "Done download: MCR-v717.zip"
################################################################################################################
################################################################################################################
echo "Start download: iPlant_ver0"
wget -O iPlant_ver0 https://bitbucket.org/leeatuw/repository_experiment/raw/master/iPlant_ver0
echo "Done download: iPlant_ver0"
################################################################################################################
################################################################################################################
echo "Create directory for phytoG"
mkdir -p /opt/imagePhenomics/phytoG/
echo "Start download: phytoG"
wget -O /opt/imagePhenomics/phytoG/phytoG https://bitbucket.org/leeatuw/repository_experiment/raw/master/phytoG
sudo chmod +x /opt/imagePhenomics/phytoG/phytoG
echo "Done download: phytoG"
################################################################################################################
################################################################################################################
echo "Start download: launch.sh"
wget -O launch.sh https://bitbucket.org/leeatuw/repository_experiment/raw/master/launch.sh
echo "Done download: launch.sh"
################################################################################################################
################################################################################################################
echo "Start download: run_phytoG.sh "
wget -O /opt/imagePhenomics/phytoG/run_phytoG.sh https://bitbucket.org/leeatuw/repository_experiment/raw/master/run_phytoG.sh
sudo chmod +x /opt/imagePhenomics/phytoG/run_phytoG.sh  
echo "Done download: run_phytoG.sh "
################################################################################################################
################################################################################################################
echo "start unzip: v717.zip"
mkdir -p /opt/imagePhenomics/common/MATLAB/MATLAB_Compiler_Runtime_R2012a/
#unzip /opt/imagePhenomics/common/v717.zip -C /opt/imagePhenomics/common/MATLAB/MATLAB_Compiler_Runtime_R2012a/
sudo unzip -q /opt/imagePhenomics/common/v717.zip -d /opt/imagePhenomics/common/MATLAB/MATLAB_Compiler_Runtime_R2012a/
echo "Done unzip: v717.zip"
################################################################################################################
################################################################################################################
echo "Start export: v717.zip"
export MCR_CACHE_ROOT=$PWD/mcr_cache
echo "Done export: v717.zip"
################################################################################################################
################################################################################################################
>>>>>>> parent of 41a2eb3... unzip overwrite added
echo "Start run: shell for compile"
sudo chmod +x launch.sh
./launch.sh $1 $5 $3 $7 $6 
echo "Done run: shell for compile"
