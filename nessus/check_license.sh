#!/bin/sh

if [ -z "${NESSUS_LICENSE}" ]
then
	echo 'Please provide a valid nessus license file with the next challenge'
	/opt/nessus/sbin/nessuscli fetch --challenge
	exit 1
fi
