#!/bin/sh

set -eu

exec ssh -N -L "${SSH_LOCAL_PORT}:*:${SSH_REMOTE_PORT}" "${SSH_REMOTE_USER}@${SSH_REMOTE_IP}"
