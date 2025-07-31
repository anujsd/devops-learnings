#!/bin/sh

srv=sshd

if systemctl is-active $srv --quiet; then
    systemctl status $srv | grep Active:
fi