#!/bin/bash
echo "Download started"
curl -o https://bitbucket.org/leeatuw/repository_experiment/raw/master/sayhi.sh
echo "Download ended"
echo "shell started"
chmod +x sayhi.sh
sayhi.sh
echo "shell ended"

