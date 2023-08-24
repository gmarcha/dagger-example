#! /bin/bash

# Dagger engine requires this kernel module to work properly.
# This kernel module is not loaded by default on some systems.
# It is not necessary to install iptables service to load this module.

sudo modprobe iptable-nat
