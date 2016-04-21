FROM infoslack/nessus:latest

ARG NESSUS_LICENSE

RUN apt-get update
RUN apt-get install -y expect-dev curl

RUN echo "${NESSUS_LICENSE}" > /nessus.license

COPY run.sh add_user.exp gen_api_keys.exp /
CMD ["/run.sh"]
