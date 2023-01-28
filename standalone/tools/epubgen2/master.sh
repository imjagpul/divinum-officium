#!/bin/bash

# This script generates all the supported versions of Divine Office for the current and two following years

# docker-compose -f docker-compose-generator.yml build && docker-compose -f docker-compose-generator.yml run generator bash

YEAR_FROM=`date +%Y`
YEAR_TO=$(($YEAR_FROM+3))
CDUR=$(pwd)

mkdir -p output

mkdir -p output/1960
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -r 1960 -o $CDUR/output/1960

mkdir -p output/1960/f
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -r 1960 -f -o $CDUR/output/1960/f

mkdir -p output/1960/m
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -m -r 1960 -o $CDUR/output/1960/m

mkdir -p output/1960/m/f
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -r 1960 -f -o $CDUR/output/1960/m/f

mkdir -p output/1960/MISSA_ONLY
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -M -r 1960 -o $CDUR/output/1960/MISSA_ONLY

mkdir -p output/1960/p
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -x -r 1960 -o $CDUR/output/1960/x

mkdir -p output/1960/PROPERS_ONLY
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -X -r 1960 -o $CDUR/output/1960/PROPERS_ONLY


mkdir -p output/DA
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -r DA -o $CDUR/output/DA

mkdir -p output/DA/p
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -r DA -p -o $CDUR/output/DA/p


mkdir -p output/1955
./epubgen2.sh -y $YEAR_FROM -t $YEAR_TO -r DA -o $CDUR/output/1955
