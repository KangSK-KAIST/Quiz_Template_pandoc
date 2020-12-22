all: test.pdf

test.pdf: test.tex
	pdflatex -interaction nonstopmode -halt-on-error test.tex > /dev/null && \
	pdflatex -interaction nonstopmode -halt-on-error test.tex > /dev/null

test.tex: test.md
	pandoc test.md -o test.tex --template=quiztemplate.tex

clean:
	rm -f test.aux test.log test.out test.pdf test.tex