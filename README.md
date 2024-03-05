# teeworlds-server-docker

## what do you need?

- docker

## how tu run teeworlds server?

1. clone the repository and go to the folder
2. commands:
    1. for mac or windows: ``docker build --platform linux/amd64 -t teeworlds_d .``
    2. for linux: ``docker build -t teeworlds_d .``
    3. ``docker run -d --platform linux/amd64 -v $(pwd)/configfile:/teeworlds/configfile -p 8303:8303/udp teeworlds_d:latest``

## to configure more options

- you must modify the custom_config.cfg and run the commands again