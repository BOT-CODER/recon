#!/bin/bash
printf "Downlaoding"
apt-get install wget -y 
apt-get install git -y 
apt-get install golang -y 
apt-get install python -y
apt-get install python2  -y
apt-get install python3 -y
wget https://github.com/shifa123/chaos-hunt/blob/master/chaos-hunt.sh 
mkdir chaos
mv chaos-hunt.sh chaos.sh
chmod +x chaos.sh
cp chaos.sh chaos
rm -rf chaos.sh
wget https://github.com/Edu4rdSHL/findomain/releases/latest/download/findomain-linux 
mv findomain-linux findomain
chmod +x findomain
cp findomain /usr/bin/
rm -rf findomain
cd
go env -w GOPATH=$HOME/go
go get -u -v github.com/lukasikic/subzy 
go get -u github.com/tomnomnom/assetfinder 
go get github.com/tomnomnom/waybackurls 
go get -u github.com/tomnomnom/httprobe 
cp go/bin/* /usr/bin
rm -rf go
wget https://github.com/BOT-CODER/recon/blob/main/recon
chmod +x recon
printf "Completed"

