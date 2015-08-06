# ansible

1. $ ansible webservers -m ping

1. $ ansible-playbook web-notls.yml

1. execute playbook

        #!/usr/bin/env ansible-playbook
        $ .web-notls.yml

1. bring up vm

        $ vagrant up

1. get info about ssh port

        $ vagrant ssh-config
        # use output to edit `hosts` file

1. get info about network interface

        $ ansible vagrant2 -a "ip addr show dev eth0"

1. [download ubuntu/trusty64](http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box)