%%%%%% Licence%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% la classe LaTeX Bredelebeamer est placée sous licence GNU-GPL v3
% https://github.com/framatophe/
% Il s'agit d'un style simple aux couleurs de Framasoft (http://framasoft.org)
% agrémenté de quelques boites.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Bredelebeamer}[17/02/2015, v1.0]
\PassOptionsToPackage{svgnames}{xcolor}

\LoadClass[compress,10pt]{beamer}

\usepackage[french]{babel}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{helvet}
\usepackage{pdfpages}
\usepackage{fourier}
\usepackage{graphicx,epsfig,subfigure}
\usepackage[footnotesize,hang]{caption} 
\usepackage{hyperref}
\usepackage{tikz}
\usepackage{xcolor}
\usepackage{siunitx,booktabs,nccmath}
\usepackage{textcomp,eurosym}
\usepackage{multicol,multirow,threeparttable,array,supertabular}
\usepackage[nomessages]{fp}
\usepackage{float}
\usepackage{siunitx}
\renewcommand{\arraystretch}{1.2} %aérer tableaux 
\graphicspath{{images/}}
\usepackage{ragged2e}
\usepackage{amsmath,amssymb,dsfont,pifont,rotating,framed}
\usepackage{stmaryrd}
\usepackage{stackengine}
\usepackage{lipsum}
\usetikzlibrary{patterns,shapes}
\usepackage{etoolbox}
% Définition de quelques raccourcis pour les notations mathématiques
\newcommand\E{\ensuremath{\mathbb{E}}}
\newcommand\PP{\ensuremath{\mathbb{P}}}
\newcommand\e{\ensuremath{\textnormal{e}}}
\newcommand\N{\ensuremath{\mathcal{N}}}
\newcommand\Q{\ensuremath{\mathbb{Q}}}
\DeclareMathOperator*{\argmin}{arg\,min}
\newcommand{\indep}{\raisebox{0.05em}{\rotatebox[origin=c]{90}{$\models$}}} % Signe indépendant 
% Définition des nouveaux types de colonnes pour les tables 
%Ex: C{1cm} crée une colonne centrée de 1cm de large
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}
% Faire une croix rouge ou un ok vert
\newcommand{\cmark}{\textcolor{LimeGreen}{\ding{51}}}
\newcommand{\xmark}{\textcolor{Maroon}{\ding{55}}}
%Faire les smileys
\newcommand{\smiley}[2]{%
\begin{tikzpicture}[scale=0.13]
    \newcommand*{\SmileyRadius}{1.0}%
    \draw [fill=#2] (0,0) circle (\SmileyRadius)% outside circle
        %node [yshift=-0.22*\SmileyRadius cm] {\tiny #1}% uncomment this to see the smile factor
        ;
    \pgfmathsetmacro{\eyeX}{0.5*\SmileyRadius*cos(30)}
    \pgfmathsetmacro{\eyeY}{0.5*\SmileyRadius*sin(30)}
    \draw [fill=black,draw=none] (\eyeX,\eyeY) circle (0.1cm);
    \draw [fill=black,draw=none] (-\eyeX,\eyeY) circle (0.1cm);

    \pgfmathsetmacro{\xScale}{2*\eyeX/180}
    \pgfmathsetmacro{\yScale}{1.0*\eyeY}
    \draw[color=black, domain=-\eyeX:\eyeX]   
        plot ({\x},{
            -0.1+#1*0.15 % shift the smiley as smile decreases
            -#1*1.75*\yScale*(sin((\x+\eyeX)/\xScale))-\eyeY});
\end{tikzpicture}%
}%

%%%% Les Framacouleurs

\definecolor{Framableu}{RGB}{12,91,122}
\definecolor{Framableulight}{RGB}{18,144,176}
\definecolor{Framavert}{RGB}{142,156,72}
\definecolor{Framavertlight}{RGB}{227,235,199}
\definecolor{Framarouge}{RGB}{204,45,24}
\definecolor{Framarougelight}{RGB}{249,189,187}
\definecolor{Framaviolet}{RGB}{106,86,135}
\definecolor{Framavioletlight}{RGB}{211,197,232}
\definecolor{Framaorange}{RGB}{235,114,57}
\definecolor{Framaorangelight}{RGB}{235,209,197}
\definecolor{Framajaune}{RGB}{196,168,27}
\definecolor{Framajaunelight}{RGB}{255,235,181}
\definecolor{Framamarron}{RGB}{161,136,127}
\definecolor{Framamarronlight}{RGB}{215,204,200}
\definecolor{Framagris}{RGB}{97,97,97}
\definecolor{Framagrislight}{RGB}{245,245,245}
\definecolor{VertMilliman}{RGB}{160,186,146}
\definecolor{BleuMilliman}{RGB}{0,72,120}

%%%%%%%%%%%% Tableaux
\usepackage{tcolorbox}
\usepackage{tabularx}
\usepackage{array}
\usepackage{colortbl}
\tcbuselibrary{skins}


%%%% Merci : http://tex.stackexchange.com/questions/112343/beautiful-table-samples

\newcolumntype{Y}{>{\raggedleft\arraybackslash}X}

\tcbset{tabrouge/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framarougelight!100!white,colframe=Framarouge!70!black,colbacktitle=Framarouge!100!white,
coltitle=white,center title}}

\tcbset{taborange/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framaorangelight!100!white,colframe=Framaorange!70!black,colbacktitle=Framaorange!100!white,
coltitle=white,center title}}

\tcbset{tabvert/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framavertlight!100!white,colframe=Framavert!70!black,colbacktitle=Framavert!100!white,
coltitle=white,center title}}

\tcbset{tabbleu/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framableulight!100!white,colframe=Framableu!70!black,colbacktitle=Framableu!100!white,
coltitle=white,center title}}

\tcbset{tabjaune/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framajaunelight!100!white,colframe=Framajaune!70!black,colbacktitle=Framajaune!100!white,
coltitle=white,center title}}

\tcbset{tabgris/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framagrislight!100!white,colframe=Framagris!70!black,colbacktitle=Framagris!100!white,
coltitle=white,center title}}

\tcbset{tabmarron/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framamarronlight!100!white,colframe=Framamarron!70!black,colbacktitle=Framamarron!100!white,
coltitle=white,center title}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\beamerboxesdeclarecolorscheme{orange}{Framaorange}{Framaorangelight}

\usecolortheme[named=Framableu]{structure}

\useinnertheme{rectangles}
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}

\definecolor{sectionColor}{RGB}{0,0,0} % noir
\definecolor{subsectionColor}{RGB}{160,186,146} % VertMilliman
\definecolor{sectionTextColor}{RGB}{255,255,255} % blanc
\definecolor{subsectionTextColor}{RGB}{255,255,255} % blanc
\definecolor{leftFootlineColor}{RGB}{0,0,0}% noir
\definecolor{middleFootlineColor}{RGB}{160,186,146}% VertMilliman
\definecolor{rightFootlineColor}{RGB}{0,0,0}% noir
\definecolor{authorColor}{RGB}{255,255,255}% blanc
\definecolor{footlineTitleColor}{RGB}{255,255,255}% blanc
\definecolor{instituteColor}{RGB}{0,0,0}% noir
\definecolor{dateColor}{RGB}{255,255,255}% blanc
\definecolor{pageColor}{RGB}{255,255,255}% blanc
\definecolor{titleColor}{RGB}{0,72,120} % BleuMilliman
\definecolor{titleTextColor}{RGB}{255,255,255} % blanc
\definecolor{bodyColor}{RGB}{255,255,255} % blanc
\definecolor{normalTextColor}{RGB}{0,0,0} % noir
\definecolor{exampleTextColor}{RGB}{82,99,42} %Framavertfoncé
\definecolor{alertTextColor}{RGB}{204,45,24} % Framarouge

\definecolor{chipColor}{RGB}{12,91,122} % Framableu
\definecolor{chipTextColor}{RGB}{255,255,255} % blanc
\definecolor{normalBlockColor}{RGB}{178,213,219} % Framableulight pour arriere plan du block
\definecolor{normalTitleBlockColor}{RGB}{12,91,122} % Framableu
\definecolor{normalBlockTextColor}{RGB}{0,0,0} % noir
\definecolor{normalBlockTitleTextColor}{RGB}{255,255,255} % blanc
\definecolor{exampleBlockColor}{RGB}{227,235,199} %Framavertlight pour arriere plan du block
\definecolor{exampleTitleBlockColor}{RGB}{142,156,72} % Framavert
\definecolor{exampleBlockTextColor}{RGB}{0,0,0} % noir
\definecolor{exampleBlockTitleTextColor}{RGB}{255,255,255} % blanc
\definecolor{alertBlockColor}{RGB}{249,189,187} % Framarougelight pour arriere plan du block
\definecolor{alertTitleBlockColor}{RGB}{204,45,24} % Framarouge
\definecolor{alertBlockTextColor}{RGB}{0,0,0} % noir
\definecolor{alertBlockTitleTextColor}{RGB}{255,255,255} % blanc


\setbeamertemplate{blocks}[rectangle]

\setbeamercolor{section in head/foot}{bg=sectionColor, fg=sectionTextColor}
\setbeamercolor{subsection in head/foot}{bg=subsectionColor, fg=subsectionTextColor}
\setbeamercolor*{block title}{fg=normalBlockTitleTextColor,bg=normalTitleBlockColor}
\setbeamercolor*{block body}{fg=normalBlockTextColor,bg=normalBlockColor}
\setbeamercolor*{block title alerted}{fg=alertBlockTitleTextColor,bg=alertTitleBlockColor}
\setbeamercolor*{block body alerted}{fg=alertBlockTextColor,bg=alertBlockColor}
\setbeamercolor*{block title example}{fg=exampleBlockTitleTextColor,bg=exampleTitleBlockColor}
\setbeamercolor*{block body example}{fg=exampleBlockTextColor,bg=exampleBlockColor}
\setbeamerfont{block title}{size={}}
\setbeamercolor{titlelike}{fg=titleTextColor,bg=titleColor}
\setbeamercolor*{normal text}{fg=normalTextColor,bg=bodyColor}
\setbeamercolor*{example text}{fg=exampleTextColor}
\setbeamercolor*{alerted text}{fg=alertTextColor}
\setbeamercolor{itemize item}{fg=titleColor!70}
\setbeamercolor{enumerate item}{fg=titleColor!70}
\setbeamercolor{description item}{fg=titleColor!70}



\useinnertheme{default}
\setbeamercolor{item projected}{bg=chipColor,fg=chipTextColor}
\beamer@compresstrue
\defbeamertemplate*{headline}{smoothbars theme}
{%
\begin{beamercolorbox}[ht=2.125ex,dp=3.150ex]{section in head/foot}
\insertnavigation{\paperwidth}
\end{beamercolorbox}%

% Commenter les 4 lignes suivantes si vous ne voulez pas la barre des sous-sections.
\begin{beamercolorbox}[ht=2.125ex,dp=1.125ex,%
leftskip=.3cm,rightskip=.3cm plus1fil]{subsection in head/foot}
\usebeamerfont{subsection in head/foot}\insertsubsectionhead
\end{beamercolorbox}%
}
\setbeamercolor{author in head/foot}{bg=leftFootlineColor, fg=authorColor}
\setbeamercolor{title in head/foot}{bg=middleFootlineColor, fg=footlineTitleColor}
\setbeamercolor{institute in head/foot}{fg=instituteColor}
\setbeamercolor{date in head/foot}{bg=rightFootlineColor, fg=dateColor}
\defbeamertemplate*{footline}{infolines theme}
{
\leavevmode%
\hbox{%
\begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
\usebeamerfont{author in head/foot}\insertshortauthor~~
\insertshortinstitute
\end{beamercolorbox}%
\begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
\usebeamerfont{title in head/foot}\insertshorttitle
\end{beamercolorbox}%
\begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
\usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}
\insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
\end{beamercolorbox}
}%
\vskip0pt%
}
\mode
<all>

%utilise la couleur Beamer : "example text" pour la couleur du texte
\newcommand{\exemple}[1]{{\color{example text.fg} #1}}

% emphase
\renewcommand{\emph}[1]{\textcolor{Framaorange}{\textbf{#1}}}


\usepackage{etoolbox}
\AtBeginEnvironment{exampleblock}{%
  \setbeamercolor{itemize item}{fg=exampleTitleBlockColor!70}
}
\AtBeginEnvironment{alertblock}{%
  \setbeamercolor{itemize item}{fg=alertTitleBlockColor!70}
}
\AtBeginEnvironment{block}{%
  \setbeamercolor{itemize item}{fg=normalTitleBlockColor!70}
}


\newcommand{\boitejaune}[1]{
\begin{center}
\fcolorbox{Framajaune}{Framajaunelight}{
\begin{minipage}{0.85\textwidth}
#1
\end{minipage}
}
\end{center}
}


\newcommand{\boiteviolette}[1]{
\begin{center}
\fcolorbox{Framaviolet}{Framavioletlight}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}


\newcommand{\boiteorange}[1]{
\begin{center}
\fcolorbox{Framaorange}{Framaorangelight}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}


\newcommand{\boitemarron}[1]{
\begin{center}
\fcolorbox{Framamarron}{Framamarronlight}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

\newcommand{\boitegrise}[1]{
\begin{center}
\fcolorbox{Framagris}{Framagrislight}{
\begin{minipage}{0.85\textwidth}
#1
\end{minipage}
}
\end{center}
}


\newcommand{\boitebleue}[1]{
\begin{center}
\fcolorbox{Framableu}{Framableulight}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

