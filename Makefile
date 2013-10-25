complete-current-CV.pdf: *.tex
	latexmk -lualatex complete-current-CV
	latexmk -c
