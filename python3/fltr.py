#!/usr/bin/python3

f_windows = open("../txt/dll.windows")

lines = f_windows.readlines()
for line in lines:
    try:
        words = line.split('\t')
        if int(words[2]) == 1:
            print(words[4] + '\t' + words[5])
    except:
        continue

f_windows.close()
