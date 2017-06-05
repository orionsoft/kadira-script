sudo apt-get install -o Dpkg::Use-Pty=0 nginx -y
sudo rm /etc/nginx/sites-enabled/default
# Configuring kadira endpoints
sudo mv /home/deploy/script/kadira /etc/nginx/sites-available/kadira
sudo ln -s /etc/nginx/sites-available/kadira /etc/nginx/sites-enabled/
sudo nginx -t

# Configuring kadira-engine endpoints
sudo mv /home/deploy/script/kadira-engine /etc/nginx/sites-available/kadira-engine
sudo ln -s /etc/nginx/sites-available/kadira-engine /etc/nginx/sites-enabled/
sudo nginx -t

sudo systemctl restart nginx
