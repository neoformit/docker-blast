Docker BLAST
------

Create BLAST databases in `blast/db/`

### Build the container
    docker build -t blast .

### Run BLAST with a test sequence
    docker run -it /blast/tools/tblastn \
        -query /blast/query.fas \
        -db /blast/db/testdb
