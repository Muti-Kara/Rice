#!/bin/bash

cur_pad=$(bspc config left_padding)

if [[ cur_pad -eq 400 ]]
then
	bspc config left_padding 0
	bspc config right_padding 0
	bspc config top_padding 30
	bspc config bottom_padding 30
else
	bspc config left_padding 400
	bspc config right_padding 400
	bspc config top_padding 50
	bspc config bottom_padding 50
fi
