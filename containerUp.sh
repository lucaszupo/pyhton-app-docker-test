#!/bin/bash

for i in $(seq 5)
do
    echo "docker run -d -p 500$i:5000 -v dependencies01:/dependencies --name python-app-$i -e number=$i test/python-app:0.2"
    $(echo "docker run -d -p 500$i:5000 -v dependencies01:/dependencies --name python-app-$i -e number=$i test/python-app:0.2")
done