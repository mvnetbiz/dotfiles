#!/bin/bash

for i in {1..100}
do
	transset-df --dec .01 -i $1
	sleep .005
done
xkill -id $1
