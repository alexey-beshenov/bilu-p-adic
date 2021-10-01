all: bilu-p-adic.tex lattice.mp blichfeld.mp
	mpost lattice.mp
	mpost blichfeld.mp
	pdflatex bilu-p-adic
	pdflatex bilu-p-adic

clean:
	rm -f *.aux *.log *.out *.toc *.mps *.mpx *~
