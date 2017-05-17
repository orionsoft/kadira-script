cd /home/kadira/kadira-server/kadira-ui
sudo apt-get install python
npm install
curl https://install.meteor.com/ | sh
ufw allow 4000
source ../init-shell.sh
chmod +x ./run.sh
./run.sh

# Starting service
sudo mv /home/kadira/deploy/kadira-rma.service /etc/systemd/system/kadira_rma.service
sudo systemctl start kadira-ui.service
sudo systemctl status kadira-ui.service
sudo systemctl enable kadira-ui.service
