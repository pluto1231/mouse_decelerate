#!/bin/sh

DEV_NAME="Gaming Mouse"
DEV_LIST=`xinput list | grep $DEV_NAME | cut -d '=' -f2 | cut -d '[' -f1`
DEACC_DEFAULT="-1"
CONST_DEACC_DEFAULT="1.8"

for i in $DEV_LIST;
do
  DEACC=`xinput list-props $i | grep "Device Accel Profile" | cut -d '(' -f2 | cut -d ')' -f1`
  CONST_DEACC=`xinput list-props $i | grep "Device Accel Constant Deceleration" | cut -d '(' -f2 | cut -d ')' -f1`
  xinput set-prop $i $DEACC $DEACC_DEFAULT
  xinput set-prop $i $CONST_DEACC $CONST_DEACC_DEFAULT
done
