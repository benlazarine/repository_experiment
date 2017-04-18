#!/bin/bash
# $1: Repository address: $REPO
# $2: Program name: $prog name
# $3: Main path: $mainP
# $4: Inatall Path: $instPath
################################################################################################################
# download environment configuration script
echo "Start download: envConfig_phytoMorph.sh"
sudo wget -O $4/envConfig_phytoMorph.sh $1/envConfig_phytoMorph.sh
echo "Done download: envConfig_phytoMorph.sh"
################################################################################################################
################################################################################################################
################################################################################################################

# download environment configuration script
echo "Start download: ifExist.sh"
sudo wget -O $4/ifExist.sh $1/ifExist.sh
sudo chmod +x $4/ifExist.sh
echo "Done download: ifExist.sh"

################################################################################################################
################################################################################################################
echo "Start download: iPlant_ver0"
sudo wget -O $4/iPlant_ver0 $1/iPlant_ver0
sudo chmod +x $4/iPlant_ver0
echo "Done download: iPlant_ver0"
################################################################################################################
################################################################################################################
echo "Create directory for $2"
mkdir -p $3/$2/
echo "Start download: $2"
sudo wget -O $3/$2/$2 $1/$2
sudo chmod +x $3/$2/$2
echo "Done download: $2"
################################################################################################################
################################################################################################################
echo "Start download: launch.sh"
sudo wget -O $4/launch.sh $1/launch.sh
echo "Done download: launch.sh"
################################################################################################################
################################################################################################################
echo "Start download: run_$2.sh "
sudo wget -O $3/$2/run_$2.sh $1/run_$2.sh
sudo chmod +x $3/$2/run_$2.sh  
echo "Done download: run_$2.sh "
################################################################################################################
################################################################################################################
echo "Start download: $2.desktop "
sudo wget -O $2.desktop $1/$2.desktop
sudo mv $2.desktop ~/Desktop/
sudo chmod +x ~/Desktop/$2.desktop  
echo "Done download: $2.desktop "
################################################################################################################
################################################################################################################
echo "Start download: GUI$2.sh "
sudo wget -O $4/GUI$2.sh $1/GUI$2.sh
sudo chmod +x $4/GUI$2.sh  
echo "Done download: GUI$2.sh "
################################################################################################################
################################################################################################################
echo "Start download: phytoG.png "
sudo wget -O $4/phytoG.png $1/phytoG.png
sudo chmod +x $4/phytoG.png  
echo "Done download: phytoG.png "
################################################################################################################
################################################################################################################

# "NOTE: these lines were explicitly commented out since they were not properly commented out -EJS"
#sudo wget -O $4/icommands.x86_64.tar.bz2 http://davos.cyverse.org/irods-rest/rest/fileContents/iplant/home/nmiller/publicData/icommands.x86_64.tar.bz2?ticket=acamNrXKjPYRxtM
#sudo tar xjf icommands.x86_64.tar.bz2 -C /usr/sbin/
#sudo mv /usr/sbin/icommands/icd /usr/sbin/

#sudo wget -O /usr/sbin/irodsFs http://davos.cyverse.org/irods-rest/rest/fileContents/iplant/home/nmiller/publicData/irodsFs?ticket=WIfveh6JwMykqun
#sudo chmod +x /usr/sbin/irodsFs


ils_exists=$(which ils)
if [ $? != 0 ]
then 
	echo "ERROR: IF YOU SEE THIS MESSAGE ICOMMANDS IS NOT INSTALLED, CONTACT MAINTAINER"
	exit 1
else
	echo "INFO: icommands was found in "$(dirname $ils_exists)"; no need to download"
fi

irodsfs_exists=$(which irodsFs)
if [ $? != 0 ]
then
	echo "ERROR: IF YOU SEE THIS MESSAGE IRODSFS IS NOT INSTALLED, CONTACT MAINTAINER"
	exit 1
else
	echo "INFO: irodsFs was found in "$(dirname $irodsfs_exists)"; no need to download"
fi
