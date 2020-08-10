#!/bin/bash
# CONVERTS TO DOCBOOK FIRST
# YOU STILL NEED TO CONVERT FROM DOCBOOK TO GET TO MARKDOWN


FILES=*.adoc
for f in $FILES
do
  # extension="${f##*.}"
  # optional .extenstion reformat, helpful for moving into direct formats (e.g. .rst)
  # filename="${f%.*}"
  echo "Converting $f to Docbook -> MarkDown..."
  `asciidoctor -b docbook $f`
  # rm $f
done

