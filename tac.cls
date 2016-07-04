%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tac.cls for use by TAC authors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\typeout{ Document Class `tac' <2012-09-22>, for use by TAC authors}

\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\ExecuteOptions{letterpaper,12pt,twoside,onecolumn,final}
\ProcessOptions
\usepackage{xspace}

\def\makeother#1{\catcode`#1=12}
{\catcode`\^^M=12 \endlinechar=-1 %
   \gdef\xcomment#1^^M{\def\test{#1}
       \ifx\test\endcomment \let\next=\endgroup
       \else \let\next=\xcomment \fi
    \next}
}
\def\comment{\begingroup
   \let\do=\makeother \dospecials
   \endlinechar`\^^M \catcode`\^^M=12 \xcomment }
{\escapechar=-1 \xdef\endcomment{\string\\endcomment}
}


\lineskip 1pt
\normallineskip 1pt
\def\baselinestretch{1}

\def\@normalsize{\@setsize\normalsize{14.5pt}\xiipt\@xiipt
\abovedisplayskip 12\p@ plus3\p@ minus7\p@
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  \z@ plus3\p@
\belowdisplayshortskip  6.5\p@ plus3.5\p@ minus3\p@
\let\@listi\@listI}

\def\small{\@setsize\small{13.6pt}\xipt\@xipt
\abovedisplayskip 11\p@ plus3\p@ minus6\p@
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  \z@ plus3\p@
\belowdisplayshortskip  6.5\p@ plus3.5\p@ minus3\p@
\def\@listi{\leftmargin\leftmargini
 \parsep 4.5\p@ plus2\p@ minus\p@ \itemsep \parsep
            \topsep 9\p@ plus3\p@ minus5\p@}}

\def\footnotesize{\@setsize\footnotesize{12pt}\xpt\@xpt
\abovedisplayskip 10\p@ plus2\p@ minus5\p@
\belowdisplayskip \abovedisplayskip
\abovedisplayshortskip  \z@ plus3\p@
\belowdisplayshortskip  6\p@ plus3\p@ minus3\p@
\def\@listi{\leftmargin\leftmargini
\topsep 6\p@ plus2\p@ minus2\p@\parsep 3\p@ plus2\p@ minus\p@
\itemsep \parsep}}

\def\scriptsize{\@setsize\scriptsize{9.5pt}\viiipt\@viiipt}
\def\tiny{\@setsize\tiny{7pt}\vipt\@vipt}
\def\large{\@setsize\large{18pt}\xivpt\@xivpt}
\def\Large{\@setsize\Large{22pt}\xviipt\@xviipt}
\def\LARGE{\@setsize\LARGE{25pt}\xxpt\@xxpt}
\def\huge{\@setsize\huge{30pt}\xxvpt\@xxvpt}
\let\Huge=\huge

\let\normalsize=\@normalsize
\normalsize

\marginparsep 10pt

\topmargin 0pt

\headheight 12pt
\headsep 15pt
\topskip = 0pt

\footskip 20pt

\textheight = 8.5in
\textwidth 6.3in
\footnotesep 8.4pt

\skip\footins 10.8pt plus 4pt minus 2pt

\floatsep 14pt plus 2pt minus 4pt

\textfloatsep 20pt plus 2pt minus 4pt

\intextsep 14pt plus 4pt minus 4pt

\newdimen\@maxsep
\@maxsep 20pt

\dblfloatsep 14pt plus 2pt minus 4pt

\dbltextfloatsep 20pt plus 2pt minus 4pt

\newdimen\@dblmaxsep
\@dblmaxsep 20pt

\@fptop 0pt plus 1fil

\@fpsep 10pt plus 2fil
\@fpbot 0pt plus 1fil

\@dblfptop 0pt plus 1fil

\@dblfpsep 10pt plus 2fil% Space between floats on float page.
\@dblfpbot 0pt plus 1fil

\marginparpush 7pt

\parskip 0pt plus 1pt

\parindent 1.5em

\partopsep 3pt plus 2pt minus 2pt

\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

\@beginparpenalty -\@lowpenalty

\@endparpenalty   -\@lowpenalty

\@itempenalty     -\@lowpenalty


\lefthyphenmin=2 \righthyphenmin=3 % disallow x- or -xx breaks

\def\section{\@startsection {section}{1}{\z@}{-4ex plus -1ex minus
-.2ex}{1.75ex plus .2ex}{\large}}
\def\subsection{\@startsection{subsection}{2}{\z@}{-1.5ex plus -1ex
minus  -.2ex}{-0.3em plus -0.1em minus
-.1em}{\normalfont\normalsize\scshape}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-1.25ex plus
-1ex minus-.2ex}{-0.3em plus -.1em minus -.1em}%
{\normalfont\normalsize\scshape}}
\def\paragraph{\@startsection
     {paragraph}{4}{\z@}{3.25ex plus1ex minus.2ex}{-1em}{\reset@font
     \normalsize\bf}}
\def\subparagraph{\@startsection
     {subparagraph}{4}{\parindent}{3.25ex plus1ex minus
     .2ex}{-1em}{\reset@font\normalsize\bf}}

\setcounter{secnumdepth}{3}

\def\appendix{\par
  \setcounter{section}{0}
  \setcounter{subsection}{0}
  \def\thesection{\Alph{section}}}

\leftmargini 2.5em
\leftmarginii 2.2em
\leftmarginiii 1.87em
\leftmarginiv 1.7em
\leftmarginv 1em
\leftmarginvi 1em

\leftmargin\leftmargini
\labelsep .5em
\labelwidth\leftmargini\advance\labelwidth-\labelsep

\def\@listI{\leftmargin\leftmargini \parsep 5\p@ plus2.5\p@ minus\p@
\topsep 10\p@ plus4\p@ minus6\p@
\itemsep 5\p@ plus2.5\p@ minus\p@}

\let\@listi\@listI
\@listi

\def\@listii{\leftmargin\leftmarginii
   \labelwidth\leftmarginii\advance\labelwidth-\labelsep
   \topsep 5\p@ plus2.5\p@ minus\p@
   \parsep 2.5\p@ plus\p@ minus\p@
   \itemsep \parsep}

\def\@listiii{\leftmargin\leftmarginiii
    \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
    \topsep 2.5\p@ plus\p@ minus\p@
    \parsep \z@ \partopsep \p@ plus\z@ minus\p@
    \itemsep \topsep}

\def\@listiv{\leftmargin\leftmarginiv
     \labelwidth\leftmarginiv\advance\labelwidth-\labelsep}

\def\@listv{\leftmargin\leftmarginv
     \labelwidth\leftmarginv\advance\labelwidth-\labelsep}

\def\@listvi{\leftmargin\leftmarginvi
     \labelwidth\leftmarginvi\advance\labelwidth-\labelsep}


 \def\labelenumi{\theenumi.}
\def\theenumi{\arabic{enumi}}
\def\labelenumii{(\theenumii)}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}
\def\labelenumiii{\theenumiii.}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{\theenumiv.}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}

\def\labelitemi{$\bullet$}
\def\labelitemii{\textbf{--}}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}

\def\verse{\let\\=\@centercr
 \list{}{\itemsep\z@ \itemindent -1.5em\listparindent \itemindent
 \rightmargin\leftmargin\advance\leftmargin 1.5em}\item[]}
\let\endverse\endlist
\def\quotation{\list{}{\listparindent 1.5em
 \itemindent\listparindent
 \rightmargin\leftmargin \parsep \z@ plus 1\p@}\item[]}
\let\endquotation=\endlist
\def\quote{\list{}{\rightmargin\leftmargin}\item[]}
\let\endquote=\endlist

\def\descriptionlabel#1{\hspace\labelsep\normalfont\bfseries #1}
\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
 \let\makelabel\descriptionlabel}}
           {\endlist}
\let\enddescription\endlist

\def\theequation{\arabic{equation}}


\def\titlepage{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \else \newpage \fi \thispagestyle{empty}\c@page\z@}
\def\endtitlepage{\if@restonecol\twocolumn \else \newpage \fi}

\arraycolsep 5\p@ \tabcolsep 6\p@ \arrayrulewidth .4\p@ \doublerulesep 2\p@
\tabbingsep \labelsep

\skip\@mpfootins = \skip\footins
\fboxsep = 3\p@ \fboxrule = .4\p@

\newcounter{part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

\def\thepart{\Roman{part}}
\def\thesection {\arabic{section}}
\def\thesubsection {\thesection.\arabic{subsection}}
\def\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\def\theparagraph {\thesubsubsection.\arabic{paragraph}}
\def\thesubparagraph {\theparagraph.\arabic{subparagraph}}

\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
% changed to 1 from 3 : 01-3-24
\setcounter{tocdepth}{1}

\def\tableofcontents{\section*{Contents\@mkboth{CONTENTS}{CONTENTS}}
 \@starttoc{toc}}
\def\l@part#1#2{\addpenalty{\@secpenalty}
 \addvspace{2.25em plus 1\p@} \begingroup
 \@tempdima 3em \parindent \z@ \rightskip \@pnumwidth \parfillskip
-\@pnumwidth
 {\large \textbf \leavevmode #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
 \nobreak \endgroup}
\def\l@section#1#2{\addpenalty{\@secpenalty} \addvspace{0em}%{1.0em plus 1\p@} mod 00-4-15
\@tempdima 1.5em \begingroup
 \parindent \z@ \rightskip \@pnumwidth
 \parfillskip -\@pnumwidth
 \textbf \leavevmode \advance\leftskip\@tempdima \hskip -\leftskip #1\nobreak\hfil
\nobreak\hbox to\@pnumwidth{\hss #2}\par
 \endgroup}

\def\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\def\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\def\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\def\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\def\listoffigures{\section*{List of Figures\@mkboth
 {LIST OF FIGURES}{LIST OF FIGURES}}\@starttoc{lof}}
\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\def\listoftables{\section*{List of Tables\@mkboth
 {LIST OF TABLES}{LIST OF TABLES}}\@starttoc{lot}}
\let\l@table\l@figure


\long\def\@makefntext#1{\parindent 1em\noindent
 \hbox to 1.8em{\hss$^{\@thefnmark}$}#1}

\setcounter{topnumber}{2}
\def\topfraction{.7}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}

\long\def\@makecaption#1#2{
 \vskip 10\p@
 \setbox\@tempboxa\hbox{#1: #2}
 \ifdim \wd\@tempboxa >\hsize #1: #2\par \else \hbox
to\hsize{\hfil\box\@tempboxa\hfil}
 \fi}


\newcounter{figure}
\def\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure \thefigure}
\def\figure{\@float{figure}}
\let\endfigure\end@float
\@namedef{figure*}{\@dblfloat{figure}}
\@namedef{endfigure*}{\end@dblfloat}
\newcounter{table}
\def\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{Table \thetable}
\def\table{\@float{table}}
\let\endtable\end@float
\@namedef{table*}{\@dblfloat{table}}
\@namedef{endtable*}{\end@dblfloat}

\pagenumbering{arabic}

  %  \def\@seccntptformat#1{\csname the#1\endcsname.\quad}
  %
  %  \def\@sect#1#2#3#4#5#6[#7]#8{%
  %    \ifnum #2>\c@secnumdepth
  %      \let\@svsec\@empty
  %    \else
  %      \refstepcounter{#1}%
  %        \setbox0=\hbox{#8}
  %        \ifvoid0
  %          \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  %        \else
  %          \protected@edef\@svsec{\@seccntptformat{#1}\relax}%
  %        \fi
  %    \fi
  %    \@tempskipa #5\relax
  %    \ifdim \@tempskipa>\z@
  %      \begingroup
  %        #6{%
  %          \@hangfrom{\hskip #3\relax\@svsec}%
  %            \interlinepenalty \@M #8\@@par}%
  %      \endgroup
  %      \csname #1mark\endcsname{#7}%
  %      \addcontentsline{toc}{#1}{%
  %        \ifnum #2>\c@secnumdepth \else
  %          \protect\numberline{\csname the#1\endcsname}%
  %        \fi
  %        #7}%
  %    \else
  %  %      \@setsectspace{#8}% <== ADDITION
  %      \def\@svsechd{%
  %        #6{\hskip #3\relax
  %        \@svsec #8}%
  %        \csname #1mark\endcsname{#7}%
  %        \addcontentsline{toc}{#1}{%
  %          \ifnum #2>\c@secnumdepth \else
  %            \protect\numberline{\csname the#1\endcsname}%
  %          \fi
  %          #7}}%
  %    \fi
  %    \@xsect{#5}}
\def\@seccntformat#1{\csname the#1\endcsname.\kern.5em}

 % The next four lines allow you to start a theorem by giving credit (or
 % naming it) by a parenthetical note that will set in upright font and
 % enclosed by square brackets.  The syntax is \theorem[...] followed by
 % the statement of the theorem.  If this parenthetical material iteslf
 % contains square brackets, then it must be enclosed in braces.  This is
 % likeliest to occur using \cite[..]{..} in which case the syntax
 % that works is \theorem[{\cite[..]{..}..}], although
 % \theorem[{\cite[..]{..}}..] will also work.  If you do
 % \theorem[\cite{..}] or \theorem[{\cite[..]{..}}] you will _not_ get two
 % pairs of brackets.  Of course, all this works with any theorem like
 % environments and with the latex \begin..\end versions.

\def\@credit[#1]{\expandafter\@@credit\@firstofone#1\@@nil}
\def\@@credit{\@ifnextchar\cite{\@@@credit}{\@@@@credit}}
\def\@@@credit#1\@@nil{{\rm#1}}
\def\@@@@credit#1\@@nil{{\rm[#1]}}

\def\state#1{\subsection{\sc#1}%
\begingroup\em\@ifnextchar[{\@credit}{}}
 \def\staterm#1{\subsection{\sc#1}
\begingroup\@ifnextchar[{\@credit}{}}
\def\endstate{\endgroup\par\addvspace{\medskipamount}}


\def\thirdleveltheorems{%
\def\state##1{\subsubsection{\sc##1}%
\begingroup\em\@ifnextchar[{\@credit}{}}
 \def\staterm##1{\subsubsection{\sc##1}
\begingroup\@ifnextchar[{\@credit}{}}}


\def\firstleveltheorems{%
\def\section{\@startsection {section}{1}{\z@}{-1.5ex plus -1ex
minus  -.2ex}{-1em plus -0.4em minus
-.4em}{\normalfont\normalsize\scshape}}
\def\state##1{\section{\sc##1}%
\begingroup\em\@ifnextchar[{\@credit}{}}
 \def\staterm##1{\subsubsection{\sc##1}
\begingroup\@ifnextchar[{\@credit}{}}}

\def\substate#1{\subsubsection*{\textit{#1}}}

\def\theoremstyle#1{\def\next{#1}\def\nextt{plain}
\ifx\next\nextt\relax\let\@state\state\else\let\@state\staterm\fi}
\def\newtheorem#1{\@ifnextchar[{\@newthm{#1}}{\@newthm{#1}[]}}
\def\newtheoremrm#1{\@ifnextchar[{\@newthmrm{#1}}{\@newthmrm{#1}[]}}
\def\@newthm#1[#2]#3{\@ifnextchar[{\@@newthm{#1}[#2]{#3}}{\@@newthm{#1}[#2]{#3}[ ]}}
\def\@newthmrm#1[#2]#3{\@ifnextchar[{\@@newthmrm{#1}[#2]{#3}}{\@@newthmrm{#1}[#2]{#3}[ ]}}

\def\@@newthm#1[#2]#3[#4]{\expandafter\def\csname #1\endcsname{%
\state{#3.}\@ifnextchar[{\@credit}{}}%
 \expandafter\let\csname
     end#1\endcsname\endstate}

\def\@@newthmrm#1[#2]#3[#4]{\expandafter\def\csname #1\endcsname{%
\staterm{#3.}\@ifnextchar[{\@credit}{}}%
 \expandafter\let\csname
     end#1\endcsname\endstate}

\def\Pr@@f{\subsubsection*{\textsc{Proof.}}}
\def\pr@@f[#1]{\subsubsection*{{\textsc{Proof}} #1}}
\def\proof{\@ifnextchar[{\pr@@f}{\Pr@@f}}

 % \def\proofof[#1]{\subsubsection*{{\textsc{Proof of #1.}}}}


% added 98-11-8 - based on P. Taylor macro
\def\pushright#1{{%        set up
   \parfillskip=0pt            % so \par doesnt push \square to left
   \widowpenalty=10000         % so we dont break the page before \square
   \displaywidowpenalty=10000  % ditto
   \finalhyphendemerits=0      % TeXbook exercise 14.32
  %
  %                 horizontal
   \leavevmode                 % \nobreak means lines not pages
   \unskip                     % remove previous space or glue
   \nobreak                    % don't break lines
   \hfil                       % ragged right if we spill over
   \penalty50                  % discouragement to do so
   \hskip.2em                  % ensure some space
   \null                       % anchor following \hfill
   \hfill                      % push \square to right
   {#1}                        % the end-of-proof mark (or whatever)
  %
  %                   vertical
   \par}}                      % build paragraph


\newbox\@endproofbox
\setbox\@endproofbox\hbox{\vrule width5pt height 5pt depth 0pt}
\def\endproofbox{\copy\@endproofbox}
\def\endproof{\pushright{\endproofbox}%
\penalty-700 \par\addvspace{\medskipamount}}


\newtheorem{theorem}{Theorem}
\newtheorem{proposition}{Proposition}
\newtheorem{corollary}{Corollary}
\newtheorem{lemma}{Lemma}
\newtheorem{definition}{Definition}
\newtheorem{scholium}{Scholium}
\newtheorem{assumption}{Assumption}

\newtheoremrm{remark}{Remark}
\newtheoremrm{example}{Example}
\newtheoremrm{remarks}{Remarks}
\newtheoremrm{examples}{Examples}
\newtheoremrm{notation}{Notation}



% The following are to produce the page one headers and footnotes
% Note that there must be two passes to get the page numbers correct
% AMS classification, thanks, keywords and revision dates are optional.
% The others are required.

\newif\ifthanks
\newif\ifkeywords
\newif\ifamsclass
\newif\ifdedication
\newif\ifeaddress


\def\@title{\relax}
\def\@author{\relax}
\def\@cauthor{\relax}
\def\@address{\relax}
\def\@eaddress{\relax}
\def\@copryear{\relax}
\def\@thanks{\relax}
\def\@keywords{\relax}
\def\@amsclass{\relax}
\def\@runningoddhead{\relax}
\def\@runningevenhead{\relax}
\def\@dedication{\relax}

\def\tacyear#1{\relax}
\def\copyrightyear#1{\relax}
\def\received#1{\relax}
\def\revised#1{\relax}
\def\published#1{\relax}
\def\keywords#1{\relax}
\def\amsclass#1{\relax}
\let\subjclass\amsclass
\def\startpage#1{\relax}
\def\thanks#1{\relax}
\def\transmittedby#1{\relax}
\def\cholder#1{\relax}
\def\originally#1{\relax}
\def\republished#1{\relax}

\def\Uppercase#1{\def\i{I}\def\j{J}\uppercase{#1}}
\def\title#1{\def\@title{{\let\cr=\\ \def\\{\cr[1\p@]}
\large\Uppercase{#1}}}}
\def\dedication#1{\def\@dedication{{\let\cr=\\ \def\\{\protect\cr[1\p@]}
\large\textit{#1}}}\dedicationtrue}

% for multiple emails
\def\CR{\\\phantom{\rm Email: }}

\long\def\address#1{\global\def\@address{{\par\addvspace{12\p@}
\baselineskip11.5pt\parindent0pt
\let\newline=\par
\noindent\textit{#1} \\
\ifeaddress\par Email: \texttt \@eaddress\fi }}}
\def\eaddress#1{\def\@eaddress{#1}\eaddresstrue}

\def\author#1{\def\@author{\let\cut\\\Uppercase{#1}}%
\let\cut=,\def\@cauthor{#1}}
\def\cauthor#1{\def\@cauthor{#1}}
\def\vol#1{\def\@vol{{#1}}}
\def\num#1{\def\@num{#1}}
\def\tacyear#1{\def\@yer{#1}}
\def\copyrightyear#1{\def\@copryear{{#1}}}
\def\keywords#1{\def\@keywords{Key words and phrases: #1.}\keywordstrue}
\def\amsclass#1{\def\@amsclass{2010 Mathematics Subject
Classification: #1.}\amsclasstrue}

\long\def\thanks#1{\long\def\@thanks{#1}\thankstrue}

\def\ps@tac{\let\@mkboth\markboth
\def\@oddfoot{}
\let\@evenfoot\@oddfoot
\def\@evenhead{\hfil\thepage}
\let\@oddhead\@evenhead}
\pagestyle{tac}

\def\ps@taci{\let\@mkboth\markboth
\def\@oddfoot{\hfil\thepage\hfil}
\let\@evenfoot\@oddfoot
\def\@oddhead{\hfil}
\let\@evenhead\@oddhead}


\def\maketitle{\par
 \begingroup
 \def\thefootnote{\fnsymbol{footnote}}
 \def\@makefnmark{\hbox
 to\z@{$^{\@thefnmark}$\hss}}
 \global\@topnum\z@ \@maketitle \thispagestyle{taci}
 \endgroup
 \setcounter{footnote}{0}
 \let\@maketitle\relax
{\def\thempfn{}
\ifthanks\footnotetext{\@thanks}\fi
\ifamsclass\footnotetext{\@amsclass}\fi
\ifkeywords\footnotetext{\@keywords}\fi
\def\relaxp[##1]{\relax}
\def\footnotemark{\@ifnextchar[{\relaxp}{\relax}}
\footnotetext{\copyright\ \@cauthor,\ \@copryear.
Permission to copy for private use granted.}
}}

\def\@maketitle{\newpage\vspace*{12\p@}
{\topsep\z@ \partopsep\z@
\begin{center}
\ifdedication
   \@title\\[12\p@]
   \@dedication\\[18\p@]
\else
   \@title\\[14\p@]
\fi
\@author
\end{center}}
\vskip24\p@}

\def\abstractname{Abstract}
\def\abstract{\bgroup\par
\footnotesize\begin{list}{}{\rightmargin=13mm \leftmargin=13mm
\parsep5\p@ \listparindent=\z@ \topsep=\z@\partopsep=\z@}
\item\leavevmode% \hbox to 1em{\hss} deleted indent 00-1-20
{\textsc{\abstractname.}}\hskip 1em}
\def\endabstract{\end{list}\par\egroup}



%Note that this is a redefinition.
%It adds the authors' address

\AtEndDocument{%
% mod 99/12/4 - suppress breaks, label inside
\nopagebreak[4]%
\@address
\label{lastpage}}

\def\thebibliography#1{\section*{References\@mkboth
 {REFERENCES}{REFERENCES}}\list
 {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
 \advance\leftmargin\labelsep
 \usecounter{enumi}}
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy\clubpenalty4000\widowpenalty4000
 \sfcode`\.=1000\relax}
\let\endthebibliography=\endlist


% Below are the codes for the two reference styles.  They can be called by
% \begin{references} ... \end{references} and \begin{references*} ...
% \end{references*} .  In addition, the first can be called by \references
% ... \endreferences .

\newdimen\twlrm
\newdimen\refindent \refindent 8mm
\def\references{%
\section*{References}
\sloppy\footnotesize
\begin{list}{}
{\leftmargin\refindent \itemindent-\refindent \itemsep2pt \topsep0pt}}
\def\endreferences{\end{list}}

\newcounter {reflister}
\expandafter\def\csname references*\endcsname {%
\section*{References}
\sloppy\footnotesize
\begin{list}{{\textrm[\arabic{reflister}]}}{\usecounter{reflister}}
{\leftmargin\refindent \itemindent-\refindent \itemsep2pt \topsep0pt}}
\expandafter\let\csname endreferences*\endcsname=\endreferences


% Modification of the `plain' definition, taken over by latex.  Note the
% failure to parametrize the definition, one of the many such that testify
% to Knuth's conception of plain as a provisional package.

\def\footnoterule{%\kern-3\p@
  \hrule width 1truein \kern 2.6\p@} % the \hrule is .4\p@ high

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

\DeclareFontFamily{OT1}{pzc}{}
\DeclareFontShape{OT1}{pzc}{m}{it}%
     {<-> s * [1.15] pzcmi7t}{}
\DeclareMathAlphabet{\mathzc}{OT1}{pzc}{m}{it}
\DeclareSymbolFont{script}{OT1}{pzc}{m}{it}

\DeclareMathAlphabet{\mathcmssbx}{OT1}{cmss}{bx}{n}

\def\@mathopdef[#1]#2{\expandafter\def\csname#1\endcsname
{\ensuremath{\mathop{\rm{}#2}\nolimits}\xspace}}
\def\@mathopsldef[#1]#2{\expandafter\def\csname#1\endcsname
 {{\ensuremath\mathop{\sl#2}}\xspace}}
\def\@mathbfdef[#1]#2{\expandafter\def\csname#1\endcsname
 {{\rm\bf#2}\xspace}}
\def\@mathrmdef[#1]#2{\expandafter\def\csname#1\endcsname
{{\ensuremath{\rm#2}}\xspace}}
\def\@mathsfdef[#1]#2{\expandafter\def\csname#1\endcsname
{{\ensuremath{\sf#2}}\xspace}}
\def\@mathfkdef[#1]#2{\expandafter\def\csname#1\endcsname{\frak{#2}}}
\def\@mathzcdef[#1]#2{\expandafter\def\csname#1\endcsname
{{\ensuremath{\mathzc{#2}}}\xspace}}
\def\@mathcaldef[#1]#2{\expandafter\def\csname#1\endcsname
{{\ensuremath{\mathcal{#2}}}\xspace}}
\def\@mathssbxdef[#1]#2{\expandafter\def\csname#1\endcsname
{{\ensuremath{\mathcmssbx{#2}}}\xspace}}
\def\@mathrsfsdef[#1]#2{\expandafter\def\csname#1\endcsname
{{\ensuremath{\mathscr{#2}}}\xspace}}

\def\mathopdef{\@dblarg\@mathopdef}
\def\mathsfdef{\@dblarg\@mathsfdef}
\def\mathopsldef{\@dblarg\@mathopsldef}
\def\mathbfdef{\@dblarg\@mathbfdef}
\def\mathrmdef{\@dblarg\@mathrmdef}
\def\mathfkdef{\@dblarg\@mathfkdef}
\def\mathzcdef{\@dblarg\@mathzcdef}
\def\mathcaldef{\@dblarg\@mathcaldef}
\def\mathssbxdef{\@dblarg\@mathssbxdef}
\def\mathrsfsdef{\@dblarg\@mathrsfsdef}


\def\mld#1$${\null\,\vcenter\bgroup\def\\{\cr&}\openup9pt\m@th
\ialign\bgroup\strut\hfil$\displaystyle{##}$%
&$\displaystyle{{}##}$\hfil\crcr #1
\crcr\egroup\egroup\,$$}
\def\mldepf#1$${\null\,\vbox\bgroup\def\\{\cr&}\openup9pt\m@th
\ialign\bgroup\strut\hfil$\displaystyle{##}$%
&$\displaystyle{{}##}$\hfil\crcr #1
\crcr\egroup\egroup\,\eqno{\endproofbox}$$}
\let\emld\relax % for compatibility with old code

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Here is a typical usage of \mld (multi-line display)          %%
%%                                                               %%
%% The pattern is                                                %%
%% $$\mld formula 1 & formula 2 \\                               %%
%%                    formula 3 \\                               %%
%%                    ..........\\                               %%
%%                    formula n $$                               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareFontShape{OMX}{cmex}{m}{n}{%
      <-8>sfixed * cmex7
      <8> cmex8
      <9> cmex9
      <10> <10.95> <12> <14.4> <17.28> <20.74> <24.88>cmex10
       }{}
\DeclareSymbolFont{largesymbols}{OMX}{cmex}{m}{n}
\newdimen\big@size
\addto@hook\every@math@size{\setbox\z@\vbox{\hbox{$($}\kern\z@}%
   \global\big@size 1.2\ht\z@}
\def\bBigg@#1#2{%
   {\hbox{$\left#2\vcenter to#1\big@size{}\right.\n@space$}}}
\def\big{\bBigg@\@ne}
\def\Big{\bBigg@{1.5}}
\def\bigg{\bBigg@\tw@}
\def\Bigg{\bBigg@{2.5}}

 % Here is a third reference style.  An alternative to \thebibliography, it
 % is intended to be used as follows.
 %
 % \begin{refs}
 %
 % \bibitem[Author (year)]{A} Full citation
 %
 % and then \cite{A} will give [Author (year)]


\def\refs{\section*{References\@mkboth{REFERENCES}
{REFERENCES}}\def\@biblabel##1{\relax}\frenchspacing\list{}{
 \leftmargin2em \itemindent-2em}
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy\clubpenalty4000\widowpenalty4000
 \sfcode`\.=1000\relax}
\let\endrefs=\endlist

\def\aref{\section*{Reference\@mkboth{REFERENCE}
{REFERENCE}}\def\@biblabel##1{\relax}\frenchspacing\list{}{
 \leftmargin2em \itemindent-2em}
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy\clubpenalty4000\widowpenalty4000
 \sfcode`\.=1000\relax}
\let\endaref=\endlist

\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m\ }%
     \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
       {\csname b@\@citeb\endcsname}}}{#1}}
\def\@citex[#1]#2{\leavevmode
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m\ }%
     \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\hbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
       {{\csname b@\@citeb\endcsname}}}}{#1}}

\def\edot{\vrule height .5pt width .5pt depth 0pt\kern1.5pt}
\def\eat{\raise1.4pt\hbox{\emph{\footnotesize a}}\llap 0\kern.5pt}


{\catcode`\/=\active\gdef/{\char47\penalty-100 }
 \catcode`\.=\active \gdef.{\char46\penalty-100 }
 \catcode`\_=\active \gdef_{\char95\penalty-100 }
}
\def\url{%
   \bgroup
       \catcode`\/=\active
       \catcode`\.=\active
       \catcode`\_=\active
       \def~{$\sim$}\@url}
\def\@url#1{{\tt#1}\egroup}

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}


