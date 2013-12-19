#!/bin/bash

if [ -z $1 ] ; then
        BOOK_DIR=.
else
    	BOOK_DIR=$1
fi

if [ -z $2 ] ; then
        CONTENT_DIR=.
else
        CONTENT_DIR=$2
fi

if [ ! -d $BOOK_DIR ] ; then
        mkdir $BOOK_DIR
fi

rm -f ${BOOK_DIR}/book.md

# Only set if not overriden by an environment variable
DATE=${DATE:-`date +%F`}

echo "Satellite Field Guide" >> ${BOOK_DIR}/book.md
echo "=====================" >> ${BOOK_DIR}/book.md
echo "Version: ${DATE}" >> ${BOOK_DIR}/book.md
echo "" >> ${BOOK_DIR}/book.md

for d in ${CONTENT_DIR}/chapter*; do
        TITLE=`echo ${d} | sed 's/content\/chapter_[0-9][0-9]_//; s/_/ /g;' | { dd bs=1 count=1 conv=ucase 2> /dev/null; cat ;}`
        TITLEUNDERLINE=`echo $TITLE | sed 's/./=/g'`
        echo ${TITLE} >> ${BOOK_DIR}/book.md
        echo ${TITLEUNDERLINE} >> ${BOOK_DIR}/book.md
        echo "" >> ${BOOK_DIR}/book.md;
	for file in ${d}/*.md; do
	        cat "${file}" >> ${BOOK_DIR}/book.md;
	        echo "" >> ${BOOK_DIR}/book.md;
	        echo "" >> ${BOOK_DIR}/book.md;
	done
done
