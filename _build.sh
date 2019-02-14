#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
# El creador de bookdown lo hacía así... a nosotros no nos funciona...
# Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
# Hemos sacado una solución así: https://github.com/rstudio/bookdown/issues/394
Rscript -e "bookdown::render_book('index.Rmd', clean=FALSE,'bookdown::pdf_document2')"
