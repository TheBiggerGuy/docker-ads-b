#!/bin/sh

set -o errexit          # Exit on most errors (see the manual)
#set -o errtrace         # Make sure any error trap is inherited
set -o nounset          # Disallow expansion of unset variables
#set -o pipefail         # Use last non-zero exit code in a pipeline
set -o xtrace          # Trace the execution of the script (debug)


function start_secion_spacer {
    echo '=============================='
    echo "======== ${1}"
    echo '=============================='
}

function end_secion_spacer {
    echo '=============================='
    echo
}


DUMP1090_SERVER='dump1090'
DUMP1090_PORT='30005'


start_secion_spacer "Running with"
echo " - DUMP1090_SERVER=${DUMP1090_SERVER}"
echo " - DUMP1090_PORT=${DUMP1090_PORT}"
echo " - VIRTUALRADAR_LATITUDE =${VIRTUALRADAR_LATITUDE}"
echo " - VIRTUALRADAR_LONGITUDE=${VIRTUALRADAR_LONGITUDE}"
end_secion_spacer

start_secion_spacer "Waiting for ${DUMP1090_SERVER} to start up"
sleep 5s
end_secion_spacer

start_secion_spacer "Ping test to ${DUMP1090_SERVER}"
ping -c 3 "${DUMP1090_SERVER}"
end_secion_spacer


start_secion_spacer 'Configuration.xml template'
cat /root/.local/share/VirtualRadar/Configuration.xml
end_secion_spacer

start_secion_spacer 'customising config'
sed -i "s/DUMP1090_SERVER/${DUMP1090_SERVER}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/DUMP1090_PORT/${DUMP1090_PORT}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/VIRTUALRADAR_LATITUDE/${VIRTUALRADAR_LATITUDE}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/VIRTUALRADAR_LONGITUDE/${VIRTUALRADAR_LONGITUDE}/" /root/.local/share/VirtualRadar/Configuration.xml
end_secion_spacer

start_secion_spacer "Configuration.xml customised"
cat /root/.local/share/VirtualRadar/Configuration.xml
end_secion_spacer


start_secion_spacer 'Starting VirtualRadar.exe'
export MONO_PATH="/opt/vrs:${MONO_PATH:=}"

# https://www.mono-project.com/docs/advanced/runtime/logging-runtime-events/
export MONO_LOG_LEVEL='info'
export MONO_LOG_MASK='dll,cfg'

mono /opt/vrs/VirtualRadar.exe -nogui -"createAdmin:${VIRTUALRADAR_DEFAULT_ADMIN_USER}" -"password:${VIRTUALRADAR_DEFAULT_ADMIN_PASSWORD}"
mono /opt/vrs/VirtualRadar.exe -nogui
end_secion_spacer
