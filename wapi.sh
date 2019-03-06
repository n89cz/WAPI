#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/app/authentication.sh"

function show_help {
echo "Possible commands:"
echo "credit-info"
}






#!/bin/bash
echo 'What would you like me to do?'
echo 'If you need help simply type help'
read CMD

case $CMD in
    help)
	show_help
        ;;

    credit-info)
	sh miscellaneous/wapi_credit_info.sh
	;;

    windows)
	echo "Very funny..."
	;;

    *)
	 echo "Unknown command"
	 show_help
        ;;
esac
