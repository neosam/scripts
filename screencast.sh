#! /bin/bash

interval=5

i=1
while [ 1 ];
    do 
    currentDate=`date +%s`
    sleep $interval
    scrot $currentDate.jpg
    echo Generated $currentDate.jpg "(frame $i)"
    i=$(($i + 1))
done
