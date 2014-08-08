# Deploy hubot-hipchat using docker

I took [Hubot](https://github.com/github/hubot) and [hubot-hipchat](https://github.com/hipchat/hubot-hipchat), 
and placed them in an easy to use & Deploy Dockre container. 

## prerequisits

- ec2 with docker installed on it

## deployment
- clone the repo
```bash
    git clone https://github.com/odedpr/hubot-hipchat-docker.git
```
- Update the following with your JID and PASSWD in the docker file :
1.**ENV     HUBOT_HIPCHAT_JID *******4@chat.hipchat.com**
1.**ENV     HUBOT_HIPCHAT_PASSWORD *** **

- build the docker container
    cd hubot-hipchat-docker && docker build -t private_repo/hubot

- start the container
```bash
    docker run -d --name hubot private_repo/hubot
```