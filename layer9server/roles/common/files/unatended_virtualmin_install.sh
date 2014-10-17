#!/bin/bash
if [ -z $1 ]; then
        echo "Usage"; echo "  $0 [hostname]"; echo ""; exit
fi
wget http://software.virtualmin.com/gpl/scripts/install.sh -O install.sh
export VIRTUALMIN_NONINTERACTIVE="1"
chmod +x install.sh
./install.sh -f -host $1
rm install.sh
