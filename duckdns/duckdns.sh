#!/bin/sh

set -o errexit          # Exit on most errors (see the manual)
#set -o errtrace         # Make sure any error trap is inherited
set -o nounset          # Disallow expansion of unset variables
#set -o pipefail         # Use last non-zero exit code in a pipeline
#set -o xtrace          # Trace the execution of the script (debug)


echo "Read DUCKDNS_DOMAIN=${DUCKDNS_DOMAIN}"
echo "Read DUCKDNS_TOKEN=$(echo "${DUCKDNS_TOKEN}" | sed -E 's/(...).*(...)/\1*****\2/g')"
echo

echo "Updating DuckDNS"
curl -A 'TheBiggerGuy/docker-ads-b' --silent "https://www.duckdns.org/update?domains=${DUCKDNS_DOMAIN}&token=${DUCKDNS_TOKEN}&ip="
echo
echo "DuckDNS updated"
