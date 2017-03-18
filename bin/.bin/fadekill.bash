#!/bin/bash

for i in {1..50}
do
	transset-df --dec .02 -i $1
	sleep .008
done
xkill -id $1
