#
#
#

DOCUMENT=manual
SOURCES=*.tex
SRCDIR=tex

all: $(DOCUMENT).pdf

# manual.pdf (DOCUMENT) depende de todos los archivos ".tex" (SOURCES) que estén en la carpeta tex/ (SRCDIR)
$(DOCUMENT).pdf: $(SRCDIR)/$(SOURCES)
	cd $(SRCDIR);make;cd ../;
	cp $(SRCDIR)/$(DOCUMENT).pdf .;


.PHONY: clean

clean:
	cd $(SRCDIR);make clean;cd ../;
	rm -f $(DOCUMENT).pdf

