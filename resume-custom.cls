\ProvidesClass{resume-custom}
\LoadClass{article}
\usepackage[T1]{fontenc}

\usepackage{libertinus}
\usepackage[hidelinks]{hyperref}
\usepackage{fancyhdr}
\usepackage{geometry}
\usepackage[inline,shortlabels]{enumitem}
\usepackage{xparse}
\usepackage{titlesec}

\geometry{a4paper, margin=15mm}
\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt}

\newcommand{\namesection}[1]{
    \centering{}
    \huge
        \begin{center}
            \textbf{#1}
        \end{center}
    \normalsize
}

\setlist[itemize]{itemsep=0mm, parsep=0pt, topsep=2pt, partopsep=0pt}
\titlespacing*{\subsection}{0pt}{0pt}{0pt}
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}
\titleformat{\section}{\large\bfseries\raggedright}{\thesection}{0em}{}
\titleformat{\subsection}{\normalsize\bfseries\raggedright}{\thesubsection}{0em}{}
\titleformat{\subsubsection}{\normalsize\bfseries\raggedright}{\thesubsubsection}{0em}{}

\newcommand{\company}[2] {
    \subsection*{#1 - {\small #2}} % #1 Company name, #2 location
}

\newcommand{\job}[3]{
    \subsubsection*{\hspace{1em}#1 | #2 - #3} % #1 Job title, #2 Start date, #3 end date
}

\newcommand{\certification}[2]{
    \item{#1 | #2}\\ % #1 name, #2 month/year of certification
}

\newcommand{\talk}[4]{
    \item{\href{#2}{#1} - #3 | #4}\\ % #1 title, #2 conference, #3 date
}

\newcommand{\project}[3]{
    \item{\href{#2}{#1} - #3}\\ % #1 title, #2 conference, #3 date
}

\NewDocumentCommand\bullets{>{\SplitList{;}}m} {
    \begin{itemize}[itemsep=0mm, parsep=0pt]
        \ProcessList{#1}{ \insertitem }
    \end{itemize}
}

\newcommand\insertitem[1]{\item #1}

\usepackage{titlesec}
\titlespacing*{\section}{0pt}{0pt}{0pt}
\titlespacing*{\subsection}{0pt}{0pt}{0pt}
