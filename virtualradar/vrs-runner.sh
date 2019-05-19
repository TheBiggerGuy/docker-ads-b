#!/bin/bash

set -o errexit          # Exit on most errors (see the manual)
set -o errtrace         # Make sure any error trap is inherited
set -o nounset          # Disallow expansion of unset variables
set -o pipefail         # Use last non-zero exit code in a pipeline
#set -o xtrace          # Trace the execution of the script (debug)

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
ADSBEXCHANGE_MLAT_SERVER='adsbexchange-mlat'
ADSBEXCHANGE_MLAT_PORT='30104'
FLIGHTAWARE_MLAT_SERVER='flightaware'
FLIGHTAWARE_MLAT_PORT='30105'

start_secion_spacer "Running with"
echo " - DUMP1090_SERVER=${DUMP1090_SERVER}"
echo " - DUMP1090_PORT=${DUMP1090_PORT}"
echo " - ADSBEXCHANGE_MLAT_SERVER=${ADSBEXCHANGE_MLAT_SERVER}"
echo " - ADSBEXCHANGE_MLAT_PORT=${ADSBEXCHANGE_MLAT_PORT}"
echo " - FLIGHTAWARE_MLAT_SERVER=${FLIGHTAWARE_MLAT_SERVER}"
echo " - FLIGHTAWARE_MLAT_PORT=${FLIGHTAWARE_MLAT_PORT}"
echo " - VIRTUALRADAR_LATITUDE =${VIRTUALRADAR_LATITUDE}"
echo " - VIRTUALRADAR_LONGITUDE=${VIRTUALRADAR_LONGITUDE}"
end_secion_spacer


start_secion_spacer "Waiting for ${DUMP1090_SERVER} to start up"
sleep 5s
end_secion_spacer

start_secion_spacer "Ping test to ${DUMP1090_SERVER}"
ping -c 3 "${DUMP1090_SERVER}"
end_secion_spacer

start_secion_spacer "Downloading route DB"
curl --output '/tmp/StandingData.sqb.gz' 'http://www.virtualradarserver.co.uk/Files/StandingData.sqb.gz'
zcat '/tmp/StandingData.sqb.gz' > '/tmp/StandingData.sqb'
rm '/tmp/StandingData.sqb.gz'
sqlite3 -readonly '/tmp/StandingData.sqb' 'SELECT COUNT(*) FROM Route'
end_secion_spacer

start_secion_spacer 'customising config'
sed -i "s/DUMP1090_SERVER/${DUMP1090_SERVER}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/DUMP1090_PORT/${DUMP1090_PORT}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/ADSBEXCHANGE_MLAT_SERVER/${ADSBEXCHANGE_MLAT_SERVER}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/ADSBEXCHANGE_MLAT_PORT/${ADSBEXCHANGE_MLAT_PORT}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/FLIGHTAWARE_MLAT_SERVER/${FLIGHTAWARE_MLAT_SERVER}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/FLIGHTAWARE_MLAT_PORT/${FLIGHTAWARE_MLAT_PORT}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/VIRTUALRADAR_LATITUDE/${VIRTUALRADAR_LATITUDE}/" /root/.local/share/VirtualRadar/Configuration.xml
sed -i "s/VIRTUALRADAR_LONGITUDE/${VIRTUALRADAR_LONGITUDE}/" /root/.local/share/VirtualRadar/Configuration.xml
end_secion_spacer


export MONO_PATH="/opt/vrs:${MONO_PATH:=}"

# https://www.mono-project.com/docs/advanced/runtime/logging-runtime-events/
#export MONO_LOG_LEVEL='info'
#export MONO_LOG_MASK='dll,cfg'

start_secion_spacer 'Starting VirtualRadar'
mono /opt/vrs/VirtualRadar.exe -nogui -"createAdmin:${VIRTUALRADAR_DEFAULT_ADMIN_USER}" -"password:${VIRTUALRADAR_DEFAULT_ADMIN_PASSWORD}" || true
mono /opt/vrs/VirtualRadar.exe -nogui
end_secion_spacer
