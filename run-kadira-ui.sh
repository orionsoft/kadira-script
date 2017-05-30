cd /home/kadira/kadira-server/kadira-ui
ufw allow 4000
source ../init-shell.sh
chmod +x ./run.sh
./run.sh

# Starting service
sudo mv /home/kadira/deploy/kadira-ui.service /etc/systemd/system/kadira_ui.service
sudo systemctl start kadira-ui.service
sudo systemctl status kadira-ui.service
sudo systemctl enable kadira-ui.service
