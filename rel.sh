#!/bin/bash
clear

release () {
    for f in ${files[@]}
    do
        echo "=> $f"
        if [ -e ./$origin/$f ]; 
        then
            mv ./$origin/$f ./_release
            echo "$f : file released"
        else
            echo "File $f has been moved already" 
        fi
    done
}
# Declare an array of string with type
origin=flowchart
declare -a files=("risus-flowchart.pdf" "risus-flowchart.png" "risus-flowchart-big.png")
release

origin=ecran
declare -a files=("Risus-Ecran-A3-OReyJdr05.pdf")
release

origin=ecran_fd
declare -a files=("Risus-GM-Screen-fr-OReyJdr09.pdf")
release

origin=risus-mega
declare -a files=("Risus-Mega-OReyJdr07.pdf")
release

echo "Done"




