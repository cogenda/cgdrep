% cgdrepcn.cls : Chinese Report class
% vim: ft=tex

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{cgdrepcn}[2013/01/03 Cogenda report class]

\LoadClass[twoside,nofonts,utf8,a4paper]{ctexrep}

\input{cgd-common.def}

%%%% Chinese Font definition
\setCJKmainfont[ItalicFont={SimSun}]{SimSun}
\setCJKsansfont{WenQuanYi Zen Hei}
\setCJKmonofont{WenQuanYi Zen Hei}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{yahei}{Microsoft YaHei}
\setCJKfamilyfont{kaiti}{KaiTi_GB2312}

\renewcommand\bfseries{\CJKfamily{hei}}
\renewcommand{\nsb}{\noindent\small\CJKfamily{hei}}
\newcommand\yh{\CJKfamily{yahei}}
\newcommand\kt{\CJKfamily{kaiti}}

%%%% Chinese Headings
\CTEXsetup[format={\flushleft}]{chapter}
\CTEXsetup[format={\Large\bfseries\flushleft}]{section}
\renewcommand\chaptername{第 \chinese{chapter} 章}
\renewcommand\figurename{\small 图}
\renewcommand\tablename{\small 表}
\renewcommand\lstlistingname{\small 代码}
\renewcommand\lstlistlistingname{代码目录}

\input{cgd-docattr.def}
\renewcommand\CGD@value@classification{内部}

\input{cgd-front-cn.def}
\input{cgd-struct.def}
\input{cgd-style.def}
\input{cgd-math.def}

\endinput

