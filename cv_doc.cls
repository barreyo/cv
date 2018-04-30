
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_doc}[29/04/2018 Custom CV format]

\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage[a4paper, total={6in, 9in}]{geometry}
\pagenumbering{gobble}

\setlength{\parindent}{0pt}

\titleformat{\section}
  {\large\scshape\raggedright\bf\sffamily}
  {}{0em}
  {}
  [\titlerule]

\titleformat{\subsection}
  {\normalsize\scshape\raggedright\sffamily}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{%
  \section[#1]{\textbf{\sffamily\small#1 \hfill #2}}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{\textbf{\sffamily#1 \hfill #2}}%
}
