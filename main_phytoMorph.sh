#!/bin/bash
echo "Download started"
wget https://bitbucket.org/leeatuw/repository_experiment/raw/master/sayhi.sh
echo "Download ended"
echo "shell started"
./sub_phytoMorph.sh
echo "shell ended"

