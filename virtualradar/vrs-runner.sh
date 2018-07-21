#!/bin/sh

set -o errexit          # Exit on most errors (see the manual)
#set -o errtrace         # Make sure any error trap is inherited
set -o nounset          # Disallow expansion of unset variables
#set -o pipefail         # Use last non-zero exit code in a pipeline
set -o xtrace          # Trace the execution of the script (debug)

DUMP1090_SERVER='dump1090'
DUMP1090_PORT='30005'


echo "Waiting for dump1090 to start up"
sleep 5s

echo "Ping test to dump1090"
ping -c 3 "${DUMP1090_SERVER}"

export MONO_PATH="/opt/vrs:${MONO_PATH:=}"

# https://www.mono-project.com/docs/advanced/runtime/logging-runtime-events/
export MONO_LOG_LEVEL='info'
export MONO_LOG_MASK='dll,cfg'

mono /opt/vrs/VirtualRadar.exe -nogui -"createAdmin:${VIRTUALRADAR_DEFAULT_ADMIN_USER}" -"password:${VIRTUALRADAR_DEFAULT_ADMIN_PASSWORD}"
