FROM debian:8.4
RUN apt-get update && \
    apt-get install -y make build-essential libssl-dev zlib1g-dev \
        libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
        libncurses5-dev libncursesw5-dev git bash && \
    useradd -m -u 1000 debian && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /home/debian
USER debian
RUN git clone https://github.com/yyuu/pyenv.git .pyenv
COPY .bashrc /home/debian/.bashrc
