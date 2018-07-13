# Docker ADS-B
Docker containers for ADS-B receiving and submission to multiple websites

Currently supporting inputs from any dump1090 compatible device including:
* Any RTLSDR USB device
* Any network AVR or BEAST device
* Any serial AVR or BEAST device

and supporting outputs to the following sites:
* https://adsbexchange.com
* http://www.adsbhub.org
* https://flightaware.com
* https://wwww.flightradar24.com
* https://opensky-network.org
* https://planefinder.net

# Status
| Branch | Status |
|--------|--------|
| latest | [![Build Status](https://travis-ci.org/TheBiggerGuy/docker-ads-b.svg?branch=latest)](https://travis-ci.org/TheBiggerGuy/docker-ads-b) |
| dev    | [![Build Status](https://travis-ci.org/TheBiggerGuy/docker-ads-b.svg?branch=dev)](https://travis-ci.org/TheBiggerGuy/docker-ads-b) |

| dump1090 | adsbexchange | adsbexchange-mlat | adsbhub | flightaware | flightradar24 | openskynetwork | planefinder |
|----------|--------------|-------------------|---------|-------------|---------------|----------------|-------------|
| [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-dump1090.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-dump1090)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-adsbexchange.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-adsbexchange-mlat.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange-mlat)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-adsbhub.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbhub)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-flightaware.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-flightaware)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-flightradar24.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-flightradar24)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-openskynetwork.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-openskynetwork)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-planefinder.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-planefinder)   |
| [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-dump1090.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-dump1090) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-adsbexchange.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-adsbexchange-mlat.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange-mlat) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-adsbhub.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbhub) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-flightaware.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-flightaware) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-flightradar24.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-flightradar24) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-openskynetwork.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-openskynetwork) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-planefinder.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-planefinder) |
| [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-dump1090.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-dump1090)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-adsbexchange.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-adsbexchange-mlat.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange-mlat)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-adsbhub.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbhub)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-flightaware.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-flightaware)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-flightradar24.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-flightradar24)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-openskynetwork.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-openskynetwork)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-planefinder.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-planefinder)  |
| [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-dump1090.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-dump1090/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-adsbexchange.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-adsbexchange/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-adsbexchange-mlat.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-adsbexchange-mlat/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-adsbhub.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-adsbhub/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-flightaware.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-flightaware/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-flightradar24.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-flightradar24/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-openskynetwork.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-openskynetwork/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-planefinder.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-planefinder/)    |

# How to use
## Edit variables
Edit the 'variables' files with the required keys and locations for each of the services

### variables-dump1090.env
Nothing to configure here

### variables-adsbexchange.env
* ADSBEXCHANGE_PORT

### variables-adsbexchange-mlat.env
* MLAT_CLIENT_LATITUDE
* MLAT_CLIENT_LONGITUDE
* MLAT_CLIENT_ALTITUDE
* MLAT_CLIENT_USER

### variables-adsbhub.env
Nothing to configure here

## variables-flightware.env
Go to https://flightaware.com/adsb/piaware/claim
* FLIGHTAWARE_USERNAME
* FLIGHTAWARE_PASSWORD
* FLIGHTAWARE_FEEDER_ID

### variables-flightradar24.env
* FR24FEED_KEY: Your key. If you do not have one please run the client on any PC and enter the key here
* FR24FEED_LATITUDE
* FR24FEED_LONGITUDE
* FR24FEED_ALTITUDE

### variables-openskynetwork.env
Nothing to configure here

### variables-planefinder.env
* PLANEFINDER_SHARECODE
* PLANEFINDER_LATITUDE
* PLANEFINDER_LONGITUDE


## Docker Hub Links
* https://hub.docker.com/r/thebiggerguy/docker-ads-b-dump1090/
* https://hub.docker.com/r/thebiggerguy/docker-ads-b-adsbexchange/
* https://hub.docker.com/r/thebiggerguy/docker-ads-b-adsbexchange-mlat/
* https://hub.docker.com/r/thebiggerguy/docker-ads-b-adsbhub/
* https://hub.docker.com/r/thebiggerguy/docker-ads-b-flightaware/
* https://hub.docker.com/r/thebiggerguy/docker-ads-b-flightradar24/
* https://hub.docker.com/r/thebiggerguy/docker-ads-b-openskynetwork/
* https://hub.docker.com/r/thebiggerguy/docker-ads-b-planefinder/