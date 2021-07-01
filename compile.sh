rm -r /app/tmp/*
cp -r * /app/tmp/
cd /app/tmp 

pandoc README.md -o report.tex --citeproc --filter pandoc-crossref --template template.tex  

platex report 
biber report 
platex report 
platex report 
dvipdfmx report
pdf2ps report.pdf
ps2pdf report.ps

cp /app/tmp/report.pdf /app/

