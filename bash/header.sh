#!/bin/sh

# 
DATAFILE=$1

unzip -p $DATAFILE | 
    head -n 1 > header.csv
