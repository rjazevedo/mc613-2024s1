#!/bin/bash

#(cd docs/slides ; marp-pdf.sh *.md; cp *.pdf ~/Dropbox/mc613) &
#(cd docs/slides ; marp-html.sh *.md) &
#export ENABLE_PDF_EXPORT=1
mkdocs build
rsync -vrlu --copy-unsafe-links --rsh=ssh docs/* manaus:public_html/Cursos/mc613/2024s1
