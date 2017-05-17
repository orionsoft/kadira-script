# Installing essencials
sudo apt-get update
sudo apt-get install nodejs-legacy
sudo apt-get install npm
sudo npm install -g pick-mongo-primary


# Adding Kadira User and project
adduser kadira
usermod -aG sudo kadira
su - kadira
sudo ls -la /root
cd ; git clone https://github.com/kadira-open/kadira-server


# Firewall
sudo apt-get install ufw
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status
