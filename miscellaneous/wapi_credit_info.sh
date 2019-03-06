DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../app/authentication.sh"

DOMAIN="$1"

REQUEST="request=<request><user>$LOGIN</user><auth>$AUTH</auth><command>credit-info</command><data><name>$DOMAIN</name></data></request>"

curl -d $REQUEST $WAPI_URL

