PAPER_NAME=thesis

all:
	rubber -d $(PAPER_NAME).tex


diff:
	git show 22ed28a979716706fbab1410dd664c3dfea3f3b1:front.tex > front-diff-init.tex
	git show 22ed28a979716706fbab1410dd664c3dfea3f3b1:introduction.tex > introduction-diff-init.tex
	git show 22ed28a979716706fbab1410dd664c3dfea3f3b1:vtype.tex > vtype-diff-init.tex
	latexdiff front-diff-init.tex front.tex --exclude-textcmd="section,subsection,table" > front-diff.tex
	latexdiff introduction-diff-init.tex introduction.tex --exclude-textcmd="section,subsection,table" > introduction-diff.tex
	latexdiff vtype-diff-init.tex vtype.tex --exclude-textcmd="section,subsection,table" > vtype-diff.tex
	rubber -d $(PAPER_NAME).tex

clean:
	rubber --clean $(PAPER_NAME).tex
