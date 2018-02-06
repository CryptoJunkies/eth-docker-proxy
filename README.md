# eth-docker-proxy [![Build Status](https://travis-ci.org/CryptoJunkies/eth-docker-proxy.svg?branch=master)](https://travis-ci.org/CryptoJunkies/eth-docker-proxy)
[Image on Docker Hub](https://hub.docker.com/r/cryptojunkies/eth-proxy/)

Dockerfile to build cryptojunkies/eth-proxy container.

Just a stratum proxy.  Point all your miners at the proxy, and point the proxy at the hub.

Settings should be defined as env vars in your Docker run or compose.  See the proxy repo for details:
https://github.com/CryptoJunkies/eth-proxy

## Pre-requisites

Requires a working installation of Docker CE or EE.

## Installation

docker build -t cryptojunkies/eth-proxy .

## Usage

Write something here, doofus.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

TODO: Write history

## Credits

The actual proxy code!
https://github.com/narfman0/eth-proxy

## License

TODO: Write license
