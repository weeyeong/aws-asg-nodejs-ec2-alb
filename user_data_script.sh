#!/bin/bash -ex
# download nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# source nvm
. /.nvm/nvm.sh
# install node
nvm install node
#upgrade yum
sudo yum upgrade -y
#install git
sudo yum install git -y
cd /home/ec2-user
# get source code from githubt
git clone https://github.com/weeyeong/aws-asg-nodejs-ec2-alb
#get in project dir
cd aws-asg-nodejs-ec2-alb
#give permission
sudo chmod -R 755 .
#install node module
npm install
# start the app
node app.js