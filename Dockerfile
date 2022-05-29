FROM jenkins/jenkins:lts

ENV REF "/usr/share/jenkins/ref"

USER root

COPY plugins.txt ${REF}/plugins.txt

RUN /usr/local/bin/install-plugins.sh < ${REF}/plugins.txt