echo "deb http://apt.opscode.com/ `lsb_release -cs`-0.10 main" | tee /etc/apt/sources.list.d/opscode.list
mkdir -p /etc/apt/trusted.gpg.d
gpg --keyserver keys.gnupg.net --recv-keys 83EF826A
gpg --export packages@opscode.com | tee /etc/apt/trusted.gpg.d/opscode-keyring.gpg > /dev/null 
apt-get update
apt-get upgrade
apt-get install chef git-core build-essential

git clone https://github.com/cvsintellect/clsi-chef.git
cd clsi-chef
sed -i '' -e 's/clsi.example.com/localhost:3319/g' node.json
chef-solo -j node.json -c solo.rb
