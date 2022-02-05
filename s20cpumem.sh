#!/bin/bash

rm tosendmail.txt
touch tosendmail.txt
echo "NODE       CPU%      MEMORY%" >> tosendmail.txt

cpu101=$(cat /proc/stat | awk '/cpu/ {printf"%.2f\n", ($2+$4)*100/($2+$4+$5)}' | head -1)
mem101=$(free -m | awk '/Mem/ {printf("%.2f", $3*100/$2)}')
echo "MasterNode $cpu101       $mem101" >> tosendmail.txt
 
cpu102=$(sshpass -p vinay ssh 192.168.56.102 cat /proc/stat | awk '/cpu/ {printf"%.2f\n", ($2+$4)*100/($2+$4+$5)}' | head -1)
mem102=$(sshpass -p vinay ssh 192.168.56.102 free -m | awk '/Mem/ {printf("%.2f", $3*100/$2)}')

echo "WorkerNode $cpu102       $mem102" >> tosendmail.txt
cat tosendmail.txt
cat tosendmail.txt | mail -s "CPU & Memory Report" vinayreddygokul@gmail.com  



