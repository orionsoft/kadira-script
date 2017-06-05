# Starting service
cd /home/deploy/app
source init-shell.sh
cd kadira-ui
sudo su - ubuntu -c './run.sh'

# sudo cp /home/deploy/script/kadira-ui.service /etc/systemd/system/kadira-ui.service
# sudo systemctl start kadira-ui.service
# sudo systemctl status kadira-ui.service
# sudo systemctl enable kadira-ui.service
