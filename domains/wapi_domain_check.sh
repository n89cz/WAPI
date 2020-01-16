if [ -z "$1" ]; then
    echo '$1 required'
    exit 1
fi

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../app/authentication.sh"

DOMAIN="$1"

REQUEST="request=<request><user>$LOGIN</user><auth>$AUTH</auth><command>domain-check</command><data><name>$DOMAIN</name></data></request>"

curl -d $REQUEST $WAPI_URL
