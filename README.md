# Docker ADS-B
Docker container for ADS-B

| dump1090 | adsbexchange | adsbexchange-mlat | adsbhub | flightradar24 | openskynetwork | planefinder |
|----------|--------------|-------------------|---------|---------------|----------------|-------------|
| [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-dump1090.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-dump1090)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-adsbexchange.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-adsbexchange-mlat.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange-mlat)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-adsbhub.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbhub)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-flightradar24.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-flightradar24)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-openskynetwork.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-openskynetwork)   | [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-planefinder.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-planefinder)   |
| [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-dump1090.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-dump1090) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-adsbexchange.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-adsbexchange-mlat.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange-mlat) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-adsbhub.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbhub) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-flightradar24.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-flightradar24) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-openskynetwork.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-openskynetwork) | [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-planefinder.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-planefinder) |
| [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-dump1090.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-dump1090)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-adsbexchange.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-adsbexchange-mlat.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbexchange-mlat)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-adsbhub.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-adsbhub)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-flightradar24.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-flightradar24)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-openskynetwork.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-openskynetwork)  | [![](https://images.microbadger.com/badges/commit/thebiggerguy/docker-ads-b-planefinder.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-planefinder)  |
| [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-dump1090.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-dump1090/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-adsbexchange.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-adsbexchange/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-adsbexchange-mlat.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-adsbexchange-mlat/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-adsbhub.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-adsbhub/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-flightradar24.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-flightradar24/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-openskynetwork.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-openskynetwork/)    | [![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-planefinder.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-planefinder/)    |

# How to use
## Edit variables
Edit the 'variables' files with the required keys and locations for each of the services

### variables-flightradar24.env
* FR24FEED_KEY: Your key. If you do not have one please run the client on any PC and enter the key here

### variables-planefinder.env
* PLANEFINDER_SHARECODE
* PLANEFINDER_LATITUDE
* PLANEFINDER_LONGITUDE

## Docker Hub Links
* https://hub.docker.com/r/thebiggerguy/docker-ads-b-dump1090/



[![Docker Pulls](https://img.shields.io/docker/pulls/thebiggerguy/docker-ads-b-flightradar24.svg)](https://hub.docker.com/r/thebiggerguy/docker-ads-b-flightradar24/)
