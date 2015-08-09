#!/usr/bin/env bash

echo "replace sources.list => mirrors.163.com"
sudo sed 's@archive.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list
sudo sed 's@archive.canonical.com@mirrors.163.com@' -i /etc/apt/sources.list
sudo sed 's@security.ubuntu.com@mirrors.163.com@' -i /etc/apt/sources.list

echo "install packages     => nodejs lynx-cur ruby1.9.1-dev"
sudo apt-get update -y                #>>/home/vagrant/provision-script.log 2>&1
sudo apt-get install nodejs -y        #>>/home/vagrant/provision-script.log 2>&1
sudo apt-get install lynx-cur -y      #>>/home/vagrant/provision-script.log 2>&1
sudo apt-get install ruby1.9.1-dev -y #>>/home/vagrant/provision-script.log 2>&1

echo "replace gem sources  => http://ruby.taobao.org/"
sudo gem sources --remove https://rubygems.org/ #>>/home/vagrant/provision-script.log 2>&1
sudo gem sources -a http://ruby.taobao.org/     #>>/home/vagrant/provision-script.log 2>&1
sudo gem sources -l                             #>>/home/vagrant/provision-script.log 2>&1

echo "install bundler jekyll"
sudo gem install bundler #>>/home/vagrant/provision-script.log 2>&1
sudo gem install jekyll  #>>/home/vagrant/provision-script.log 2>&1
jekyll --version         #>>/home/vagrant/provision-script.log 2>&1
