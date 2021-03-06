#!/bin/bash


if [ -z $1 ] ; then
        CONTENT_DIR=.
else
        CONTENT_DIR=$1
fi

# requires python-beautifulsoup4 / python-bs4

# Only set if not overriden by an environment variable
DATE=${DATE:-`date +%F`}

DIR=../dist/satellite-field-guide-$DATE
mkdir $DIR 2>/dev/null

IDX=$DIR/index.html
SIDX=$DIR/index-short.html

INTRO="<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><link rel='stylesheet' type='text/css' href='handbook.css'/><title>Satellite Field Guide: Index</title></head><body><h1>Satellite Field Guide</h1><p>Version: $DATE</p><ol start=0>" 

echo $INTRO > $IDX
echo $INTRO > $SIDX 

for d in ${CONTENT_DIR}/chapter*; do
        if [ ! -d $DIR/$d ] ; then
                mkdir $DIR/$d
        fi
        title=`echo $d | sed 's/content\/chapter_[0-9][0-9]_//; s/_/ /g; s/^./\U&/; s/ ./\U&/g'`
        rm -f $DIR/$d/$d.mdidx
        for f in $d/*.md; do 
                cat $f >> $DIR/$d/$d.mdidx
                echo >> $DIR/$d/$d.mdidx
                echo >> $DIR/$d/$d.mdidx
        done
        echo "<h2><a href=\"$d/$d.html\">$title</a></h2>" >> $IDX
        echo "<li><a href=\"$d/$d.html\">$title</a></li>" >> $SIDX
        TITLE=`echo $d | sed 's/content\/chapter_[0-9][0-9]_//; s/_/ /g; s/^./\U&/; s/ ./\U&/g'`
        echo "<p><a href='../index.html'>Satellite Field Guide</a> - Version: $DATE - <a href='../index.html'>Back to Index</a></p><hr><h1>$TITLE</h1>" > $DIR/$d/$d.before
        echo "<hr><p><a href='../index.html'>Satellite Field Guide</a> - Version: $DATE - <a href='../index.html'>Back to Index</a></p>" > $DIR/$d/$d.after
        pandoc -s -S --toc -f markdown -t html --css=../layout/handbook.css --title="Satellite Field Guide - $TITLE" -B $DIR/$d/$d.before -A $DIR/$d/$d.after $DIR/$d/$d.mdidx -o $DIR/$d/$d.html
        python extract_toc.py $DIR/$d/$d.html | sed "s/\"#/\"$d\/$d.html#/" >> $IDX
        rm -f $DIR/$d/$d.mdidx
        cp -au $d/*.png $d/*.jpg $DIR/$d 2>/dev/null
done
cp -au handbook.css $DIR/ 

echo "</ol></body></html>" >> $IDX

