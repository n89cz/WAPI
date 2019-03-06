source "$(dirname $0)"/"authentication.sh"

DOMAIN="$1"

REQUEST="request=<request><user>$LOGIN</user><auth>$AUTH</auth><command>domain-info</command><data><name>$DOMAIN</name></data></request>"

curl -d $REQUEST $WAPI_URL

