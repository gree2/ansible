# ansible
play with ansible

### ping demo

$ ansible-playbook -i ping.hosts ping.yml 

PLAY [local] ****************************************************************** 

TASK: [ping ] ***************************************************************** 
ok: [127.0.0.1]

PLAY RECAP ******************************************************************** 
127.0.0.1                  : ok=1    changed=0    unreachable=0    failed=0   
