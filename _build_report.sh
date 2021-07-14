#!/bin/sh

Rscript -e "rmarkdown::render('upgrading-report.Rmd', 'bookdown::pdf_book')"

Rscript -e 'pdftools::pdf_combine(input = c("upgrading-report.pdf", "supplementary/Approval Letter Ethics PhD.pdf", "supplementary/Ethics aplication PhD.pdf", "supplementary/Research_Ethics_online_training_certificate.pdf", "supplementary/Data-Management-Plan.pdf"), output = "upgrading-report-nikos-bosse.pdf")'

rm upgrading-report.pdf

Rscript -e "rmarkdown::render('upgrading-report.Rmd', 'word_document')"