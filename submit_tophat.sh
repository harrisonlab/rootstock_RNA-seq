#!/bin/bash

#Assemble short reads with Tophat
#$ -S /bin/bash
#$ -cwd
#$ -l virtual_free=8G

WORK_DIR=$TMPDIR
R1=$1
R2=$2
REF=$3
DEST=$4
I=$5
X=$6

echo "Running Tophat with the following in= REF IS '$REF' READ 1 '$R1' READ 2 ' $R2 ' DEST is '$DEST' OUTNAME IS '$OUTNAME' MIN is '$I' MAX is '$X'"

cd $WORK_DIR

tophat $REF $R1 $R2 -p 8 --fusion-search --b2-I $I --b2-X $X

cp -r * $DEST/
