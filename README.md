# Hardhat Localhost Node

Dockerfile to run Hardhat node

## Usage

#### Option #1: Run with Docker

**Pre-requisites**
Ensure you have Docker installed

**Build the image**

```
docker-compose build chain
```

**Run the image**

```
docker-compose run chain
```

**Run the image with hardhat args**

```
docker-compose run chain yarn start --hostname 0.0.0.0 --fork <web3 url with key>
```

_Note that you need to pass in yarn start to the service being run_

#### Option #2: Running Hardhat Locally

```bash
$ git clone https://github.com/OpenGuild/hardhat.git
$ cd hardhat
$ yarn install
$ yarn start
```

A very useful feature of Hardhat is forking from mainnet. This
can be done with the command:

```bash
$ npx hardhat node --hostname 0.0.0.0 --fork <web 3 url with key>
```

Note that an archive node is required for this. Alchemy provides
a free tier with archive nodes.

The `mine.sh` script calls `evm_mine` which will mine a block.
To automine on an interval:

```bash
INTERVAL=5
while true; do ./mine.sh; sleep $INTERVAL; done
```
