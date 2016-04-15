FROM infoslack/nessus

ARG NESSUS_LICENSE

RUN echo "${NESSUS_LICENSE}" > /nessus.license
RUN /opt/nessus/sbin/nessuscli fetch --register-offline /nessus.license

RUN /opt/nessus/sbin/nessuscli update --all
