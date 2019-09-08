#!/bin/bash

values=("Sqrt[2.]" "0.5 Sqrt[2.]")
len=${#values[@]}


for (( i=0; i< $len; i++))
do
    code="Print[2+${values[$i]}]; 
Exit[]"

   
    echo ${code} > "test${i}.nb"
    /maths/Mathematica/11.1/Executables/math -run "<<test${i}.nb"  >"testout${i}"
done

exit 0 
 
