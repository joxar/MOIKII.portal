#!/bin/bash

for i in {0..2}
do
  for j in {0..4}
  do
    for k in {0..5}
    do
      for l in {0..9}
        do
          cp -p tmp.png "${i}${j}${k}${l}.png"
        done
    done
  done
done


