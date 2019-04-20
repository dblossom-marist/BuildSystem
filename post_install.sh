#!/bin/bash
# put the service file in /lib/systemd/system/
mv /usr/share/perfmon/perfmon.service /lib/systemd/system
# enable said service
systemctl enable perfmon.service
# Reload
systemctl daemon-reload
# start said service
systemctl start perfmon.service
