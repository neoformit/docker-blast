#!/usr/bin/env bash

# Test that blastn is working with test query and db

blastn -query /blast/query.fas -db /blast/db/testdb \
&& echo "BLASTN ran successfully"
