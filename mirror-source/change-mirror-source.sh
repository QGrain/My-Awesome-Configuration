#!/bin/bash
set -e

target_name=/etc/apt/sources.list
code_name=`cat /etc/os-release | grep VERSION_CODENAME | cut -d = -f 2`
echo -e "Dectect OS code name: ${code_name}\n"
source_name=sources-${code_name}.list

echo -e "Backup original sources.list"
sudo cp ${target_name} /etc/apt/sources.list.bak

echo -e "Change to new sources.list"
sudo cp ${source_name} ${target_name}