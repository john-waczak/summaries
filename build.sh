#!/bin/bash

# generate latex
pandoc --standalone ./$1/$1.md -o ./$1/$1.tex

# generate html with mathjax
pandoc --standalone ./$1/$1.md -o ./$1/$1.html --mathjax="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg.js"

# create beamer presentation slides
pandoc -t beamer  ./$1/$1.md -o ./$1/$1.pdf

# create powerpoint presentation slides
pandoc -s ./$1/$1.md -o ./$1/$1.pptx 

