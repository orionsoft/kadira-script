# Starting service
sudo mv /home/deploy/script/kadira-ui.service /etc/systemd/system/kadira-ui.service
sudo systemctl start kadira-ui.service
sudo systemctl status kadira-ui.service
sudo systemctl enable kadira-ui.service
