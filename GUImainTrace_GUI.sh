#!/bin/bash
progName="mainTrace_GUI";
REPO="https://bitbucket.org/leeatuw/repository_experiment/raw/Jun202016";
MCRver="v717";
MRCticN="HlB1NJlWX8f8mqJ";
mainP="/opt/imagePhenomics";
MCRdownP=$mainP"/common"
MCRruntimeVer="R2012a"
MCRuzipP="$MCRdownP/MATLAB/MATLAB_Compiler_Runtime_$MCRruntimeVer";

instPath="/home/phytoMorph"
echo "Start download"
sudo wget -O $instPath/sub_phytoMorph.sh $REPO/sub_phytoMorph.sh
echo "End download"
echo "Start run "
sudo chmod +x $instPath/sub_phytoMorph.sh
sudo $instPath/sub_phytoMorph.sh $progName $REPO $MCRver $MRCticN $mainP $MCRdownP $MCRruntimeVer $MCRuzipP $instPath
echo "End run "



