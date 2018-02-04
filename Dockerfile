FROM ubuntu:17.10 


RUN apt-get update && apt-get install -y dirmngr flatpak && \
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
echo "deb http://download.mono-project.com/repo/debian stretch main" | tee /etc/apt/sources.list.d/mono-xamarin.list && \
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
echo "deb http://download.mono-project.com/repo/debian stretch main" | tee /etc/apt/sources.list.d/mono-xamarin.list && \
apt-get update && apt-get install -y \
mono-complete=5.8.0.108-0xamarin1+debian9b1 \
nuget=2.12+mono-0xamarin9+debian9b1 \
htop \
mc \
apt-utils \
git \
git-core \
sudo \
wget


WORKDIR /home

CMD [ "/bin/bash" ]
