FROM rust:1.40

WORKDIR /usr/src/app

COPY . .

RUN apt-get update -y &&\
    apt-get install musl-tools -y &&\
    rustup default nightly

EXPOSE 8000

ENTRYPOINT ["cargo", "run"]
