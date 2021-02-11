FROM ubuntu:20.04
COPY ./blast /blast
RUN bash /blast/setup.sh
RUN echo "Build complete"

# Need to access BLAST DBs in an S3 bucket..?
