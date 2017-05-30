#!/bin/bash
echo "INSTALLING MONGO"
sh /home/deploy/script/install-mongo.sh
echo "INSTALLING NODE"
sh /home/deploy/script/install-node.sh
echo "INSTALLING METEOR"
sh /home/deploy/script/install-meteor.sh
