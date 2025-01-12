#!/bin/bash
# $1: Repository address: $REPO
# $2: Program name: $prog name
# $3: Main path: $mainP
################################################################################################################
# download environment configuration script
echo "Start download: envConfig_phytoMorph.sh"
wget -O envConfig_phytoMorph.sh $1/envConfig_phytoMorph.sh
echo "Done download: envConfig_phytoMorph.sh"
################################################################################################################
################################################################################################################
echo "Start download: iPlant_ver0"
wget -O iPlant_ver0 $1/iPlant_ver0
echo "Done download: iPlant_ver0"
################################################################################################################
################################################################################################################
echo "Create directory for phytoG"
mkdir -p $3/$2/
echo "Start download: phytoG"
wget -O $3/$2/$2 $1/$2
sudo chmod +x $3/$2/$2
echo "Done download: phytoG"
################################################################################################################
################################################################################################################
echo "Start download: launch.sh"
wget -O launch.sh $1/launch.sh
echo "Done download: launch.sh"
################################################################################################################
################################################################################################################
echo "Start download: run_phytoG.sh "
wget -O $3/$2/run_$2.sh $1/run_$2.sh
sudo chmod +x $3/$2/run_$2.sh  
echo "Done download: run_phytoG.sh "
################################################################################################################
################################################################################################################
wget -O icommands.x86_64.tar.bz2 http://davos.cyverse.org/irods-rest/rest/fileContents/iplant/home/nmiller/publicData/icommands.x86_64.tar.bz2?ticket=acamNrXKjPYRxtM
sudo tar xjf -o -q icommands.x86_64.tar.bz2 -C /usr/sbin/
wget -O /usr/sbin/irodsFs http://davos.cyverse.org/irods-rest/rest/fileContents/iplant/home/nmiller/publicData/irodsFs?ticket=WIfveh6JwMykqun

