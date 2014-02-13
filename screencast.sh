#! /bin/bash

interval=5
startDate=`date +%Y-%m-%d-%H-%M-%S`

echo Using $startDate as directory

mkdir $startDate
cd $startDate

i=1
while [ 1 ];
    do 
    currentDate=`date +%s`
    sleep $interval
    scrot $currentDate.jpg
    echo Generated $currentDate.jpg "(frame $i)"
    i=$(($i + 1))
done
