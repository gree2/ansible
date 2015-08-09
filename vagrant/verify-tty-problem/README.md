# not a tty problem

1. this message is displayed by the following command

        # in `/root/.profile` script
        mesg n

1. to run the provisioners again

       # host
       $ vagrant provision

1. check `/root/.profile`

       # host
       $ vagrant ssh

       # guest
       $ sudo cat /root/.profile

1. remove `mesg n` line

       # guest
       $ sudo sed -i "/mesg n/d" /root/.profile
       $ logout

       # host
       $ vagrant provision
