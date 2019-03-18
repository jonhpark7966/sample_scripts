#!/bin/bash

for i in $(find -name \*spec*xml); do # Not recommended, will break on whitespace
  NUM_NAMES="$(grep -i "number_of_names" $i | awk -F">|<" '{ print $3 }')"
  NUM_SYMS="$(grep -i "symbol" $i | grep -c "ordinal")"
  if [ $NUM_NAMES -ne $NUM_SYMS ];then
    echo $i
    echo $NUM_NAMES $NUM_SYMS
  fi

done
