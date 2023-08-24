#! /bin/bash

GO_VERSION="1.21.0"
ARCH="linux-amd64"

sudo rm -rf /usr/local/go

echo "Installing Go version ${GO_VERSION}..."
curl -fsSL "https://go.dev/dl/go${GO_VERSION}.${ARCH}.tar.gz" |
  sudo tar -C /usr/local -xzvf - > /dev/null
echo "Installing Go version ${GO_VERSION}... Done"

echo 'export PATH="${PATH}:/usr/local/go/bin"' >> ~/.bashrc
