# Deploy hubot using docker

## prerequisits

- ec2 with docker installed on it

## deployment
- clone the repo
    git clone https://github.com/odedpr/hubot-hipchat-docker.git

- Update the following with your JID and PASSWD in the docker file :
**ENV     HUBOT_HIPCHAT_JID *******4@chat.hipchat.com**
**ENV     HUBOT_HIPCHAT_PASSWORD *** **

- build the docker container
    cd hubot-hipchat-docker && docker build -t private_repo/hubot

- start the container
    docker run -d --name hubot private_repo/hubot
