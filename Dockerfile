FROM garethjevans/jenkinsslave:v1.1

ENV CFCLI http://go-cli.s3-website-us-east-1.amazonaws.com/releases/latest/cf-cli_amd64.deb

RUN wget --quiet ${CFCLI} -O /tmp/cf-cli_amd64.deb && \
	dpkg -i /tmp/cf-cli_amd64.deb && \ 
	rm /tmp/cf-cli_amd64.deb


RUN chown jenkins:jenkins -R /home/jenkins

USER jenkins
WORKDIR /home/jenkins
