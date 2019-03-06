source "$(dirname $0)"/"authentication.sh"

REQUEST="request=<request><user>$LOGIN</user><auth>$AUTH</auth><command>domains-list</command></request>"

curl -d $REQUEST $WAPI_URL

