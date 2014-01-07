#!/bin/bash

TEXMFHOME=$(kpsewhich -var-value TEXMFHOME)
echo -n "User LaTeX templates are to be installed to $TEXMFHOME         ... "
DSTDIR=$TEXMFHOME/tex/latex
[[ -d $DSTDIR ]] || mkdir -p $DSTDIR
cp -r src/tex/latex/cgdrep $DSTDIR
echo "Done"

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
if [[ $FOUND -eq 0 ]]
then
  echo "Lyx not found.  If you don't need lyx, neglect this line."
fi

