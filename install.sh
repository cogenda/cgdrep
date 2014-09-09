#!/bin/bash

##################### Part 1 : Latex class  #########################
TEXMFHOME=$(kpsewhich -var-value TEXMFHOME)
echo -n "User LaTeX templates are to be installed to $TEXMFHOME         ... "
DSTDIR=$TEXMFHOME/tex/latex
[[ -d $DSTDIR ]] || mkdir -p $DSTDIR
cp -r src/tex/latex/cgdrep $DSTDIR
echo "Done"

##################### Part 2 : Lyx layout   #########################
FOUND=0
for lyxdir in .lyx2.1 .lyx2.0 .lyx
do
    if [[ -d  $HOME/$lyxdir ]]
    then
        FOUND=1
        echo -n "Lyx user dir found in $HOME/$lyxdir, installing Lyx layouts       ... "
        cp src/lyx/layouts/* $HOME/$lyxdir/layouts/
        echo "Done"
    fi
done


##################### Part 3 : Font setting #########################

setFont() {
    fname=$DSTDIR/cgdrep/$1
    setcmd=$2
    declare -a fontLst=("${!3}")

    echo "checking $setcmd fonts"

    for (( i = 0 ; i < ${#fontLst[@]} ; i++ ))
    do
        font=${fontLst[$i]}

        fc-list -q "$font"

        if [[ $? -eq 0 ]]
        then
            echo "... found $font"
            sed -i -e "s/\\\\$setcmd.*$/\\\\$setcmd\{$font\}/" $fname
            break
        else
            echo "... can't find $font"
        fi
    done
}

MONOFONTS=("M+ 1m regular"
           "Dejavu Sans Mono"
           "Latin Modern Mono"
          )

setFont cgd-font-en.def setmonofont MONOFONTS[@]


