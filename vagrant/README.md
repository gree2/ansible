# ansible

1. $ ansible webservers -m ping

1. $ ansible-playbook web-notls.yml

1. execute playbook

        #!/usr/bin/env ansible-playbook
        $ .web-notls.yml

1. bring up vm

        $ vagrant up

1. get info

        $ vagrant ssh-config
        # use output to edit `hosts` file