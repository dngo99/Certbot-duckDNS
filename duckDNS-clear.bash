#! /bin/bash
# Get your DuckDNS Token from https://www.duckdns.org

set -e
set -u
set -o pipefail

DOMAIN=""
TOKEN=""

echo url="https://www.duckdns.org/update?domains=$DOMAIN&token=$TOKEN&txt=&verbose=true&clear=true" | curl -k -o /var/log/duckDNS-clear.log -K -
