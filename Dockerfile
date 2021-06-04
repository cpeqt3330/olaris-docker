FROM ubuntu:xenial as base

RUN     apt-get -y update && \
        apt-get -y --no-install-recommends install curl ca-certificates unzip && \
        apt-get autoremove -y && apt-get clean -y

ADD setup.sh .
RUN chmod +x setup.sh
RUN bash setup.sh

ADD run-olaris /opt/run-olaris
EXPOSE $PORT

ENV LOGTOSTDERR=1
ENV V=4
ENTRYPOINT /opt/run-olaris
