#!/bin/bash

# Create a temp directory here ... 
mkdir tmp;
cd tmp;
# Cloning repository ...
echo "Cloning PerfMon Repository ...";
`git clone https://github.com/dblossom-marist/PerfMon.git`;
echo "repository cloned";
rm -rf PerfMon/.git;
rm PerfMon/BackendTest.py;
rm PerfMon/MetricCollector.db;
cp ../post_install.sh PerfMon;
../make*/makeself.sh --target /usr/share/perfmon /home/blossom/git/mscs710-blossom/PerfMon/build/tmp/PerfMon perfmon.run "PerfMon" ./post_install.sh;
mv perfmon.run ..;
cd ..;
rm -rf tmp;
