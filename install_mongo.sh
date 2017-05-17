# Installing Mongo DB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org nano
sudo cp /home/kadira/deploy/mongo.service /etc/systemd/system/mongodb.service

mongo admin --eval 'rs.initiate({_id: "rs0", members:[{_id : 0, host : "localhost:27017"}]})'
mongo admin --eval 'rs.slaveOk()'

sudo systemctl start mongodb
sudo systemctl status mongodb
sudo systemctl enable mongodb

sudo cp /home/kadira/deploy/disable-transparent-hugepages /etc/init.d/disable-transparent-hugepages
sudo chmod 755 /etc/init.d/disable-transparent-hugepages
sudo update-rc.d disable-transparent-hugepages defaults
sudo reboot now


mongo
use kadiraApps
db.createUser({ user: "kadira", pwd: "kadira", roles: [ "readWrite", "dbAdmin" ]})
use kadiraData
db.createUser({ user: "kadira", pwd: "kadira", roles: [ "readWrite", "dbAdmin" ]})
