#!/bin/sh

lilypond ly/$1.ly
mv $1.pdf $1-lily.pdf
hum2abc kern/$1.krn > $1.abc
abcm2ps -O $1.ps $1.abc
ps2pdf $1.ps
mv $1.pdf $1-krn.pdf
xpdf -geometry 800x345+0+0 $1-lily.pdf &
xpdf -geometry 800x345+0+400 $1-krn.pdf &
