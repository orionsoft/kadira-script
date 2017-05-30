#!/bin/bash
echo "INSTALLING MONGO"
sh /home/deploy/install-mongo.sh
echo "INSTALLING NODE"
sh /home/deploy/install-node.sh
echo "INSTALLING METEOR"
sh /home/deploy/install-meteor.sh
