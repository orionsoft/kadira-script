cd /home/deploy/app/kadira/kadira-server/kadira-ui
source ../init-shell.sh
chmod +x ./run.sh
./run.sh

# Starting service
sudo mv /home/deploy/script/kadira-ui.service /etc/systemd/system/kadira_ui.service
sudo systemctl start kadira-ui.service
sudo systemctl status kadira-ui.service
sudo systemctl enable kadira-ui.service
