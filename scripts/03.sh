#!/bin/sh
if [ "$1" != "" ]; then
	ls -lS $1/ | grep '^-'
fi
