#!/bin/bash
BACKGROUND="skynet-480x320.png"
# setterm -term linux -back default -fore black -clear all

# Image will continue to show after fbi is closed until something else draws 
# on the screen, so we'll kill it after 10s so we don't end up with 20 copies
( sleep 10 ; kill $(pgrep fbi) ) & 
fbi -T 2 -d /dev/fb1 -noverbose -a $MENUDIR$BACKGROUND
