#!/bin/bash
rm -rf mavlink #make shure it dosen't exist
#I'm just folowing instalation guide https://mavlink.io/en/getting_started/installation.html
sudo apt-get install python3-pip #just in case, if it's not presented
pip install --user future #installing required module
sudo apt-get install python-tk #installing TkItnter
git clone https://github.com/mavlink/mavlink.git --recursive #dowloading mavLink from git
PYTHONPATH=$PWD/mavlink # setting path to the downoaded directory
