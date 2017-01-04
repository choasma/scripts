#!/bin/bash

in=${1}
out=${2}

for i in *.${in}
do 
	set -- "$i" 
	IFS="."; declare -a Array=($*) 
	#echo "${Array[@]}" 
	#echo "${Array[0]}" 
	#echo "${Array[1]}" 

	echo convert ${Array[0]}.${in} ${Array[0]}.${out} 
	convert ${Array[0]}.${in} ${Array[0]}.${out} 
	rm ${Array[0]}.${in}
done
