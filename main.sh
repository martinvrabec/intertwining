#!/bin/bash

U=("Sqrt[2]")

len=${#U[@]}

for(( i=0; i < ${len}; i++ ))
do
    echo "U0 = ${U[${i}]};" > "PsiAG2_Linux_runnable_${i}.nb"
    cat "PsiAG2_Linux_runnable_vs2.nb" >> "PsiAG2_Linux_runnable_${i}.nb"  
    vim -c ":%s/\r$//" -c ":wq" "PsiAG2_Linux_runnable_${i}.nb"
    /maths/Mathematica/11.1/Executables/math -run "<<PsiAG2_Linux_runnable_${i}.nb" >> "results" &
done

exit 0

