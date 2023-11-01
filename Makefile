#!/bin/bash

all: build/cards.pdf

build/cards.pdf: cards.tex
	mkdir -p ./build
	pdflatex --output-dir ./build cards.tex

cards.tex:
	# Header (including instructions)
	cat header.tex > cards.tex
	# Black cards
	# Remove leading & trailing whitespace
	awk '{$$1=$$1};1' black.txt > tmp && mv tmp black.txt
	# Replace the blanks and wrap with the card command
	sed -e 's/__/\\blank{}/g' -e 's/.*/\\blacksingle{&}/' black.txt >> cards.tex
	# Same for white
	awk '{$$1=$$1};1' white.txt > tmp && mv tmp white.txt
	sed -e 's/__/\\blank{}/g' -e 's/.*/\\whitesingle{&}/' white.txt >> cards.tex
	echo '\\end{document}' >> cards.tex

clean:
	rm cards.tex
	rm -rf build

