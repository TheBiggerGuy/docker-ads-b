# Docker ADS-B
Docker container for ADS-B

| dump1090 |
|----------|
| [![](https://images.microbadger.com/badges/image/thebiggerguy/docker-ads-b-dump1090.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-dump1090 "Get your own image badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-dump1090.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-dump1090 "Get your own version badge on microbadger.com") |
| [![](https://images.microbadger.com/badges/version/thebiggerguy/docker-ads-b-dump1090.svg)](https://microbadger.com/images/thebiggerguy/docker-ads-b-dump1090 "Get your own version badge on microbadger.com")

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
