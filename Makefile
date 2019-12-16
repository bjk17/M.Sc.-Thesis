.PHONY : all deletepdfs clean
all : ims2019.pdf MSc-Kristinsson-2019.pdf MSc-Defense.pdf

deletepdfs:
	rm -f ims2019.pdf
	rm -f MSc-Kristinsson-2019.pdf
	rm -f MSc-Defense.pdf

ims2019.pdf: ims2019.tex
	pdflatex ims2019.tex
	pdflatex ims2019.tex

MSc-Kristinsson-2019.pdf: MSc-Kristinsson-2019.tex 01-introduction.tex 02-words.tex 03-mesh-tilings.tex 04-discussion.tex
	xelatex MSc-Kristinsson-2019
	@if [ ! -f "MSc-Kristinsson-2019.bbl" ]; then\
		biber MSc-Kristinsson-2019;\
		xelatex MSc-Kristinsson-2019;\
		xelatex MSc-Kristinsson-2019;\
	fi

MSc-Defense.pdf: MSc-Defense.tex
	pdflatex MSc-Defense.tex

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
