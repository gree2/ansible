#!/usr/bin/env bash

echo "replace sources.list => mirrors.163.com"
sudo sed 's@archive.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list
sudo sed 's@archive.canonical.com@mirrors.163.com@' -i /etc/apt/sources.list
sudo sed 's@security.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list
sudo apt-get update -y
