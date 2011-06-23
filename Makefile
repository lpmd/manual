#
#
#

DOCUMENT_ES=manual-es
DOCUMENT_EN=manual-en
SOURCES=*.tex
SRCDIR_ES=tex
SRCDIR_EN=tex-en

all: $(DOCUMENT_ES).pdf $(DOCUMENT_EN).pdf

# manual.pdf (DOCUMENT) depende de todos los archivos ".tex" (SOURCES) que estén en la carpeta tex/ (SRCDIR)
$(DOCUMENT_ES).pdf: $(SRCDIR_ES)/$(SOURCES)
	cd $(SRCDIR_ES);make;cd ../;
	cp $(SRCDIR_ES)/manual.pdf $(DOCUMENT_ES).pdf;

$(DOCUMENT_EN).pdf: $(SRCDIR_EN)/$(SOURCES)
	cd $(SRCDIR_EN);make;cd ../;
	cp $(SRCDIR_EN)/manual.pdf $(DOCUMENT_EN).pdf;

.PHONY: clean

clean:
	cd $(SRCDIR_ES);make clean;cd ../;
	cd $(SRCDIR_EN);make clean;cd ../;
	rm -fr manual-es.pdf manual-en.pdf
