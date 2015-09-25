#!/bin/bash

MINIMALIST_HOME=$1

#if the parameter is not set, save on user home
if [[ -z $MINIMALIST_HOME ]]; then
   MINIMALIST_HOME=~
fi

#Download minimalist to temp folder
cd /temp
wget http://www1.cs.columbia.edu/~nowick/asynctools/minimalist/core27/minimalist2.0-linux.tgz

#Extract to minimalist home
tar -xf minimalist2.0-linux.tgz -C $MINIMALIST_HOME

#Set parameters to bashrc
cat << EOT >> ~/.bashrc
export MINIMALIST=$MINIMALIST_HOME/MINIMALIST
export PATH=$MINIMALIST/bin:$MINIMALIST/Linux-X86/bin:$PATH
export LD_LIBRARY_PATH=$MINIMALIST/Linux-X86/lib:$LD_LIBRART_PATH
EOT


sudo apt-get -y install gv graphviz

echo "MINIMALIST installed successfully!"
