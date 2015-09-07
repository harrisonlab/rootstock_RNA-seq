#!/bin/bash

SCRIPT_DIR=$(readlink -f ${0%/*})
BAM=$1
GTF=$2
OUT=$3


qsub $SCRIPT_DIR/submit_cuffquant.sh $BAM $GTF $OUT 
