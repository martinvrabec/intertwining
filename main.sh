#!/bin/bash

U=("3.5 Sqrt[2.]" "-3.5 Sqrt[2.]")


len=${#U[@]}
for (( i=0; i< $len; i++))
do


    code="Print[2+${U[${i}]}]; 
	Exit[]"
    echo ${code}
   
   
   
   
   
   
    echo ${code} > "PsiAG2_runnable${i}.nb"
    #/maths/Mathematica/11.1/Executables/math -run "<<PsiAG2_runnable${i}.nb"  >"outfile${i}"
done

exit 0 