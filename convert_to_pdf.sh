#!/bin/sh

eps2pdf() {
    for f in *.eps
    do
       epstopdf "$f"
       echo "$(basename "$f" .eps).pdf"
    done
}

pdfjoin $(eps2pdf) --outfile joined.pdf
