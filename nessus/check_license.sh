#!/bin/sh

if [ "$(echo "${NESSUS_LICENSE}" | cut -c 1-31)" != '-----BEGIN TENABLE LICENSE-----' ]
then
	echo 'Please provide a valid nessus license file with the next challenge'
	/opt/nessus/sbin/nessuscli fetch --challenge
	exit 1
fi
