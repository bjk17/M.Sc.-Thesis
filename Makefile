.PHONY : all deletepdf clean
all : ims2019.pdf

deletepdf:
	rm -f ims2019.pdf

ims2019.pdf: ims2019.tex
	pdflatex ims2019.tex
	pdflatex ims2019.tex

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.idx
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.nav
	rm -f *.out
	rm -f *.run.xml
	rm -f *.snm
	rm -f *.toc
