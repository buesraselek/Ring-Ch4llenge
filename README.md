# Ring-Ch4llenge
Ring Number Challenge
Overview
As a team, you should coordinate to deploy a server in each of your individual accounts. Each server will contain a file at your own defined location. The file need to contain a number. Every 10 seconds(or 1 minute if you are using cron), the servers will increment the value of the file and pass it along to the next one.

For example, Server 1 contains a file with the value 10, it will increment it to 11 and send that file to Server 2. Server 2 will increment the valeur in the file to 12 and send it to Server 3, and so on.

Recommendation
Thinking outside the box -- the idea is to have a value incremented on each server and passing that value to the other servers. Try to find an interesting way to communicate between each server.
Security is always important -- Make sure to keep security as a priority when working over the network and sharing information only between trusted servers.
Be creative in your delivery -- You can output the file containing the number to the terminal (through ssh) in an informative way, showing the server name and value or may be have a website that will display these information.
Automate all the things -- Use as much automation as you can, just to make it easy to deploy from scratch and avoid unnecessary manual steps.
Team Power -- Work together, assign specific task to each other, make sure it's clear on who is working on what.
Coordination is key -- Github is always a good place to save your code as a team, decide between yourselves who will own the team main repository and giving you access to create your own branch and submit pull requests.


My own Description:

1. Each one of us created an EC2 Instance with terraform 
2.We generated a SSH Key with the following command : $ ssh-keygen -t rsa
3.We saved the private and the public key.(extension .pub for the public key)
4.Import the Public key on the AWS Management Console --> so each one of us has the same ssh key to be connected with the servers
5.Login with ~/.ssh/filename ubuntu@ipaddress
6.created a bash script to automate the process named user-data.sh.tpl
7.the value increment and the scp command send the file to the next server
8.the file gets deleted after incrementing the value 

