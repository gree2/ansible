# ping demo

1. without `ansible.cfg`

        $ ansible-playbook -i hosts ping.yml 

1. with `ansible.cfg`

        $ ansible-playbook ping.yml 

# whoami demo

1. register variables

1. using the output of a command in a task

# facts

1. $ ansible local -m setup

1. $ ansible local -m setup -a 'filter=ansible_en*'
