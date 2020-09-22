FROM dorowu/ubuntu-desktop-lxde-vnc:focal-lxqt

RUN sudo sed -i 's|http://tw.|http://de.|g' /etc/apt/sources.list
RUN sudo apt update
RUN sudo apt -y install dirmngr
RUN sudo apt-key adv --fetch-keys https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc
RUN echo "deb http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com bionic main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null
RUN sudo add-apt-repository -y ppa:pbek/qownnotes
RUN sudo add-apt-repository -y ppa:fish-shell/release-3
RUN sudo add-apt-repository -y ppa:nextcloud-devs/client
RUN sudo add-apt-repository -y ppa:eugenesan/ppa
RUN sudo add-apt-repository -y ppa:phoerious/keepassxc
RUN sudo add-apt-repository -y ppa:peek-developers/stable

RUN sudo apt -y upgrade
RUN sudo apt -y install tmux qownnotes fish nextcloud-client less mc htop git smartgithg qtcreator qt5-default g++ qttools5-dev build-essential qtdeclarative5-dev libqt5svg5-dev qttools5-dev-tools libqt5xmlpatterns5-dev libqt5websockets5-dev keepassxc clion phpstorm vim telnet nmap inetutils-ping peek xscreensaver