# Starting service
sudo cp /home/deploy/script/kadira-ui.service /etc/systemd/system/kadira-ui.service
ls /home/deploy/script
ls /etc/systemd/system
sudo systemctl start kadira-ui.service
sudo systemctl status kadira-ui.service
sudo systemctl enable kadira-ui.service
