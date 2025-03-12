#!/bin/bash
change_mac(){
    sudo ifconfig wlp2s0 down;
    sleep 1;
    sudo macchanger -m $1 wlp2s0;
    sudo ifconfig wlp2s0 up
    sudo service NetworkManager restart;
    sleep 6;
    sudo iptables -t nat -A POSTROUTING -j SNAT --to-source $2;
    echo done;
}
if [[ $1 == "--help" ]]
then
    echo "\$1 = mac adress and \$2 = ip adress";
elif [[ $1 == '' ]] || [[ $2 == '' ]]
then
    echo check the input and try again;
elif [[ 17 -ne ${#1} ]]
then
    echo check length of mac adress;
elif [[ ${#2} -lt 10 ]] || [[ ${#2} -gt 15 ]]
then
    echo "IP adress is not valid";
else
    change_mac $1 $2;
fi
