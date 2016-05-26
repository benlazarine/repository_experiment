#!/bin/bash
echo "Download started"
wget -O sayhi.sh https://bitbucket.org/leeatuw/repository_experiment/raw/master/sayhi.sh
echo "Download ended"
echo "shell started"
chmod +x sayhi.sh
./sayhi.sh
echo "shell ended"

