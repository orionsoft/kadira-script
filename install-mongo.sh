# Installing Mongo DB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list -y
sudo apt-get -qq update
sudo apt-get -qq install mongodb nano -y
sudo rm /etc/systemd/system/mongodb.service
ls /etc/systemd/system
sudo cp /home/deploy/script/mongodb.service /etc/systemd/system/mongodb.service
ls /etc/systemd/system
mkdir /srv/mongodb
mkdir /srv/mongodb/db0
sudo chown -R mongodb /srv/mongodb/db0
echo "#################### CHECKING CLUSTER FOLDER CREATION ####################"
ls /srv/mongodb
echo "#################### REGISTERING SERVICE ####################"
sudo systemctl daemon-reload
sudo systemctl restart mongodb.service
sudo systemctl status mongodb.service
sudo systemctl enable mongodb.service

# mongo
# use kadiraApps
# db.createUser({ user: "kadira", pwd: "kadira", roles: [ "readWrite", "dbAdmin" ]})
# use kadiraData
# db.createUser({ user: "kadira", pwd: "kadira", roles: [ "readWrite", "dbAdmin" ]})
echo "#################### CHECKING MONGO INSTALLATION ####################"
export LC_ALL=C
mongo admin --eval 'printjson(rs.initiate({_id: "rs0", members:[{_id : 0, host : "localhost:27017"}]}))'
mongo admin --eval 'rs.slaveOk()'
