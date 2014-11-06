complete-current-CV.pdf: *.tex
	latexmk -lualatex complete-current-CV
	latexmk -c

current-resume.pdf: *.tex
	latexmk -lualatex current-resume
	latexmk -c
