#
#
#

DOCUMENT=manual
SRCDIR=tex

all: $(DOCUMENT).dvi $(DOCUMENT).pdf

$(DOCUMENT).dvi: $(SRCDIR)/$(DOCUMENT).tex
	latex $(SRCDIR)/$(DOCUMENT).tex
	

$(DOCUMENT).pdf: $(SRCDIR)/$(DOCUMENT).tex
	pdflatex $(SRCDIR)/$(DOCUMENT).tex


.PHONY: clean

clean:
	rm -f $(DOCUMENT).dvi $(DOCUMENT).pdf *.log *.toc *.aux

