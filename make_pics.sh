#!/bin/bash

# Make pics for each waveform
cd preview_array

mkdir pic

for f in *.wav; 
do 
	# echo $f 
	out="pic/${f/%wav/png}"
	
	audiowaveform -i $f -o $out -z auto

done
