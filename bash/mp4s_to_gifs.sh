#!/bin/bash

if [ "$1" != "" ]; then
    echo "Convert files .mp4 files in $1 to gifs."
else
    echo "Param1 is empty. Specify the directories which contains .mp4 files."
    exit 1
fi

for file in $1/*.mp4; do
  postfix=.gif
  sourcefile=${file%.mp4}
  ffmpeg -i $file -vf scale=256:-1 -r 10 $sourcefile$postfix
done
