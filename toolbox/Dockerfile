FROM vimagick/openconnect
RUN apk update && apk add py-pip bash htop vim tmux docker curl openssh-client rsync && apk upgrade
RUN pip install docker-compose
ENV PS1="\[\033[01;31m\]\u@toolbox\[\033[01;34m\] \w $\[\033[00m\] "
COPY tmux.conf /root/.tmux.conf
COPY session1 /root
COPY bashrc /root/.bashrc
RUN sed -i /etc/passwd -e s/ash/bash/g
ENTRYPOINT tmux new-session "tmux source-file ~/session1"
