FROM ubuntu:latest
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y wget && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && apt-get install -y ./google-chrome-stable_current_amd64.deb && groupadd -g 1000 kusarigama && useradd -d /home/kusarigama -s /bin/bash -m kusarigama -u 1000 -g 1000
USER kusarigama
ENV HOME /home/kusarigama
CMD ["google-chrome", "--no-sandbox"]