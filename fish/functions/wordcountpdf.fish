function wordcountpdf
pdftotext $argv - | wc -w
end
