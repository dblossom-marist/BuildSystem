#!/bin/bash
# put the service file in /lib/systemd/system/
echo "executing post install steps.....";
mv /usr/share/perfmon/perfmon.service /lib/systemd/system;
# Symlink an 'executable' to the actual python script.
ln -s /usr/share/perfmon/MetricsCollector.py /usr/bin/PerfMonMetricsCollector;
# enable said service
systemctl enable perfmon.service;
# Reload
systemctl daemon-reload;
# start said service
systemctl start perfmon.service;
