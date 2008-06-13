#
#
#

DOCUMENT=manual

all: $(DOCUMENT).pdf

$(DOCUMENT).pdf: $(DOCUMENT).tex
	pdflatex $(DOCUMENT).tex
	pdflatex $(DOCUMENT).tex


.PHONY: clean

clean:
	rm -f $(DOCUMENT).dvi $(DOCUMENT).pdf *.log *.toc *.aux

