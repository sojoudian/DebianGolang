#!/bin/bash
rm -rf ~/src;
LINK="https://go.dev/dl/go1.21.3.linux-amd64.tar.gz";
goVer="go1.21.3.linux-amd64.tar.gz";
mkdir ~/src && cd ~/src;
sudo apt update && sudo apt upgrade -y  && sudo apt install curl;
curl -L -o $goVer $LINK;
sudo tar -C /usr/local -xzf "$goVer";
export PATH=$PATH:/usr/local/go/bin && echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc && source ~/.bashrc && go version && rm -rf "$goVer"
