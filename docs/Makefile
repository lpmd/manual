#
#
#

DOCUMENT=manual
SRCDIR=tex

all: $(DOCUMENT).pdf

#$(DOCUMENT).dvi: $(SRCDIR)/$(DOCUMENT).tex
#	latex $(SRCDIR)/$(DOCUMENT).tex
#	

$(DOCUMENT).pdf: $(SRCDIR)/$(DOCUMENT).tex
	cd $(SRCDIR);make;cd ../;
	cp $(SRCDIR)/$(DOCUMENT).pdf .;


.PHONY: clean

clean:
	cd $(SRCDIR);make clean;cd ../;
	rm -f $(DOCUMENT).pdf

