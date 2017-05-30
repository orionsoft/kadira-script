# Installing Mongo DB
echo "#################### INSTALLING MONGO ####################"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list -y
sudo apt-get update
sudo apt-get install mongodb-org nano -y
sudo apt-get install -y mongodb
sudo cp /home/deploy/script/mongodb.service /etc/systemd/system/mongodb.service
mkdir /srv/mongodb/db0
echo "#################### REGISTERING SERVICE ####################"
sudo systemctl start mongodb
sudo systemctl status mongodb
sudo systemctl enable mongodb

# mongo
# use kadiraApps
# db.createUser({ user: "kadira", pwd: "kadira", roles: [ "readWrite", "dbAdmin" ]})
# use kadiraData
# db.createUser({ user: "kadira", pwd: "kadira", roles: [ "readWrite", "dbAdmin" ]})
echo "#################### TESTING MONGO ####################"
export LC_ALL=C
mongo admin --eval 'rs.initiate({_id: "rs0", members:[{_id : 0, host : "localhost:27017"}]})'
mongo admin --eval 'rs.slaveOk()'
