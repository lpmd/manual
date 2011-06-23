#
#
# MAKEFILE FOR manual.tex.

# The document must be compiled three times:
# 1) pdflatex reads the whole document, writing the text but keeps in memory the "\label"'s to make the cross-references and writes manual.idx
# 2) makeindex reads manual.idx where the alphabetic index contents are.
# 3) pdflatex assigns the cross-references of the "\label"'s and keeps in memory the labels of the alphabetic index's numbers.
# 4) pdflatex assigns the cross-references of the alphabetic index's numbers.
COMPILER=pdflatex
IDXMAKER=makeindex
SOURCES=*.tex
EXECUTABLE=manual.pdf

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(SOURCES)
	$(COMPILER) manual.tex
	$(IDXMAKER) manual.idx
	$(COMPILER) manual.tex
	$(COMPILER) manual.tex
	$(COMPILER) manual.tex

clean:
	rm -fr manual.pdf *.toc *.log *.aux *.idx *.ilg *.ind *.out *~
