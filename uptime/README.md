# uptime demo

1. hosts

1. run `uptime` against `hosts` namenode

       $ ansible namenode -i hosts -m command -a "uptime" -u root

1. run `uptime` against `hosts` datanode

       $ ^namenode^datanode

1. run `uptime` against `hosts` all

       $ ^datanode^all

1. create a simple shell `foo.sh`

       $ ansible all -i hosts -m script -a foo.sh -u root

1. group_vars

       $ pico group_vars/icss
       ---
       ansible_ssh_user: root

1. without typing `-u root`

       $ ansible all -i hosts -m script -a foo.sh

