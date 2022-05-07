#!/bin/bash
clear

release () {
    echo ${files} $origin
    for f in ${files}
    do
        echo $f
        if [ -e ./$origin/$f ]; 
        then
            mv ./$origin/$f ./_release
            echo "$f : file released"
        else
            echo "File $f has been moved already" 
        fi
    done
}

origin=flowchart
files=(risus-flowchart.pdf risus-flowchart.png risus-flowchart-big.png)
release

origin=ecran
files=(Risus-Ecran-A3-OReyJdr05.pdf)
release

origin=ecran_fd
files=(Risus-GM-Screen-fr-OReyJdr09.pdf)
release

echo "Done"




