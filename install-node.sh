# Installing essencials
sudo apt-get update > /dev/null
sudo apt-get install nodejs-legacy npm -y > /dev/null
sudo npm install -g pick-mongo-primary > /dev/null


# Adding Kadira User and project
# adduser kadira
# usermod -aG sudo kadira
# su - kadira
# sudo ls -la /root
# cd ; git clone https://github.com/kadira-open/kadira-server


# Firewall
# sudo apt-get install ufw
# sudo ufw allow OpenSSH
# sudo ufw enable
# sudo ufw status
