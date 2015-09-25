#!/bin/bash

echo '##################################################'
echo 'DME BENCHMARK'
echo '##################################################'

#Go to  DME folder
cd $MINIMALIST/examples/additional-benchmark-exs/dme

#Show specification
more dme-e.bms

#Generate the graph
bms2ps dme-e.bms

#Minimalist it!
minimalist-basic dme-e.bms

#plot nand circuit
plot_nand DME_E-L.sol
