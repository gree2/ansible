#!/usr/bin/env bash

sudo sed 's@archive.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list
sudo sed 's@archive.canonical.com@mirrors.163.com@' -i /etc/apt/sources.list
sudo sed 's@security.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list
sudo apt-get update
