FROM infoslack/nessus

ARG NESSUS_SERIAL

RUN apt-get update
RUN apt-get install -y expect-dev curl

RUN /opt/nessus/sbin/nessuscli fetch --register "${NESSUS_SERIAL}"
RUN /opt/nessus/sbin/nessuscli fetch --check

COPY add_user.exp /
RUN expect /add_user.exp

COPY gen_api_keys.exp /
RUN expect /gen_api_keys.exp
