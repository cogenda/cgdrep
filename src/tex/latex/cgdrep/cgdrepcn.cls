% cgdrepcn.cls : Chinese Report class
% vim: ft=tex

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{cgdrepcn}[2013/01/03 Cogenda report class]

\LoadClass[twoside,nofonts,12pt,utf8,a4paper,punct,fancyhdr,amstex]{ctexrep}

\input{cgd-common.def}

%%%% Chinese Font definition
\setCJKmainfont[ItalicFont={SimSun}]{SimSun}
\setCJKsansfont{WenQuanYi Zen Hei}
\setCJKmonofont{WenQuanYi Zen Hei}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{kaiti}{KaiTi_GB2312}

\renewcommand\bfseries{\CJKfamily{hei}}
\newcommand\kt{\CJKfamily{kaiti}}

%%%% Chinese Headings
\CTEXsetup[nameformat={\LARGE\bfseries}]{part}
\CTEXsetup[titleformat={\LARGE\bfseries}]{part}

\CTEXsetup[format={\flushleft}]{chapter}
\CTEXsetup[nameformat={\LARGE\bfseries}]{chapter}
\CTEXsetup[titleformat={\LARGE\bfseries}]{chapter}
\CTEXsetup[beforeskip={0pt},afterskip={10pt}]{chapter}

\CTEXsetup[format={\Large\bfseries\flushleft}]{section}
\CTEXsetup[beforeskip={0pt},afterskip={1pt}]{section}
\CTEXsetup[beforeskip={0pt},afterskip={1pt}]{subsection}
\CTEXsetup[beforeskip={0pt},afterskip={1pt}]{subsubsection}

\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand\lstlistingname{代码}
\renewcommand\lstlistlistingname{代码}

\input{cgd-docattr.def}
\renewcommand\CGD@value@classification{内部}

\input{cgd-front-cn.def}
\input{cgd-struct.def}
\input{cgd-style.def}
\input{cgd-math.def}

\endinput

