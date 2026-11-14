#!/usr/bin/env bash
# file is the desired silva seed reference file (silva.nr_v138_2.tgz)
file="$1"

wget -nc -P data/references https://mothur.s3.us-east-2.amazonaws.com/wiki/"$file"

mkdir data/referneces/silva_seed/"$file"
