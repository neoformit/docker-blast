Docker BLAST
------

Create BLAST databases in `blast/db/` dir

### Build the container:
    docker build -t blast .

### Test BLASTN is working:
    docker run -it blast test

## Shell into container:
    docker run -it blast
