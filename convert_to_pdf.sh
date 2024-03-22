#!/bin/sh

eps2pdf() {
    for f in *.eps
    do
       epstopdf "$f"
       echo "$(basename "$f" .eps).pdf"
    done
}

pdfjoin $(eps2pdf) --outfile joined.pdf

# for f in *.png
# do
#     img2pdf *.png -o out.pdf
#     epstopdf "$f"
#     echo "$(basename "$f" .eps).pdf"
# done

for f in *.png; do
   img2pdf "$f" -o "${f%.*}".pdf
done

for f in *.ps; do
   ps2pdf "$f" "${f%.*}".pdf
done
