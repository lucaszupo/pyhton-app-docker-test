#!/bin/bash
for i in $(seq 5)
do
    ip=$(docker inspect python-app-$i | jq '.[] | .NetworkSettings | .Networks | .bridge | .IPAddress' | sed 's/"//g')
    echo -e "curl $ip:5000/_check"
    result=$(curl $ip:5000/_check)
    echo -e python-app-$i=$result
done