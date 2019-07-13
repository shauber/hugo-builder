FROM microsoft/vsts-agent:ubuntu-16.04

RUN apt-get update

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

RUN apt-get install -y asciidoctor bash

RUN curl -LO https://github.com/gohugoio/hugo/releases/download/v0.55.6/hugo_0.55.6_Linux-64bit.deb && dpkg -i hugo_0.55.6_Linux-64bit.deb

CMD /bin/bash