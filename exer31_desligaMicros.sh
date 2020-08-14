#!/bin/bash

ip=1
endip=20
until [ $ip -gt $endip ]
do
	ssh root@192.168.1.$ip "shutdown -h now"
	ip=`expr $ip + 1`
done
