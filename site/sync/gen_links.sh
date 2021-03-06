#!/bin/bash
DIRECTORY=$(cd `dirname $0` && pwd)
mkdir $DIRECTORY/indexes
cd $DIRECTORY/../indexes/
for f in *.obf.zip
do
  D=${f:0:-8}
  mkdir -p $DIRECTORY/indexes/$D
  ln -s $DIRECTORY/../indexes/$f $DIRECTORY/indexes/$D/$f
  echo "Processing $D/$f file..."
done