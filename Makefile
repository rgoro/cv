ifdef platita
	_PLATITA = "\def\platita{$(platita)}\input{curriculum.tex}"
#else
#	_PLATITA = ""
endif

all:
	pdflatex $(_PLATITA) curriculum.tex

hard:
	pdflatex "\def\platita{300}\input{curriculum}" curriculum.tex
	#pdflatex "\def\platita{}\input{curriculum}" curriculum.tex

