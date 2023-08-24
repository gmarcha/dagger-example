#! /bin/bash

cd /usr/local
curl -fsSL https://dl.dagger.io/dagger/install.sh |
  DAGGER_VERSION="0.6.2" sudo sh
