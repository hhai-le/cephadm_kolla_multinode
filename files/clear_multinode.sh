#!/bin/bash

folder=("control" "network" "compute" "monitoring" "storage")
for i in ${folder[@]}
do 
    for j in $(crudini --get /etc/kolla/multinode $i)
    do crudini --del /etc/kolla/multinode $i $j
    done
done