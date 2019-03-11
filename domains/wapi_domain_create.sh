source "$(dirname $0)"/"authentication.sh"

#max 100 requests per hour per user accout

DOMAIN="$1"

REQUEST="<request><user>$LOGIN</user><auth>$AUTH</auth><command>domain-create</command><data><name>$DOMAIN</name><period>1</period><dns></dns><owner_c>MADU89</owner_c><admin_c>MADU89</admin_c><rules><fname>Martin</fname><lname>Du

curl -d $REQUEST $WAPI_URL