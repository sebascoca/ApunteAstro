comp  = pdflatex
compa = pdflatex -shell-escape
comp1 = biber

obj1  = astro.tex
obj2  = astro

astro.pdf: ${obj1} 
	${comp} ${obj1}
	${comp1} ${obj2}
	${comp} ${obj1}
	${comp} ${obj1}

astro-all.pdf: ${obj1} 
	${compa} ${obj1}
	${comp1} ${obj2}
	${compa} ${obj1}
	${compa} ${obj1}


rm-dvi:
	rm -f *.aux *.out *.bbl *.blg *.log *.toc *.dvi *.xml *.bcf

rm-pdf:
	rm -f ${obj2}.pdf
