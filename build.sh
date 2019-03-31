#!/bin/bash

# Create a temp directory here ... 
mkdir tmp;
cd tmp;
# Cloning repository ...
echo "Cloning PerfMon Repository ...";
`git clone https://github.com/dblossom-marist/PerfMon.git`;
echo "repository cloned";
rm -rf PerfMon/.git;
../make*/makeself.sh --target ~/perfinstall /home/blossom/git/mscs710-blossom/PerfMon/build/tmp perfmon.run "PerfMon" echo INSTALLED...;
mv perfmon.run ..;
cd ..;
rm -rf tmp;
