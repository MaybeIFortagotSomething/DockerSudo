FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y 
RUN apt-get install -y make whois curl gcc gdebi wget unzip apt-utils git gdb
RUN wget -O ~/sudo_1.9.5-2_deb10_amd64.deb https://github.com/sudo-project/sudo/releases/download/SUDO_1_9_5p1/sudo_1.9.5-2_deb10_amd64.deb

RUN dpkg -i ~/sudo_1.9.5-2_deb10_amd64.deb

RUN rm ~/sudo_1.9.5-2_deb10_amd64.deb

RUN useradd -m user && printf "bob\nbob\n" | passwd user
RUN printf "JeNeSuisPasVenueIciPourSouffir\nJeNeSuisPasVenueIciPourSouffir\n" | passwd root

RUN echo "YouDon'tKnowHowManyBugsIHadDuringIWasMakingThisCTF" >> ~/flag.txt

USER user