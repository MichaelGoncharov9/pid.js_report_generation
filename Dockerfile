FROM ubuntu:22.04
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    grep \
    bash \
    bc
RUN pip3 install sympy
WORKDIR /root/
COPY . /root/
RUN chmod +x /root/*.sh \
    && chmod +x /root/functions/*.sh \
    && chmod +x /root/print_form/*.sh \
    && chmod +x /root/teile/*.sh 
CMD ["bash", "/root/main.sh"]