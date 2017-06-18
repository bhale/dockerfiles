FROM centos:7
RUN yum update -y && yum install epel-release -y && \
 yum install -y docker docker-compose htop tmux \
 openssh-clients git zsh ansible && yum clean all
COPY tmux.conf /root/.tmux.conf
COPY bashrc /root/.bashrc
#ENV DOCKER_HOST=unix:///host/var/run/docker.sock
CMD bash
