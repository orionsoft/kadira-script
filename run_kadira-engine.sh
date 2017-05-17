cd /home/kadira-server/kadira-engine
sudo npm install
chmod +x ../init-shell.sh
source ../init-shell.sh
ufw allow 543
chmod +x run.sh
./run.sh

# Starting service
sudo mv /home/kadira/deploy/kadira-engine.service /etc/systemd/system/kadira_engine.service
systemctl start kadira-engine.service
systemctl status kadira-engine.service
systemctl enable kadira-engine.service
