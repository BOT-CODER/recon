printf "Downlaoding"
apt-get install wget -y > /dev/null 2>&1
apt-get install git -y > /dev/null 2>&1
apt-get install golang -y > /dev/null 2>&1
apt-get install python > /dev/null 2>&1
apt-get install python2 > /dev/null 2>&1
apt-get install python3 > /dev/null 2>&1
wget https://github.com/shifa123/chaos-hunt/blob/master/chaos-hunt.sh > /dev/null 2>&1
mkdir chaos
mv chaos-hunt.sh chaos.sh
chmod +x chaos.sh
cp chaos.sh /chaos
rm -rf chaos.sh
git clone https://github.com/Edu4rdSHL/findomain.git > /dev/null 2>&1
cd findomain
cargo build --release
sudo cp target/release/findomain /usr/bin/
rm -rf findomain
cd
go env -w GOPATH=$HOME/go
go get -u -v github.com/lukasikic/subzy > /dev/null 2>&1
go get -u github.com/tomnomnom/assetfinder > /dev/null 2>&1
go get github.com/tomnomnom/waybackurls > /dev/null 2>&1
go get -u github.com/tomnomnom/httprobe > /dev/null 2>&1
cp go/bin/* /usr/bin
rm -rf go
wget https://github.com/BOT-CODER/recon/blob/main/recon
chmod +x recon
cp recon /usr/bin
printf "Completed"

