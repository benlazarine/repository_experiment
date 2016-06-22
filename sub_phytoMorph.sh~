#!/bin/bash
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
#$9 instPath="/home/phytoMorph/"
################################################################################################################
# download environment configuration script
echo "Start download: envConfig_phytoMorph.sh"
sudo wget -O $9/download_phytoMorph.sh $2/download_phytoMorph.sh
echo "Done download: envConfig_phytoMorph.sh"
sudo chmod +x $9/download_phytoMorph.sh
sudo $9/download_phytoMorph.sh $2 $1 $5 $9
################################################################################################################
################################################################################################################
# $1: MCR version: MCRver
# $2: ticket number: MRCticN
# $3: MCR download path: MCRdownP
# $4: MCR uzip path: MCRuzipP
# $5: MCR runtime version: MCRruntimeVer
# run environment configuration script
echo "Start run: envConfig_phytoMorph.sh"
sudo chmod +x $9/envConfig_phytoMorph.sh
sudo $9/envConfig_phytoMorph.sh $3 $4 $6 $8 $7 
echo "End run: envConfig_phytoMorph.sh"
################################################################################################################
################################################################################################################
# $1: program name
# $2: program path
# $3: MCR version
# $4: MCR runtime version
# $5: MCR path
echo "Start run: shell for compile"
sudo chmod +x $9/launch.sh
sudo $9/launch.sh $1 $5 $3 $8
echo "Done run: shell for compile"
