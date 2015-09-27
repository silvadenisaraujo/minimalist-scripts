#!/bin/bash
echo "#############################################################"
echo "#                Installing MINIMALIST                      #"
echo "#############################################################"

MINIMALIST_HOME=$1

#if the parameter is not set, save on user home
if [[ -z $MINIMALIST_HOME ]]; then
   echo "No parameters passed, installing MINIMALIST on $HOME"
   MINIMALIST_HOME=$HOME
fi

#Download minimalist to temp folder
cd /temp
wget http://www1.cs.columbia.edu/~nowick/asynctools/minimalist/core27/minimalist2.0-linux.tgz

#Extract to minimalist home
tar -xf minimalist2.0-linux.tgz -C $MINIMALIST_HOME

#Set parameters to bashrc
cat << EOT >> $HOME/.bashrc
#Minimalist exports
export MINIMALIST=$MINIMALIST_HOME/MINIMALIST
export PATH=$MINIMALIST/bin:$MINIMALIST/Linux-X86/bin:$PATH
export LD_LIBRARY_PATH=$MINIMALIST/Linux-X86/lib:$LD_LIBRART_PATH
EOT

#Necessary for using minimalist
sudo apt-get update
sudo apt-get -y install gv graphviz

echo "############################################################"
echo "#           MINIMALIST installed successfully!             #"
echo "############################################################"
