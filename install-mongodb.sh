# sudo su
apt-get update -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo 'deb http://repo.mongodb.org/apt/ubuntu '$(lsb_release -sc)'/mongodb-org/3.2 multiverse' | sudo tee /etc/apt/sources.list.d/mongodb.list
apt-get update -y
sudo apt-get install -y mongodb-org
mongod --version
service mongod start
