#!/bin/bash

# USAGE:
# 1. install to user's local directories
#
#   $ ./install
#
# 2. install to global directories
#
#   $ sudo -sH
#   $ ./install --global
#

if [[ $1 == '--global' ]];
then
    TEXMF=$(kpsewhich -var-value TEXMFLOCAL)
    LYXDIR=$(cd $(dirname $(which lyx)) && cd .. && pwd)/share/lyx
else
    TEXMF=$(kpsewhich -var-value TEXMFHOME)
    LYXDIR=
    for lyxdir in .lyx2.1 .lyx
    do
        if [[ -d  "$HOME/$lyxdir" ]]
        then
            LYXDIR="$HOME/$lyxdir"
        fi
    done
fi

##################### Part 1 : Latex class  #########################
echo -n "User LaTeX templates are to be installed to $TEXMF         ... "
DSTDIR=$TEXMF/tex/latex
[[ -d $DSTDIR ]] || mkdir -p $DSTDIR
cp -r src/tex/latex/cgdrep $DSTDIR
echo "Done"

##################### Part 2 : Lyx layout   #########################
if [[ -d $LYXDIR ]]
then
    echo -n "Lyx user dir found in $LYXDIR, installing Lyx layouts       ... "
    cp src/lyx/layouts/* $LYXDIR/layouts/
    echo "Done"
fi


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
	    sed -i -e "s/\\\\$setcmd{(\w|\s)*}\(.*\)$/\\\\$setcmd{$font}\1/" $fname
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


