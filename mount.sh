# !/bin/bash

dir=./.config

for i in $(ls $dir)
do
  echo $i
  sudo mount --bind ~/.config/$i $dir/$i
done
