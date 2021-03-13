FROM ubuntu:20.04
RUN  apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

COPY ./blast /blast
RUN bash /blast/setup.sh

# Need to access BLAST DBs in an S3 bucket..?
