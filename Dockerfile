FROM kalilinux/kali-linux-docker
LABEL maintainer="tv0g"

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean
CMD ["/bin/bash"]