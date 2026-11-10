\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/11/10 Single-page academic CV]
\LoadClass[10pt,letterpaper]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{charter}
\RequirePackage[letterpaper,margin=2cm,nohead]{geometry}
\RequirePackage{xcolor}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{needspace}
\RequirePackage[unicode]{hyperref}
\input{glyphtounicode}
\pdfgentounicode=1

\definecolor{cvlink}{RGB}{0,102,204}
\hypersetup{
  colorlinks=true,
  urlcolor=cvlink,
  linkcolor=cvlink,
  pdftitle={Xinyang Liao - Academic CV},
  pdfauthor={Xinyang Liao},
  pdfsubject={Trustworthy AI and Safety Evaluation},
  pdflang={en-US}
}

\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\setlength{\topskip}{0pt}
\urlstyle{same}
\raggedright

\titleformat{\section}{\fontsize{12}{14}\selectfont\bfseries}{}{0pt}{}[\vspace{1pt}\titlerule]
\titlespacing*{\section}{0pt}{8.5pt}{5pt}
\setlist[itemize]{leftmargin=10pt,label=\textbullet,topsep=2pt,itemsep=0pt,parsep=0pt,partopsep=0pt}

\newcommand{\cvsection}[1]{%
  \Needspace{4\baselineskip}%
  \section{#1}%
}

\newcommand{\cventry}[2]{%
  \Needspace{3\baselineskip}%
  \noindent\begin{tabularx}{\textwidth}[t]{@{}>{\raggedright\arraybackslash}X@{\hspace{1em}}r@{}}%
    #1 & #2\\%
  \end{tabularx}\par%
}

\newcommand{\cvsep}{\enspace\textbar\enspace}
\newcommand{\cvheader}[2]{%
  {\centering
    {\fontsize{25}{25}\selectfont #1\par}%
    \vspace{5pt}%
    {#2\par}%
  }%
  \vspace{2pt}%
}

\newcounter{publication}
\newcommand{\publication}[3]{%
  \Needspace{5\baselineskip}%
  \stepcounter{publication}%
  \arabic{publication}.\ #1. \textquotedbl\textit{#2}\textquotedbl\ (#3).\par%
}
