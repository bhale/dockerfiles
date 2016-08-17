FROM vimagick/openconnect
RUN apk update && apk add py-pip bash htop vim tmux docker curl openssh-client rsync && apk upgrade
RUN pip install docker-compose
COPY tmux.conf /root/.tmux.conf
COPY session1 /root
COPY bashrc /root/.bashrc
RUN sed -i /etc/passwd -e s/ash/bash/g
ENTRYPOINT tmux new-session "tmux source-file ~/session1"
