\ProvidesClass{resume-custom}
\LoadClass{article}

\usepackage{libertinus}
\usepackage[hidelinks]{hyperref}
\usepackage{fancyhdr}
\usepackage{geometry}
\usepackage[inline,shortlabels]{enumitem}
\usepackage{xparse}

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

\newcommand{\job}[5]{
    \subsection*{#1 | #2}
    #3 - #4 | #5
}

\newcommand{\course}[2]{
    \bulletsOneLine{#1 | #2}\\
}

\NewDocumentCommand\bullets{>{\SplitList{;}}m} {
    \begin{itemize}[itemsep=0mm, parsep=0pt]
        \ProcessList{#1}{ \insertitem }
    \end{itemize}
}

\NewDocumentCommand\bulletsOneLine{>{\SplitList{;}}m} {
    \begin{itemize*}[labelsep=0cm, leftmargin=*]
        \ProcessList{#1}{ \insertitem }
    \end{itemize*}
}

\newcommand\insertitem[1]{\item #1}

\usepackage{titlesec}
\titlespacing*{\section}{0pt}{0pt}{0pt}
\titlespacing*{\subsection}{0pt}{0pt}{0pt}
