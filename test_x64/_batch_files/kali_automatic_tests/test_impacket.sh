#!/bin/sh
a="/root/Desktop/_OT/_reg_Win_per_version/"
for i in $a*; do
echo "*****************************************"
echo $i
r="/reg/system"
g="/reg/security"
e="/reg/sam"
sys=$i$r
sec=$i$g
sam=$i$e
echo "DUMPING DATA"
echo `secretsdump.py -sam $sam -system $sys -security $sec LOCAL`
sleep 5 
echo "*****************************************"
done
