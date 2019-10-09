FROM python:3.7-buster

ENV DEBIAN_FRONTEND noninteractive
ENV PATH /root/.local/bin:$PATH

RUN pip install cwltool cwltest cwl-runner pipx
RUN pipx install --spec git+https://github.com/rabix/benten.git benten

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
                       apt-transport-https \
                       ca-certificates \
                       curl \
                       gnupg2 \
                       software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | (OUT=$(apt-key add - 2>&1) || echo $OUT)
RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable"
RUN apt-get update
RUN apt-get install -y --no-install-recommends docker-ce-cli nodejs

# install zatsu-cwl-generator
RUN curl -fLSs https://github.com/tom-tan/zatsu-cwl-generator/releases/download/v1.0.4/zatsu-cwl-generator-v1.0.4-linux-x86_64.tar.xz  | tar Jxvf - && mv zatsu-cwl-generator /root/.local/bin && chmod 755 /root/.local/bin/zatsu-cwl-generator

ENV DEBIAN_FRONTEND dialog
