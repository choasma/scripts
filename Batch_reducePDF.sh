#!/bin/bash
#gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf $INPUTFILE




for item in $1/*.pdf
do
	echo ${item}
	IN=${item}
	set -- "$IN" 
	IFS="."; declare -a Array=($*) 
	#echo "${Array[@]}" 
	#echo "${Array[0]}" 
	#echo "${Array[1]}" 
	#echo gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=${Array[0]}_.pdf ${Array[0]}.pdf
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=${Array[0]}_.pdf ${Array[0]}.pdf
	rm ${Array[0]}.pdf
	mv ${Array[0]}_.pdf ${Array[0]}.pdf
done
