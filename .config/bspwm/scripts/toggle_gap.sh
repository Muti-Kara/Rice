#!/bin/bash

cur_gap=$(bspc config window_gap)

if [[ cur_gap -eq 20 ]];
then
	bspc config window_gap 0
else
	bspc config window_gap 20
fi
