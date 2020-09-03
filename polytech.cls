\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{polytech}[ULB Polytechnique Template]

\LoadClass{book}


%%%%%%%%%%%%%%%%%%
%%%  Packages  %%%
%%%%%%%%%%%%%%%%%%
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{cancel}
\RequirePackage{lscape}
\RequirePackage{booktabs}
\RequirePackage{lmodern}
\RequirePackage{newpxtext, textcomp, eulerpx}

\newcommand{\tabitem}{~~\llap{\textbullet}~~}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{tabu}
\RequirePackage{ulem}
\newcolumntype{Y}{>{\centering\arraybackslash}X}


%%%%%%%%%%%%%%%
%%%  Fonts  %%%
%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amsfonts}
\RequirePackage{mathrsfs}
\RequirePackage{wasysym}
\RequirePackage{fontspec}
\RequirePackage{tcolorbox, xcolor, color}
\tcbuselibrary{breakable}

\newfontfamily{\serialfont}{Jaapokki}[
    %Extension=.otf,
    UprightFont=*-Regular
]


%%%%%%%%%%%%%%%%
%%%  Colors  %%%
%%%%%%%%%%%%%%%%

\definecolor{color_red}{HTML}{FF6F5F}
\definecolor{color_orange}{HTML}{FF9D75}
\definecolor{color_yellow}{HTML}{FFBD78}
\definecolor{color_green}{HTML}{B6C783}
\definecolor{color_darkgreen}{HTML}{7DB370}
\definecolor{color_teal}{HTML}{5DA38F}
\definecolor{color_blue}{HTML}{3399CC}
\definecolor{color_purple}{HTML}{BE6BAD}

\definecolor{color_lightgray}{HTML}{B1B1B1}
\definecolor{color_darkgray}{HTML}{5A5B5C}


%%%%%%%%%%%%%%%%%
%%%  Margins  %%%
%%%%%%%%%%%%%%%%%
\RequirePackage[a4paper, left=2.5cm, right=2.5cm, top=2.5cm, bottom=2.5cm]{geometry}


%%%%%%%%%%%%%%%%%%
%%%  Chapters  %%%
%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}


%%%%%%%%%%%%%%%%%%
%%%  Drawings  %%%
%%%%%%%%%%%%%%%%%%
\RequirePackage{tikz}
\RequirePackage[american resistor, european voltage, european current, american inductor]{circuitikz}


%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Table of content  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}


%%%%%%%%%%%%%%%%%%
%%%  Chemical  %%%
%%%%%%%%%%%%%%%%%%
\RequirePackage[version=4]{mhchem}
\RequirePackage{chemfig}


%%%%%%%%%%%%%%%%
%%%  Tokens  %%%
%%%%%%%%%%%%%%%%
\newtoks\course
\newtoks\prof
\newtoks\maincolor
\course{XXXXH-0000}
\maincolor{color_purple}


\renewcommand{\maketitle}{
    {
    \setlength{\parindent}{0pt}
    \thispagestyle{empty}
    {\fontsize{20}{60}\serialfont\selectfont \the\course \par }
    \vspace{0.7cm}

    \begin{hyphenrules}{nohyphenation}
    {\fontsize{60}{20}\serialfont\selectfont \color{\the\maincolor}{\@title} \par }
    \end{hyphenrules}

    \vfill
    {\fontsize{12}{20}\serialfont\selectfont \color{color_lightgray}{AUTEUR(S)} \par }
    {\fontsize{19}{20}\serialfont\selectfont \color{color_darkgray}{\@author} \par }
    \vspace{1cm}
    {\fontsize{12}{20}\serialfont\selectfont \color{color_lightgray}{PROFESSEUR} \par }
    {\fontsize{19}{20}\serialfont\selectfont \color{color_darkgray}{\the\prof} \par }
    }
}

\titleformat{\chapter}[display]
    {\color{\the\maincolor} \fontsize{42}{20}\serialfont\selectfont}%
    {\fontsize{20}{60}\selectfont\color{black} %
    {\chaptertitlename}\hspace{1ex}%
    {\thechapter}}%
    {10 pt}%
    {}%




%%%%%%%%%%%%%%%
%%%  Boxes  %%%
%%%%%%%%%%%%%%%
\newtcolorbox{definition}[1]{
    breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=1mm,
    bottomtitle=1mm,
    boxrule=0mm,
    %bottomrule=.25mm,
    before skip=4mm,
    after skip=4mm,
    after title={\hfill\colorbox{color_red}{\color{white}\textsc{Définition}}},
    title=\color{black}#1}

\newtcolorbox{exemple}{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=2mm,
    bottomtitle=1mm,
    boxrule=0mm,
    subtitle style={
        colback=black!7
    },
    before skip=4mm,
    after skip=4mm,
    title=\color{black}Exemple}

\newtcolorbox{tbox}{
    %breakable,
    colback=black!1,
    colframe=black!1,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=1mm,
    bottomtitle=1mm,
    boxrule=0mm,
    subtitle style={
        colback=black!7
    },
    before skip=4mm,
    after skip=4mm}

\newtcolorbox{tbox*}[1]{
    %breakable,
    colback=black!1,
    colframe=black!1,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=2mm,
    bottomtitle=1mm,
    boxrule=0mm,
    subtitle style={
        colback=black!7
    },
    before skip=4mm,
    after skip=4mm,
    title=\color{black}#1}

    \newtcolorbox{subtbox}{
        %breakable,
        colback=black!8,
        colbacktitle=black!8,
        colframe=black!8,
        fonttitle=\bfseries,
        sharp corners=all,
        toptitle=2mm,
        bottomtitle=1mm,
        boxrule=0mm,
        subtitle style={
            %colback=black!7
        },
        before skip=4mm,
        after skip=4mm}

    \newtcolorbox{subtbox*}[1]{
        %breakable,
        colback=black!8,
        colbacktitle=black!8,
        colframe=black!8,
        fonttitle=\bfseries,
        sharp corners=all,
        toptitle=2mm,
        bottomtitle=1mm,
        boxrule=0mm,
        subtitle style={
            %colback=black!7
        },
        before skip=4mm,
        after skip=4mm,
        title=\color{black}#1}

\newtcolorbox{remarque}{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=2mm,
    bottomtitle=1mm,
    boxrule=0mm,
    subtitle style={
        colback=black!7
    },
    before skip=4mm,
    after skip=4mm,
    title=\color{black}Remarque}

\newtcolorbox{rappel}{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=2mm,
    bottomtitle=1mm,
    boxrule=0mm,
    subtitle style={
        colback=black!7
    },
    before skip=4mm,
    after skip=4mm,
    title=\color{black}Rappel}


\newtcolorbox{property}[1]{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=1mm,
    bottomtitle=1mm,
    boxrule=0mm,
    before skip=4mm,
    after skip=4mm,
    after title={\hfill\colorbox{color_darkgray}{\color{white}\textsc{Propriété}}},
    title=\color{black}#1}

\newtcolorbox{theoreme}[1]{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=1mm,
    bottomtitle=1mm,
    boxrule=0mm,
    before skip=4mm,
    after skip=4mm,
    after title={\hfill\colorbox{color_teal}{\color{white}\textsc{Théorème}}},
    title=\color{black}#1}

\newtcolorbox{hypotheses}{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=1mm,
    boxrule=0mm,
    before skip=4mm,
    before title={\colorbox{color_darkgreen}{\color{white}\textsc{Hypothèse(s)}}},
    title=\color{black} }

\newtcolorbox{retenir}[1]{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=1mm,
    bottomtitle=1mm,
    boxrule=0mm,
    before skip=4mm,
    after skip=4mm,
    after title={\hfill\colorbox{black!4}{\LARGE\color{color_red}$\heartsuit$}},
    title=\color{black}#1}

\newtcolorbox{composant}[1]{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=1mm,
    bottomtitle=1mm,
    boxrule=0mm,
    before skip=4mm,
    after skip=4mm,
    after title={\hfill\colorbox{color_yellow}{\color{white}\textsc{Composant}}},
    title=\color{black}#1}


%%%%%%%%%%%%%%%%%%%%%%%
%%%  Colored boxes  %%%
%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{multicol}
\newcommand{\cbox}[1]{\raisebox{\depth}{\fcolorbox{black}{#1}{\null}}}
