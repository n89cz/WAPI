#!/bin/bash

#source "$(dirname $0)"/"configuration.sh"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../app/configuration.sh"

HOUR=$(date +%H)
PASSWORD_HASH=$(echo -n $PASSWORD | sha1sum | cut -d ' ' -f 1)
AUTH=$(echo -n "$LOGIN$PASSWORD_HASH$HOUR" | sha1sum | cut -d ' ' -f 1)