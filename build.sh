#!/bin/bash
echo "#################### INSTALLING MONGO ####################"
# sh /home/deploy/script/install-mongo.sh
echo "#################### INSTALLING NODE ####################"
sh /home/deploy/script/install-node.sh
echo "#################### INSTALLING METEOR ####################"
sh /home/deploy/script/install-meteor.sh
echo "#################### INSTALLING NGINX ####################"
sh /home/deploy/script/install-nginx.sh
echo "#################### INSTALLING KADIRA-UI ####################"
# sh /home/deploy/script/install-kadira-ui.sh
