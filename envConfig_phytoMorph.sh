#!/bin/bash
# $1: MCR version: MCRver
# $2: ticket number: MRCticN
# $3: MCR download path: MCRdownP
# $4: MCR uzip path: MCRuzipP
# $5: MCR runtime version: MCRruntimeVer
################################################################################################################
			#MCRver="v717";
			#echo $MCRver
			#MRCticN="HlB1NJlWX8f8mqJ";
			#MCRdownP="/opt/imagePhenomics/common";
			#MCRruntimeVer="R2012a"
			#MCRuzipP="$MCRdownP/MATLAB/MATLAB_Compiler_Runtime_$MCRruntimeVer";
			#break;;



installDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "DEBUG: ${installDir}/ifExist.sh '-f' $1 $3 $2 'zip'"
${installDir}/ifExist.sh '-f' $1 $3 $2 'zip'

echo "DEBUG: ${installDir}/ifExist.sh '-d' $1 \"$4/MATLAB_Compiler_Runtime/\" $3"
${installDir}/ifExist.sh '-d' $1 \"$4/MATLAB_Compiler_Runtime/\" $3


myMCRZip="$3/$1.zip"
if [ -f "$myMCRZip" ]
then
	echo "$myMCRZip found. Skip download $myMCRZip"
else
	echo "$myMCRZip not found."
	echo "Create directory for MCR-$1.zip"
	mkdir -p $3/
	echo "Start download: MCR-$1.zip"
	wget -O $3/$1.zip http://de.cyverse.org/dl/d/9FC9295E-BF78-49E1-B111-EBDA83F090C3/$1.zip
	echo "Done download: MCR-$1.zip"
fi
################################################################################################################
################################################################################################################

myMCRDIR="$4/MATLAB_Compiler_Runtime/$1/"
if [ -d "$myMCRDIR" ]
then
	echo "$myMCRDIR found. Skip unzip $myMCRDIR"
else
	echo "$myMCRDIR not found."
	echo "start unzip: $1.zip"
	mkdir -p $4/
	sudo unzip -o -q $3/$1.zip -d $4/
	echo "Done unzip: $1.zip"
fi

################################################################################################################
################################################################################################################
echo "Set export: $1.zip"
export MCR_CACHE_ROOT=$PWD/mcr_cache
mkdir -p $MCR_CACHE_ROOT
echo "Done: $1.zip"
################################################################################################################
################################################################################################################


