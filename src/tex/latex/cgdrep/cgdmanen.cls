% cgdmanen.cls : English manual class
% vim: ft=tex

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{cgdrepen}[2013/01/03 Cogenda manual class]

\ProcessOptions\relax

\LoadClass[nofonts,11pt,utf8,a4paper,oneside]{book}

%\RequirePackage{showframe}
\RequirePackage[svgnames]{xcolor}
\RequirePackage{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage[explicit]{titlesec}
\RequirePackage[T1]{fontenc}
\RequirePackage[font=small,labelfont=bf]{caption}

\RequirePackage{amsmath,amssymb,amsfonts,array,booktabs,calc,changepage,datetime,esint,enumitem,eso-pic,fancyhdr,float,hyperref,ifxetex,listings,lmodern,longtable,makeidx,nameref,refstyle,siunitx,tabu,tcolorbox,tikz,times,units,varioref,xeCJK}%,tocloft,paralist

\input{cgd-docattr.def}
\input{cgd-style.def}
\input{cgdman-style.def}
\input{cgd-font-en.def}
