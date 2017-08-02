#!/usr/bin/env sh

OUTPUT=./train_set.vec
INFO_FILE=./info.dat
BG_FILE=./bg.txt
NUM=25000
WEIGHT=20 
HIGHT=20 

opencv_createsamples \
    -vec $OUTPUT \
    -info $INFO_FILE \
    -bg $BG_FILE \
    -num $NUM \
    -w $WEIGHT \
    -h $HIGHT \
