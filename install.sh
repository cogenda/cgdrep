#!/bin/bash

TEXMFHOME=$(kpsewhich -var-value TEXMFHOME)
echo -n "User LaTeX templates are to be installed to $TEXMFHOME ... "
DSTDIR=$TEXMFHOME/tex/latex
[[ -d $DSTDIR ]] || mkdir -p $DSTDIR
cp -r src/tex/latex/cgdrep $DSTDIR
echo "Done"

if [[ -d  $HOME/.lyx ]]
then
  echo -n "Lyx found, installing Lyx layouts ... "
  cp src/lyx/layouts/* $HOME/.lyx/layouts/
  echo "Done"
else
  echo "Lyx not found, is it installed?"
fi

