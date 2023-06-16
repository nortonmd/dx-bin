#!/bin/bash

## Run Anonymous Apex
## Two Supplied?  apex foo.apex org
if [[ $# -eq 2 ]]
then
	file_name=$1
	alias_name=$2
elif [[ $# -eq 1 ]]
then
	file_name=$1
	echo "Running [${file_name}] in default org..."
	echo "sf apex run ${file_name}"
	sf apex run -f ${file_name}
	exit $?
else
	read -p "Apex Script Name? " file_name
	read -p "Org Alias? " alias_name
fi

echo "sf apex execute -f ${file_name} -o ${alias_name}"
sf apex execute -f ${file_name} -o ${alias_name}
exit $?

