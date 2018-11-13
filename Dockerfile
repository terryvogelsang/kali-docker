FROM kalilinux/kali-linux-docker:latest
LABEL maintainer="Terry Vogelsang"

RUN apt-get update && apt-get install -y \
    git \
    curl \
    kali-linux-web \
    gobuster \
    seclists \
&& apt-get clean all

CMD ["/bin/bash"]