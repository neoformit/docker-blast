#!/usr/bin/env bash

echo "Downloading BLAST-2.11.0+ toolkit from NCBI FTP server"

cd /blast
wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.11.0/ncbi-blast-2.11.0+-x64-linux.tar.gz
wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.11.0/ncbi-blast-2.11.0+-x64-linux.tar.gz.md5
out=`md5sum --check ncbi-blast-2.11.0+-x64-linux.tar.gz.md5`

if [[ $out != 0 ]]; then
    echo "BLAST download from NCBI failed MD5 checksum. Maybe try again?"
    exit 0
fi

tar -xzf ncbi-blast-2.11.0+-x64-linux.tar.gz
mv ncbi-blast-2.11.0+/bin/ blast/tools/
rm ncbi-blast-2.11.0+-x64-linux.tar*
rm -r ncbi-blast-2.11.0+

echo "Setup complete"
