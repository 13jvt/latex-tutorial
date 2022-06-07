% QSLIDES: Beamer class with Queen's University styling
% Copyright (c) 2015, Joshua A. Marshall

% This class is for presentations at Queen's University, Kingston, Canada.  The format is based on the Berkeley theme provided by the Beamer class.  The template is set up with the assumption that it will be used to create lecture slides (i.e., has a course number).

% These lines (below) tell TeXShop to typeset with xelatex, and to open and save the source with Unicode encoding.
%!TEX TS-program = xelatex
%!TEX encoding = UTF-8 Unicode

\LoadClass[aspectratio=169]{beamer}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{templates/qslides}[2015/03/31 QSLIDES class by Joshua A. Marshall]

\RequirePackage{xunicode}
\linespread{1.15}

% Needed for XeTeX with Beamer
\DeclareTextCommandDefault{\nobreakspace}{\leavevmode\nobreak\ }

% For hyperlink stuff
\RequirePackage{hyperref}

% For array/tabular stuff
\usepackage{array}

% For math stuff
\RequirePackage{amsmath,amsfonts,amssymb}

% For colours
\RequirePackage{color}

% For fancy verbatim features
\RequirePackage{fancyvrb}

% Beamer theme
\usetheme[right]{Berkeley}

% Beamer options
\setbeamercovered{transparent}

% Set up Queen's colours as per the official Queen's Visual Identity Guide
% For more information visit: http://www.queensu.ca/identity
\definecolor{qblue}{RGB}{17,51,93} % Pantone 295
\definecolor{qred}{RGB}{157,25,57} % Pantone 187
\definecolor{qgold}{RGB}{238,189,49} % Pantone 124
\definecolor{qcgray}{RGB}{104,99,102} % Pantone Cool Gray 11 (goes with red dominant themes)
\definecolor{qwgray}{RGB}{140,125,112} % Pantone Warm Gray 9 (goes with blue dominant themes)

\newcommand{\slidefullframe}[1]{
	\setbeamercolor{background canvas}{bg=qblue}
	\begin{frame}[plain]
		\includegraphics[height=\paperheight]{#1}
	\end{frame}
	\setbeamercolor{background canvas}{bg=white}
}

\DeclareOption{tricolour}{
% Queen's colour changes and styles for custom "Tricolour" look
\setbeamercolor{structure}{fg=qred}
\setbeamercolor{local structure}{fg=qred}
\setbeamercolor{enumerate item}{fg=qblue}
\setbeamercolor{alerted text}{fg=qblue}
\setbeamercolor{title}{fg=white, bg=qblue}
\setbeamercolor{block title}{bg=qblue}
\setbeamertemplate{itemize subitem}[triangle]
\setbeamertemplate{itemize subsubitem}[circle]
\setbeamertemplate{enumerate items}[square]
\setbeamercolor{section in toc}{fg=black}
\setbeamercolor{sidebar left}{bg=qblue}
\setbeamercolor{sidebar right}{bg=qblue}
\setbeamercolor{logo}{bg=qgold}
\setbeamertemplate{caption}[caption name own line]
\setbeamerfont{caption}{size=\scriptsize}
\setbeamercolor{author in sidebar}{fg=white}
\setbeamercolor{background canvas}{bg=white}

% Command for making full-screen images
\renewcommand{\slidefullframe}[1]{
\setbeamercolor{background canvas}{bg=qred}
\begin{frame}[plain]
\includegraphics[height=\paperheight]{#1}
\end{frame}
\setbeamercolor{background canvas}{bg=white}}

% Define a new verbatim style to look good for displaying sample code
\DefineVerbatimEnvironment{qverbatim}{Verbatim}
{frame=leftline,numbers=left,rulecolor=\color{qred},fontsize=\small,framerule=1pt}
}

\DeclareOption{red}{
% Queen's colour changes and styles for custom "Formal Red" look
\setbeamercolor{structure}{fg=qred}
\setbeamercolor{local structure}{fg=qred}
\setbeamercolor{enumerate item}{fg=qcgray}
\setbeamercolor{alerted text}{fg=qcgray}
\setbeamercolor{title}{fg=white, bg=qcgray}
\setbeamercolor{block title}{bg=qcgray}
\setbeamertemplate{itemize subitem}[triangle]
\setbeamertemplate{itemize subsubitem}[circle]
\setbeamertemplate{enumerate items}[square]
\setbeamercolor{section in toc}{fg=black}
\setbeamercolor{sidebar left}{bg=qcgray}
\setbeamercolor{sidebar right}{bg=qcgray}
\setbeamercolor{logo}{bg=qgold}
\setbeamertemplate{caption}[caption name own line]
\setbeamerfont{caption}{size=\scriptsize}
\setbeamercolor{author in sidebar}{fg=white}
\setbeamercolor{background canvas}{bg=white}

% Command for making full-screen images
\renewcommand{\slidefullframe}[1]{
\setbeamercolor{background canvas}{bg=qred}
\begin{frame}[plain]
\includegraphics[height=\paperheight]{#1}
\end{frame}
\setbeamercolor{background canvas}{bg=white}}

% Define a new verbatim style to look good for displaying sample code
\DefineVerbatimEnvironment{qverbatim}{Verbatim}
{frame=leftline,numbers=left,rulecolor=\color{qred},fontsize=\small,framerule=1pt}
}

\DeclareOption{blue}{
% Queen's colour changes and styles for custom "Formal Blue" look
\setbeamercolor{structure}{fg=qblue}
\setbeamercolor{local structure}{fg=qblue}
\setbeamercolor{enumerate item}{fg=qwgray}
\setbeamercolor{alerted text}{fg=qwgray}
\setbeamercolor{title}{fg=white, bg=qwgray}
\setbeamercolor{block title}{bg=qwgray}
\setbeamertemplate{itemize subitem}[triangle]
\setbeamertemplate{itemize subsubitem}[circle]
\setbeamertemplate{enumerate items}[square]
\setbeamercolor{section in toc}{fg=black}
\setbeamercolor{sidebar left}{bg=qwgray}
\setbeamercolor{sidebar right}{bg=qwgray}
\setbeamercolor{logo}{bg=qgold}
\setbeamertemplate{caption}[caption name own line]
\setbeamerfont{caption}{size=\scriptsize}
\setbeamercolor{author in sidebar}{fg=white}
\setbeamercolor{background canvas}{bg=white}

% Command for making full-screen images
\renewcommand{\slidefullframe}[1]{
\setbeamercolor{background canvas}{bg=qblue}
\begin{frame}[plain]
\includegraphics[height=\paperheight]{#1}
\end{frame}
\setbeamercolor{background canvas}{bg=white}}

% Define a new verbatim style to look good for displaying sample code
\DefineVerbatimEnvironment{qverbatim}{Verbatim}
{frame=leftline,numbers=left,rulecolor=\color{qblue},fontsize=\small,framerule=1pt}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

% Gets rid of navigation symbols
\setbeamertemplate{navigation symbols}{}

% Some handy commands (define your own)
\newcommand{\norm}[1]{\left\Vert#1\right\Vert}
\newcommand{\abs}[1]{\left\vert#1\right\vert}
\newcommand{\set}[1]{\left\{#1\right\}}
\newcommand{\Real}{\mathbb R}
\newcommand{\Complex}{\mathbb C}
\newcommand{\eps}{\varepsilon}
\newcommand{\To}{\longrightarrow}
\newcommand{\Ker}{\textup{Ker}}
\newcommand{\Img}{\textup{Img}}
\newcommand{\diag}{\textup{diag}}
\newcommand{\circulant}{\textup{circ}}
\newcommand{\mbf}{\mathbf}
\newcommand{\lastpage}{\pageref{LastPage}}

% Theorem environments
\newtheorem{thm}{Theorem}
