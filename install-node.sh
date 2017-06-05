# Installing essencials
sudo apt-get -o Dpkg::Use-Pty=0 update
sudo apt-get -o Dpkg::Use-Pty=0 install nodejs-legacy npm -y -o Dpkg::Use-Pty=0
echo "#################### CHECKING NODE Y NPM ####################"
node -v
npm -v
echo "#################### INSTALLING GLOBAL PACKAGES ####################"
sudo npm install -g pick-mongo-primary


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
