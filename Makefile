complete-current-CV.pdf: *.tex
	latexmk -pdf complete-current-CV
	latexmk -c
