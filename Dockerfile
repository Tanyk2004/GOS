FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip

RUN apt install -y make nasm qemu
RUN apt install -y qemu-system-x86
RUN apt install -y iproute2
RUN apt-get install -y xorg openbox

COPY . .

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

RUN make

CMD ["bash"]