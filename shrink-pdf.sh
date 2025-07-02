#!/bin/bash
# Note you should have ghostscript installed
# $ sudo apt install ghostscript

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf 

#dPDFSETTINGS options: prepress (high quality), ebook (medium) and screen (low)
