#!/bin/bash

flst=(`ls | grep m2ts`)

for file in ${flst[@]};
do

year=`echo $file | awk '{print substr($0, 1, 4)}'`
month=`echo $file | awk '{print substr($0, 5, 2)}'`
day=`echo $file | awk '{print substr($0, 7, 2)}'`
hour=`echo $file | awk '{print substr($0, 9, 2)}'`
minute=`echo $file | awk '{print substr($0, 11, 2)}'`
second=`echo $file | awk '{print substr($0, 13, 2)}'`

date="${month}/${day}/${year} ${hour}:${minute}:$second"

setfile -d "{$date}" $file 

done