\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2021/06/14]

\newif\if@draft\@draftfalse
\DeclareOption{a4paper}{\PassOptionsToClass{a4paper}{amsart}}
\DeclareOption{draft}{\@drafttrue\PassOptionsToClass{draft}{amsart}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
\ExecuteOptions{a4paper}
\ProcessOptions\relax

\LoadClass{amsart}

\if@draft
  \newcommand{\addbibresource}[1]{}
  \newcommand{\printbibliography}{}
\else
  \RequirePackage[style=alphabetic,useprefix=true]{biblatex}
\fi


\RequirePackage{fontspec}
\RequirePackage{unicode-math}

\RequirePackage{enumitem}
\RequirePackage{mathpartir}
\RequirePackage{mathtools}
\RequirePackage{tikz-cd}
\RequirePackage{cleveref}

\RequirePackage{macros}


\setlist[description]{labelindent=\parindent}
\setenumerate[1]{label=(\alph*)}
\setenumerate[2]{label=(\roman*)}

\theoremstyle{plain}
\newtheorem{theorem}{Theorem}[section]
\newtheorem*{theorem*}{Theorem}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem*{proposition*}{Proposition}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem*{lemma*}{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{corollary*}{Corollary}

\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem*{definition*}{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem*{example*}{Example}
\newtheorem{examples}[theorem]{Examples}
\newtheorem*{examples*}{Examples}
\newtheorem{remark}[theorem]{Remark}
\newtheorem*{remark*}{Remark}
