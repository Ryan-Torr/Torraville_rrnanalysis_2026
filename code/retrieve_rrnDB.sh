#!/usr/bin/env bash

# Filename must include .zip  + no check certificatie is added due to flagging rrndb.umms.med.umich.edu as not secure

file="$1"
wget --no-check-certificate -nc -P data/raw/ https://rrndb.umms.med.umich.edu/downloads/"$file"

# The rrnDB are quite small (S16) so decomperssing them is not of great concern
unzip -n -d data/raw/ data/raw/"$file"
