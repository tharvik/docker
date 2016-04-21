#!/bin/sh

set -eux

if [ "$(head -n 1 /nessus.license | cut -c 1-31)" != '-----BEGIN TENABLE LICENSE-----' ]
then
	echo 'Please provide a valid nessus license file with the next challenge'
	/opt/nessus/sbin/nessuscli fetch --challenge
	exit 1
fi

/opt/nessus/sbin/nessuscli fetch --challenge
/opt/nessus/sbin/nessuscli fetch --register-offline /nessus.license

/opt/nessus/sbin/nessuscli update --all

expect /add_user.exp

expect /gen_api_keys.exp

exec "$@"
