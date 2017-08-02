#!/usr/bin/env sh


OUTPUT_FILE=./output
VEC_FILE=./train_img_set/train_set.vec
BG_FILE=./train_img_set/bg.txt
NUM_POS=18000
NUM_NEG=30000
NUM_STAGE=20   
VAL_BUFSIZE=1024
IDX_BUFSIZE=1024

STAGE_TYPE=BOOST
FEATURE_TYPE=HAAR
# FEATURE_TYPE=LBP
WEIGHT=20
HEIGHT=20

BT=GAB
MIN_HITRATE=0.995
MAX_FALSE_ALARM_RATE=0.5
WEIGHT_TRIM_RATE=0.95
MAX_DEPTH=1
MAX_WEAK_COUNT=20

MODE=BASIC


opencv_traincascade \
    -data $OUTPUT_FILE \
    -vec $VEC_FILE \
    -bg $BG_FILE \
    -numPos $NUM_POS \
    -numNeg $NUM_NEG \
    -numStages $NUM_STAGE \
    -precalcValBufSize $VAL_BUFSIZE \
    -precalcIdxBufSize $IDX_BUFSIZE \
    -stageType $STAGE_TYPE \
    -featureType $FEATURE_TYPE \
    -w $WEIGHT \
    -h $HEIGHT \
    -bt $BT \
	-numThreads 3 \
    -minHitRate $MIN_HITRATE \
    -maxFalseAlarmRate $MAX_FALSE_ALARM_RATE \
    -weightTrimRate $WEIGHT_TRIM_RATE \
    -maxDepth $MAX_DEPTH \
    -maxWeakCount $MAX_WEAK_COUNT \
    -mode $MODE \
    # -baseFormatSave \
