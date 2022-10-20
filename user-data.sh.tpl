#!/bin/bash

#whenever the file appears in the server it opens it increment the number, overwrite, wait 10s and send further
cat << EOF > /home/ubuntu/ring.sh
#!/bin/bash
while true; 
do 
        while [ ! -f ./test.txt ]; do sleep 1; done;
        read -r firstline<test.txt
        n=\$((firstline+1))
        echo \$n > test.txt
        cat test.txt
        sleep 2
        scp  -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i ~/.ssh/aws-talent-academy-group4 ./test.txt ubuntu@${next_server_ip}:~/test.txt 
        rm test.txt 
done 
EOF

sudo chmod 600 /home/ubuntu/.ssh/aws-talent-academy-group4

. /home/ubuntu/user-data.sh