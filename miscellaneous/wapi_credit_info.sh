DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../app/authentication.sh"

REQUEST="request=<request><user>$LOGIN</user><auth>$AUTH</auth><command>credit-info</command></request>"
curl -d $REQUEST $WAPI_URL
