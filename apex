#!/bin/bash

echo "usage:"
echo "apex org-alias apex-file"

if [[ $# -ne 2 ]]
then
	exit -1
fi


echo "sf apex run -o $1 -f $2"
sf apex run -o $1 -f $2
exit $?

