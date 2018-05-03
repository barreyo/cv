
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_doc}[29/04/2018 Custom CV format]

\LoadClass{article}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{hyperref}
\RequirePackage{cleveref}
\RequirePackage{titlesec}
\RequirePackage[a4paper, total={6.2in, 9.5in}]{geometry}
\RequirePackage{enumitem}

% Adjust vertical itemize spacing
\setlist{nolistsep}
\setlist[1]{itemsep=-3pt}

\newcommand\myshade{85}
\colorlet{mylinkcolor}{violet}
\colorlet{myurlcolor}{Aquamarine}

\hypersetup{
  linkcolor  = mylinkcolor!\myshade!black,
  urlcolor   = myurlcolor!\myshade!black,
  colorlinks = true,
}

\pagenumbering{gobble}

\setlength{\parindent}{0pt}

\titleformat{\title}
  {\large\scshape\raggedright\bf\sffamily}
  {}{0em}
  {}
  [\titlerule]

\titleformat{\section}
  {\large\scshape\raggedright\bf\sffamily}
  {}{0em}
  {}
  [\titlerule]

\titleformat{\subsection}
  {\normalsize\scshape\raggedright\sffamily}
  {}{0em}
  {}

\titlespacing*{\section} {0pt}{12pt}{6pt}

\newcommand{\datedsection}[2]{%
  \section[#1]{\textbf{\sffamily\small#1 \hfill #2}}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{\textbf{\sffamily#1 \hfill #2}}%
}
