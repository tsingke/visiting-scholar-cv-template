# latexmk configuration for XeLaTeX
$pdf_mode = 1;
$pdflatex = 'xelatex -interaction=nonstopmode -file-line-error %O %S';
$bibtex_use = 0;          # no bibliography processing needed
