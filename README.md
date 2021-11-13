# Chrome-docker

## build
sudo docker build -t chrome-docker . 

## run
sudo docker run -e DISPLAY -v $HOME/.Xauthority:/home/kusarigama/.Xauthority --net=host chrome-docker