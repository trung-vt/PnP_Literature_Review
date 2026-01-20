filename=$1
bash make.sh $1
pdfcrop $1.pdf ${1}_cropped.pdf
pdftocairo -png -r 300 ${1}_cropped.pdf ${1}_cropped_slide