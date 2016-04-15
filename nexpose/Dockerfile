FROM whithajess/dockernexpose

ARG NEXPOSE_LICENSE

RUN apt-get update
RUN apt-get install -y expect-dev

COPY activate.exp /
RUN expect /activate.exp
