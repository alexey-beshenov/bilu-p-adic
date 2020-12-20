all:
	mpost lattice.mp
	mpost blichfeld.mp
	pdflatex bilu
	pdflatex bilu

clean:
	rm -f *.aux *.log *.out *.toc *.mps *.mpx *~
