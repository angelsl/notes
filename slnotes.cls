\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{slnotes}[2015/06/13]
\RequirePackage{scrbase}
\newlength{\slfontsize}
\setlength{\slfontsize}{11pt}
\DefineFamily{slnotes}
\DefineFamilyMember{slnotes}
\DefineFamilyKey{slnotes}{fontsize}{\setlength{\slfontsize}{#1}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\FamilyProcessOptions{slnotes}\relax
%
\LoadClass[a4paper,twocolumn]{report}
\RequirePackage{scrextend}
\KOMAoptions{fontsize=\the\slfontsize}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{mathtools}
\RequirePackage[bf,sf,small,compact]{titlesec}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{xtab}
\RequirePackage{varwidth}
%\RequirePackage{multirow}
\RequirePackage[math-style=ISO]{unicode-math}
\RequirePackage{fontspec}
\RequirePackage[inline]{enumitem}
\RequirePackage[margin=1cm,footskip=0.5cm]{geometry}
\RequirePackage[activate={true,nocompatibility},final,factor=1100]{microtype}

\setmainfont[Ligatures=TeX]{TeX Gyre Pagella}
\setsansfont[Ligatures=TeX]{Source Sans Pro}
\setmathfont{TeX Gyre Pagella Math}
\setmonofont{Source Code Pro}
\newfontfamily\mffamily{TeX Gyre Pagella}
\DeclareTextFontCommand{\slmf}{\mffamily\itshape}

\titleformat{\chapter}[hang]{\large\sffamily\bfseries}{\thechapter}{1em}{}
\titleformat{\part}[hang]{\Large\sffamily\bfseries}{\thepart}{1em}{}
\titleclass{\part}{straight}
\titleclass{\chapter}{straight}
\titlespacing{\part}{0pt}{0pt}{0pt}
\titlespacing{\chapter}{0pt}{0pt}{0pt}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}
\titlespacing{\paragraph}{0pt}{0pt}{1em}
\titlespacing{\subparagraph}{0pt}{0pt}{1em}

\newlist{slinenum}{enumerate*}{1}
\setlist[slinenum]{font=\normalfont\bfseries,label=(\alph*),itemjoin={{; }},itemjoin*={{; and }}}
\newlist{slinenumor}{enumerate*}{1}
\setlist[slinenumor]{font=\normalfont\bfseries,label=(\alph*),itemjoin={{; }},itemjoin*={{; or }}}
\newlist{slinenumthen}{enumerate*}{1}
\setlist[slinenumthen]{font=\normalfont\bfseries,label=(\arabic*),itemjoin={{; }},itemjoin*={{; then }}}
\setlist{font=\sffamily\bfseries,leftmargin=*,topsep=0pt,partopsep=0pt,itemsep=0pt}
\setlist[enumerate,1]{label=\arabic*}
\setlist[enumerate,2]{label=\Alph*}

\newcommand*{\code}{\texttt}
\newcommand*{\sld}[1][]{\symup{d}#1}
\newcommand*{\sldd}[2]{\frac{\symup{d}#1}{\symup{d}#2}}
\newcommand*{\slid}{\,\symup{d}}
\newcommand*{\sldef}[1]{\textbf{#1}}

\newlength{\slskip}
\slskip=2pt plus 1pt minus 1pt

\g@addto@macro\normalsize{%
\overfullrule=2cm%
\parindent=0pt%
\parskip=\the\slskip%
\textfloatsep=2\slskip%
\floatsep=2\slskip%
\intextsep=2\slskip%
\dbltextfloatsep=2\slskip%
\dblfloatsep=2\slskip%
\abovecaptionskip=\the\slskip%
\abovedisplayskip=\the\slskip%
\belowdisplayskip=\the\slskip%
\fboxsep=1pt}
