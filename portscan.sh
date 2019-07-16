#.DESCRIPTION
# Shell script to see what ports are open in the hosts 
#.NOTES
#Author: Felix Mathew
#Date:   July 2019    
#!/bin/bash
#!/bin/bash


echo "We are scanning ports on host: "
read host

for port in {1..65000}; do
    (echo > /dev/tcp/$host/$port) &>/dev/null
    [ $? -eq 0 ] && echo "$port open"
if [ $port == 1000 ]
then
  echo "first 1000 ports scanned"
fi

if [ $port == 65000 ]
then
echo " port scan complete"
fi

done
