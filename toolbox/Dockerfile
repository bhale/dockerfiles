FROM fedora:25
RUN yum update -y && yum install -y docker docker-compose htop tmux mytop vim golang
COPY tmux.conf /root/.tmux.conf
COPY bashrc /root/.bashrc
ENV DOCKER_HOST=unix:///host/var/run/docker.sock
CMD bash
