#!/bin/zsh

v=`tmutil listlocalsnapshots /`

echo $v | while read a; 
do 

if [ "$a" != "Snapshots for volume group containing disk /:" ];then
d=${a:22:17}
tmutil deletelocalsnapshots $d;
echo "deleted: "$a;
fi
done

