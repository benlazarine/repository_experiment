#!/bin/bash
progName="mainTrace_GUI";
REPO="https://bitbucket.org/leeatuw/repository_experiment/raw/Jun202016";
MCRver="v717";
MRCticN="HlB1NJlWX8f8mqJ";
mainP="/opt/imagePhenomics";
MCRdownP=$mainP"/common"
MCRruntimeVer="R2012a"
MCRuzipP="$MCRdownP/MATLAB/MATLAB_Compiler_Runtime_$MCRruntimeVer";

sudo mkdir -p "/home/phytoMorph"
sudo cd "/home/phytoMorph"
echo "Start download"
wget -O sub_phytoMorph.sh $REPO/sub_phytoMorph.sh
echo "End download"
echo "Start run "
sudo chmod +x sub_phytoMorph.sh
sudo ./sub_phytoMorph.sh $progName $REPO $MCRver $MRCticN $mainP $MCRdownP $MCRruntimeVer $MCRuzipP
echo "End run "



