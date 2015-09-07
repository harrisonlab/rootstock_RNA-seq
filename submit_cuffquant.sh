#!/bin/bash

#Cufflinks
#$ -S /bin/bash
#$ -cwd
#$ -l virtual_free=8G

WORK_DIR=$TMPDIR
INP=$1
GTF=$2
OUT=$3

cd $WORK_DIR
cuffquant -p 8 $GTF $INP

cp * $OUT/.
