#!/bin/sh

Rscript -e "rmarkdown::render('upgrading-report.Rmd', 'bookdown::pdf_book')"

Rscript -e 'pdftools::pdf_combine(input = c("upgrading-report.pdf", "Approval Letter Ethics PhD.pdf", "Ethics aplication PhD.pdf", "Research_Ethics_online_training_certificate.pdf", "Data-Management-Plan.pdf"), output = "upgrading-report-nikos-bosse.pdf")'

Rscript -e "rmarkdown::render('upgrading-report.Rmd', 'word_document')"