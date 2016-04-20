FROM infoslack/nessus:latest

ARG NESSUS_LICENSE
COPY check_license.sh /
RUN /check_license.sh

RUN apt-get update
RUN apt-get install -y expect-dev curl

RUN echo "${NESSUS_LICENSE}" > /nessus.license
RUN /opt/nessus/sbin/nessuscli fetch --register-offline /nessus.license

RUN /opt/nessus/sbin/nessuscli update --all

COPY add_user.exp /
RUN expect /add_user.exp

COPY gen_api_keys.exp /
RUN expect /gen_api_keys.exp
