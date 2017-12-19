# docker-jenkinsslave-deploy

Jenkins Slave docker image, based off [garethjevans/jenkinsslave-ubuntu](https://hub.docker.com/r/garethjevans/jenkinsslave-ubuntu/), with [CF CLI](https://github.com/cloudfoundry/cli) installed

This is available on Docker hub as [garethjevans/jenkinsslave-deploy](https://hub.docker.com/r/garethjevans/jenkinsslave-deploy/)

## Usage

To create a basic Jenkins CF Deploy Slave instance use:

```
docker run \
    --detach \
    --env JENKINS_MASTER=<JENKINS_MASTER_ADDRESS> \
    --env JENKINS_USERNAME=<JENKINS_USERNAME> \
    --env JENKINS_PASSWORD=<JENKINS_PASSWORD> \
    --env JENKINS_EXECUTORS=1 \
    --env JENKINS_LABELS=deploy \
    --env JENKINS_NAME=deploy-slave \
    --env LANG=C.UTF-8 \
    --name jenkins_deploy \
    --volume /etc/localtime:/etc/localtime:ro \
    garethjevans/jenkinsslave-deploy:latest
```

Obviously, you'll need an instance of Jenkins Master as well, try [garethjevans/jenkins](https://hub.docker.com/r/garethjevans/jenkins/).
