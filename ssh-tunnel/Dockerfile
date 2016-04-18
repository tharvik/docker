FROM debian

ARG SSH_IDENTITY
ARG SSH_REMOTE_IP
ARG SSH_REMOTE_PORT
ARG SSH_REMOTE_USER
ARG SSH_LOCAL_PORT

ENV SSH_REMOTE_IP="${SSH_REMOTE_IP}"
ENV SSH_REMOTE_PORT="${SSH_REMOTE_PORT}"
ENV SSH_REMOTE_USER="${SSH_REMOTE_USER}"
ENV SSH_LOCAL_PORT="${SSH_LOCAL_PORT}"

RUN apt-get update
RUN apt-get install -y openssh-client

RUN echo "GatewayPorts yes" >> /etc/ssh/ssh_config
RUN echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

RUN echo "${SSH_IDENTITY}" > /id_rsa
RUN chmod 600 /id_rsa
RUN echo "IdentityFile /id_rsa" >> /etc/ssh/ssh_config

EXPOSE "${SSH_LOCAL_PORT}"
COPY run_ssh.sh /
CMD ["/run_ssh.sh"]
