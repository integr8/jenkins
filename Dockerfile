FROM jenkins/jenkins:lts-alpine

ENV JENKINS_OPTS --httpPort=8080
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false -Dhudson.TreeView=true

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

EXPOSE 8080/tcp 8443/tcp 50000/tcp
