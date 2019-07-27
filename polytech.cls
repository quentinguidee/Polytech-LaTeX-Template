\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{polytech}[ULB Polytechnique Template]

%\PassOptionsToClass{12pt}{book}
\LoadClass{book}

%\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}

%% Fonts

\RequirePackage{amsmath,amsfonts}
\RequirePackage{mathrsfs}
\RequirePackage{fontspec}
\RequirePackage{tcolorbox, xcolor, color}
\tcbuselibrary{breakable}

\newfontfamily{\serialfont}{Jaapokki}

%\RequirePackage{textcomp}
%\RequirePackage{lmodern}
%\RequirePackage{tgtermes}
%\RequirePackage{kmath}
%\renewcommand{\familydefault}{\sfdefault}
% \usepackage{newpxmath}
% \usepackage{fontspec}

% \setmainfont{TeX Gyre Pagella}

\RequirePackage{lmodern}
\RequirePackage{newpxtext, textcomp, eulerpx}



%\newcommand\upi{\symup{i}}
%\newcommand\upe{\symup{e}}

%% Colors
\definecolor{color_red}{HTML}{FF6F5F}
\definecolor{color_orange}{HTML}{FF9D75}
\definecolor{color_yellow}{HTML}{FFBD78}
\definecolor{color_green}{HTML}{B6C783}
\definecolor{color_teal}{HTML}{5DA38F}
\definecolor{color_blue}{HTML}{3399CC}
\definecolor{color_purple}{HTML}{BE6BAD}

\definecolor{color_lightgray}{HTML}{B1B1B1}
\definecolor{color_darkgray}{HTML}{5A5B5C}





%% Margins
\RequirePackage[a4paper, left=2.5cm, right=2.5cm, top=2.5cm, bottom=2.5cm]{geometry}


%% Chapters
\RequirePackage{titlesec}


%% Drawing
\RequirePackage{tikz}


%% Table of contents
\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}


%% Chemical
\RequirePackage[version=4]{mhchem}
\RequirePackage{chemfig}




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




% Boxes

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

%\linespread{1.5}

\newtcolorbox{exemple}{
    breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=2mm,
    bottomtitle=1mm,
    boxrule=0mm,
    %bottomrule=.25mm,
    subtitle style={
        colback=black!7
    },
    before skip=4mm,
    after skip=4mm,
    title=\color{black}Exemple}

\newtcolorbox{tbox}{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=1mm,
    bottomtitle=1mm,
    boxrule=0mm,
    %bottomrule=.25mm,
    subtitle style={
        colback=black!7
    },
    before skip=4mm,
    after skip=4mm}

\newtcolorbox{remarque}{
    %breakable,
    colback=black!4,
    colframe=black!4,
    fonttitle=\bfseries,
    sharp corners=all,
    toptitle=2mm,
    bottomtitle=1mm,
    boxrule=0mm,
    %bottomrule=.25mm,
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
    %bottomrule=.25mm,
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
    %bottomrule=.25mm,
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
    %bottomrule=.25mm,
    before skip=4mm,
    after skip=4mm,
    after title={\hfill\colorbox{color_teal}{\color{white}\textsc{Théorème}}},
    title=\color{black}#1}

% Color Box
\RequirePackage{multicol}
\newcommand{\cbox}[1]{\raisebox{\depth}{\fcolorbox{black}{#1}{\null}}}