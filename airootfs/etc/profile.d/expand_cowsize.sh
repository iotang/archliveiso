#!/bin/bash
echo 'live' | sudo -S mount -o remount,size=2G /run/archiso/cowspace
