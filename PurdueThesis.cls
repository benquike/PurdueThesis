\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{PurdueThesis}[2021-02-05 beta Purdue University thesis document class]






























































                                               































% REFERENCES
%   [PU]
%     I forget what this is off-hand.
%   [TCMOS17]
%     The Chicago Manual of  Style Online,
%     17th edition.
%     https://www.chicagomanualofstyle.org/home.html,
%     retrieved on 2020-02-29.
%   [TEMPLATE1]
%     Template-One.docx Microsoft Word thesis template,
%     Thesis & Dissertation Office,
%     The Graduate School,
%     Purdue University.
%     https://www.purdue.edu/gradschool/documents/thesis/Template-One.docx,
%     retrieved on 2020-08-25.
%   [TEMPLATE2]
%     Template-Two.docx Microsoft Word thesis template,
%     Thesis & Dissertation Office,
%     The Graduate School,
%     Purdue University.
%     https://www.purdue.edu/gradschool/documents/thesis/Template-Two.docx,
%     retrieved on 2020-08-25.
%   [TEMPLATE3]
%     Template-Three.docx Microsoft Word thesis template,
%     Thesis & Dissertation Office,
%     The Graduate School,
%     Purdue University.
%     https://www.purdue.edu/gradschool/documents/thesis/Template-Three.docx,
%     retrieved on 2020-08-25.
%   [WEB9]
%     Webster's Ninth New Collegiate Dictionary.
\LoadClass[12pt]{report}[2014/09/29]
\def\contentsname{TABLE OF CONTENTS}
\newlength{\ZZlengtha}
% The amsmath package is automatically loaded by the mathtools package.
% From
% http://ctan.mirrors.hoobly.com/macros/latex/required/amscls/doc/amsthdoc.pdf
%     The amsthm package provides an enhanced version of LATEX’s
%     \newtheoremcommand for defining theorem-like environments.  The
%     enhanced \newtheorem recognizes a\theoremstyle specification (as
%     in Mittelbach’stheorempackage) and has a * form for defining
%     unnumbered environments.  The amsthm package also defines a
%     proof environment that automatically adds a QED symbol at the
%     end.  AMS document classes incorporate the amsthm package, so
%     everything described here applies to them as well.
\usepackage{amsthm}
% The tabularx environment in the abstract needs this.
\usepackage{array}
% For \definecolor{name}{model}{spec}.
% Must be loaded before hyperref package is used with user-defined colors.
\usepackage{xcolor}
\usepackage{setspace}
% Use hyperlinks for cross-references.
%
% Based on information in
% http://ftp.math.purdue.edu/mirrors/ctan.org/macros/latex/contrib/hyperref/doc/manual.pdf
%     Make sure [hyperref -mark] comes last of your loaded packages,
%     to give it a fighting chance of not being over-written, since
%     its job is to redefine many LATEX commands.
%
% From
% http://mirrors.ibiblio.org/CTAN/macros/latex/contrib/biblatex/doc/biblatex.pdf
%     When using the hyperref package, it is preferable to load it
%     after biblatex.
%
% This must be loaded before the breakurl package.
%
% The options and what they do:
%     OPTION            DESCRIPTION
%     breaklinks        (default false) Allow links to break across lines by
%                       making links over multiple lines into PDF links to
%                       the same target.
%     colorlinks        (default false) Colors the text of links and anchors
%                       instead of putting ugly colored boxes around them.
%                       See anchorcolor, citecolor, filecolor, linkcolor,
%                       menucolor, and runcolor for color of links.
%     hypertexnames     (default true) Use guessable names for links.  The
%                       hypertexnames=false option makes sure that the link
%                       to the, for example, second appendix doesn't go to
%                       the second chapter.
%     linktoc           (default section) Make text (section), page number
%                       (page), both (all) , or nothing (none) be link on
%                        TOC, LOF, and LOT.
%     ocgcolorlinks      Use colored links when viewed, but don't print
%                        links in a separate color.  A better implementation
%                        which hasn't the disadvantage to prevent line breaks
%                        is in the ocgx2 package.
%     pdfencoding        What kind of encoding to use for bookmarks and
%                        information directory entries.  ``auto'' uses
%                        PDFDocEncoding or, if necessary, unicode.  ``pdfdoc''
%                        uses PDFDocEncoding.  ``unicode'' uses Unicode.
%     psdextra           Define more short names for PDF string commands.
%
%   I used "Sky blue" for every link color as ok'd by Ashlee Messersmith
% <amiley@purdue.edu> and Anita Sale <aasale@iupui.edu>.  See Figure 2 of
%     https://www.nature.com/articles/nmeth.1618
% Sky blue in RGB is (86/255, 180/255, 233/255) = (0.337, 0.706, 0.914).
%   Sky blue was too light a color.  I'm tried, from that same web page,
% "Blue".  "Blue" was still a little light.
%   Ashlee Messersmith suggested (0.129, 0.298, 0.808).
%   Ashlee Messersmith <amiley@purdue.edu> and Anita Sale <aasale@iupui.edu>
% both approved (0.129, 0.298, 0.808) after seeing it.
%
%   From section 3.5, "Extension Options", of
%     http://ctan.math.washington.edu/tex-archive/macros/latex/contrib/hyperref/doc/manual.pdf
%     OPTION       TYPE   COLOR      DESCRIPTION
%     linkcolor    color  red        Color for normal internal links.
%     anchorcolor  color  black      Color for anchor text.
%                                    Ignored by most drivers.
%     citecolor    color  green      Color for bibliographical citations
%                                    in text.
%     filecolor    color  cyan       Color for URLs which open local files.
%     menucolor    color  red        Color for Acrobat menu items.
%     runcolor     color  filecolor  Color for run links (launch annotations).
%     urlcolor     color  magenta    Color for linked URLs.
%     allcolors    color             Set all color options (without border and
%                                    field options).
%     Note that all color names must be defined before use, following the
%     normal system of the standard LaTeX color package.
%
%   I'm using the color name myblue to avoid any conflicts with any
% built-in LaTeX colors.
\definecolor{myblue}{rgb}{0.129, 0.298, 0.808}
\usepackage[
allcolors     = myblue,
breaklinks    = true,
colorlinks    = true,
hypertexnames = false,
linktoc       = section,
pdfencoding   = auto,
psdextra      = true,
]{hyperref}
% Put URLs in roman font to save space.
\urlstyle{rm}
% ?????
\usepackage[symbol=$\uparrow$]{footnotebackref}
% Let links wrap around line and page breaks.
\usepackage[ocgcolorlinks]{ocgx2}
% Tho Van Le <le39@purdue.edu> wrote on 2018-09-24 at 12:57:
% To: Thesis Help <thesishelp@purdue.edu>
% Subject: Codes to correct the unbreakable URL
% |  Hello Ashlee,
% |  
% |  As mentioned after your presentation at Civil engineering, I am
% |  sending you codes to break url as below. Feel free to use it in the
% |  latex template.
% |  
% |  \usepackage[hyphenbreaks]{breakurl}
% |  \usepackage[hyphens]{url}
% |  \sloppy
% I have not tested this.
% Define
%     toprule[<width>]
%     midrule[<width>]
%     bottomrule[<width>]
% for tables.
% See
%     https://www.ctan.org/pkg/booktabs?lang=en
\usepackage{booktabs}
% Break URLs between lines.
% This must be loaded after the hyperref package.
% xxx
% xxx This causes a
% xxx     Package breakurl Warning: You are using breakurl while processing via pdflatex.
% xxx error.  I'm going to comment it out.
% xxx
% xxx \usepackage{breakurl}
% for DOI links in bibliography
% xxx 
% xxx Trying to load this causes
% xxx     ! LaTeX Error: Command \maketitle already defined.
% xxx                    Or name \end.. illegal, see p.192 of the manual.
% xxx
% xxx \usepackage{doi}
\usepackage{expl3}
\ExplSyntaxOn
\cs_generate_variant:Nn \prop_get:NnNTF {NV}
\cs_generate_variant:Nn \regex_match:nnTF {nV}
\cs_generate_variant:Nn \str_case:nnTF {V}
\def\str_case:Vn#1#2{\str_case:VnTF{#1}{#2}{}{}}
\ExplSyntaxOff
\usepackage[letterpaper,left=1in,top=1.1in,bottom=1in,right=1in]{geometry}

\usepackage{ifthen}
\newcommand{\ifthen}[2]{\ifthenelse{#1}{#2}{}}

\usepackage{ifpdf}
\usepackage{lmodern}
\usepackage{lscape}
\usepackage{ltxtable}
\usepackage{pgffor}
\usepackage{rotating}

% setup listings for source code
\usepackage{listings}
% a walk around for the bug in lstlinebgrd
% https://tex.stackexchange.com/questions/451532/recent-issues-with-lstlinebgrd-package-with-listings-after-the-latters-updates
\makeatletter
\let\old@lstKV@SwitchCases\lstKV@SwitchCases
\def\lstKV@SwitchCases#1#2#3{}
\makeatother
\usepackage{lstlinebgrd}
\makeatletter
\let\lstKV@SwitchCases\old@lstKV@SwitchCases

\lst@Key{numbers}{none}{%
    \def\lst@PlaceNumber{\lst@linebgrd}%
    \lstKV@SwitchCases{#1}%
    {none:\\%
     left:\def\lst@PlaceNumber{\llap{\normalfont
                \lst@numberstyle{\thelstnumber}\kern\lst@numbersep}\lst@linebgrd}\\%
     right:\def\lst@PlaceNumber{\rlap{\normalfont
                \kern\linewidth \kern\lst@numbersep
                \lst@numberstyle{\thelstnumber}}\lst@linebgrd}%
    }{\PackageError{Listings}{Numbers #1 unknown}\@ehc}}
\makeatother

\definecolor{LightCyan}{rgb}{0.88,1,1}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{1.0,1.0,1.0}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\footnotesize\ttfamily,
    breakatwhitespace=false,
    frame=single,
    numbers=left,
    xleftmargin=0em,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2,
    belowskip=1em,
}
\lstset{style=mystyle}


% 2Define
%     o  \num{} to format numbers correctly
%     o  abbreviations for units \m (meter), \kg (kilogram), etc.
%     o  \SI, used to typset quantities with units, e.g., \SI{1.23e9}{\ms}
%     o  'S' column type to align numbers at decimal points
% See the ``Demonstrate numbers and units'' chapter for a quick summary
% and ftp://ftp.dante.de/tex-archive/macros/latex/exptl/siunitx/siunitx.pdf
% for the details of numbers and units in the siunitx package.  The 'S'
% column type is used in all tables where appropriate.
\usepackage{siunitx}
\DeclareBinaryPrefix\kibi{Ki}{10}
\DeclareBinaryPrefix\mebi{Mi}{20}
\DeclareBinaryPrefix\gibi{Gi}{30}
\DeclareBinaryPrefix\tebi{Ti}{40}
\DeclareBinaryPrefix\pebi{Pi}{50}
\DeclareBinaryPrefix\exbi{Ei}{60}
\DeclareBinaryPrefix\zebi{Zi}{70}
\DeclareBinaryPrefix\yobi{Yi}{80}
\DeclareSIUnit \AA      {\SIUnitSymbolAngstrom}               % \angstrom
\DeclareSIUnit \arcmin  {\SIUnitSymbolArcminute}              % \arcminute
\DeclareSIUnit \arcsec  {\SIUnitSymbolArcsecond}              % \arcsecond
\DeclareSIUnit \au      {au}                                  % \astronomicalunit
\DeclareSIUnit \b       {b}                                   % \barn
\DeclareSIUnit \Bq      {Bq}                                  % \becquerel
\DeclareSIUnit \B       {B}                                   % \bel
\DeclareSIUnit \bu      {bu}                                  % bushel
\DeclareSIUnit \cd      {cd}                                  % \candela
\DeclareSIUnit \C       {C}                                   % \coulomb
\DeclareSIUnit \Da      {Da}                                  % \dalton
\DeclareSIUnit \d       {d}                                   % \day
\DeclareSIUnit \ec      {\text{\ensuremath{e}}}               % \elementarychange
\DeclareSIUnit \em      {\text{\ensuremath{m_{\textup{e}}}}}  % \electronmasss
\DeclareSIUnit \ft      {ft}                                  % foot
\DeclareSIUnit \Gy      {Gy}                                  % \Gy
\DeclareSIUnit \H       {H}                                   % \henry
\DeclareSIUnit \ha      {ha}                                  % \hectare
\DeclareSIUnit \h       {h}                                   % \hour
\DeclareSIUnit \hp      {hp}                                  % horsepower
\DeclareSIUnit \in      {in}                                  % inch
\DeclareSIUnit \kat     {kat}                                 % \katal
\DeclareSIUnit \K       {K}                                   % \kelvin
\DeclareSIUnit \kn      {kn}                                  % \knot
\DeclareSIUnit \lb      {lb}                                  % pound
\DeclareSIUnit \lm      {lm}                                  % \lumen
\DeclareSIUnit \lx      {lx}                                  % \lux
\DeclareSIUnit \MJ      {MJ}                                  % \mega\joule
\DeclareSIUnit \mbar    {mbar}                                % \milli\bar
\DeclareSIUnit \min     {min}                                 % \minute
\DeclareSIUnit \M       {M}                                   % \nauticalmile
\DeclareSIUnit \Np      {Np}                                  % \neper
\DeclareSIUnit \rad     {rad}                                 % \radian
\DeclareSIUnit \S       {S}                                   % \siemens
\DeclareSIUnit \SD      {SD}                                  % standard deviation
\DeclareSIUnit \Sv      {Sv}                                  % \sievert
\DeclareSIUnit \sr      {sr}                                  % \steradian
\DeclareSIUnit \T       {T}                                   % \tesla
\DeclareSIUnit \t       {t}                                   % \tonne
\DeclareSIUnit \Wb      {Wb}                                  % \weber
\DeclareSIUnit \yd      {yd}                                  % yard
\DeclareSIUnit \y       {y}                                   % year
\usepackage[labelsep=space]{subcaption}
\usepackage{tabularx}
\usepackage{xkeyval}
%%%%% \RequirePackage{pgfopts}
\usepackage{xparse}

































































































\ExplSyntaxOn
\makeatletter
\def\makeplusletter{\catcode`\+11\relax}
\def\makeplusother{\catcode`\+12\relax}
\def\makequoteletter{\catcode`\'11\relax}
\def\makequoteother{\catcode`\'12\relax}
\newcommand{\ZZDebuggingMessage}{Debugging...}
\newcommand\ZZindenta{\space\space\space\space }
\newcommand\ZZindentb{\ZZindenta\ZZindenta}
\newcommand\ZZindentc{\ZZindentb\ZZindenta}
\newcommand\ZZindentd{\ZZindentc\ZZindenta}
\newcommand\ZZindente{\ZZindentd\ZZindenta}
\newcommand{\ZZIW}[1]{\immediate\write16{#1}}
\newcounter{ZZcountersavedpagenumber}
\newcounter{ZZprevindex}
\newcommand{\ZZauthor}{\relax}
\DeclareOptionX{author}{\renewcommand{\ZZauthor}{#1}}
%%%%% \pgfkeys{/MOP/.cd, author/.store in=\MOP@ZZauthor}
\newcommand{\ZZcampus}{\relax}
\DeclareOptionX{campus}{\renewcommand{\ZZcampus}{#1}}
%%%%% \pgfkeys{/MOP/.cd, campus/.store in=\MOP@ZZcampus}
\newcommand{\ZZdegree}{\relax}
\DeclareOptionX{degree}{\renewcommand{\ZZdegree}{#1}}
%%%%% \pgfkeys{/MOP/.cd, degree/.store in=\MOP@ZZdegree}
\newcommand{\ZZcommittee}{\relax}
\DeclareOptionX{committee}{\renewcommand{\ZZcommittee}{#1}}
%%%%% \pgfkeys{/MOP/.cd, committee/.store in=\MOP@ZZcommittee}
\newcommand{\ZZdocument}{thesis}
\DeclareOptionX{document}{\renewcommand{\ZZdocument}{#1}}
%%%%% \pgfkeys{/MOP/.cd, document/.store in=\MOP@ZZdocument}
\newcommand{\ZZexamcommittee}{\relax}
\DeclareOptionX{examcommittee}{\renewcommand{\ZZexamcommittee}{#1}}
%%%%% \pgfkeys{/MOP/.cd, examcommittee/.store in=\MOP@ZZexamcommittee}
\newcommand{\ZZgraduation}{\relax}
\DeclareOptionX{graduation}{\renewcommand{\ZZgraduation}{#1}}
%%%%% \pgfkeys{/MOP/.cd, graduation/.store in=\MOP@ZZgraduation}
\newcommand{\ZZinstitution}{\relax}
\DeclareOptionX{institution}{\renewcommand{\ZZinstitution}{#1}}
%%%%% \pgfkeys{/MOP/.cd, institution/.store in=\MOP@ZZinstitution}
\newcommand{\ZZkeywords}{\relax}
\DeclareOptionX{keywords}{\renewcommand{\ZZkeywords}{#1}}
%%%%% \pgfkeys{/MOP/.cd, keywords/.store in=\MOP@ZZkeywords}
\newcommand{\ZZmajorprofs}{\relax}
\DeclareOptionX{majorprofs}{\renewcommand{\ZZmajorprofs}{#1}}
%%%%% \pgfkeys{/MOP/.cd, majorprofs/.store in=\MOP@ZZmajorprofs}
\newcommand{\ZZprogram}{\relax}
\DeclareOptionX{program}{\renewcommand{\ZZprogram}{#1}}
%%%%% \pgfkeys{/MOP/.cd, program/.store in=\MOP@ZZprogram}
\newcommand{\ZZprogramhead}{\relax}
\DeclareOptionX{programhead}{\renewcommand{\ZZprogramhead}{#1}}
%%%%% \pgfkeys{/MOP/.cd, programhead/.store in=\MOP@ZZprogramhead}
\newcommand{\ZZtitle}{\relax}
\DeclareOptionX{title}{\renewcommand{\ZZtitle}{#1}}
%%%%% \pgfkeys{/MOP/.cd, title/.store in=\MOP@ZZtitle}
\newcommand{\ZZabbreviationsname}{ABBREVIATIONS}
\DeclareOptionX{abbreviationsname}{\renewcommand{\ZZabbreviationsname}{#1}}
%%%%% \pgfkeys{/MOP/.cd, abbreviationsname/.store in=\MOP@ZZabbreviationsname}
\newcommand{\ZZabstractname}{ABSTRACT}
\DeclareOptionX{abstractname}{\renewcommand{\ZZabstractname}{#1}}
%%%%% \pgfkeys{/MOP/.cd, abstractname/.store in=\MOP@ZZabstractname}
\newcommand{\ZZacknowledgmentsname}{ACKNOWLEDGMENTS}
\DeclareOptionX{acknowledgmentsname}{\renewcommand{\ZZacknowledgmentsname}{#1}}
%%%%% \pgfkeys{/MOP/.cd, acknowledgmentsname/.store in=\MOP@ZZacknowledgmentsname}
\renewcommand{\baselinestretch}{1.5}
\DeclareOptionX{baselinestretch}{\renewcommand{\baselinestretch}{#1}}
%%%%% \pgfkeys{/MOP/.cd, baselinestretch/.store in=\MOP@baselinestretch}
\newcommand{\ZZchapterblankpages}{false}
\DeclareOptionX{chapterblankpages}{\renewcommand{\ZZchapterblankpages}{#1}}
%%%%% \pgfkeys{/MOP/.cd, chapterblankpages/.store in=\MOP@ZZchapterblankpages}
\newcommand{\ZZcoversheets}{false}
\DeclareOptionX{coversheets}{\renewcommand{\ZZcoversheets}{#1}}
%%%%% \pgfkeys{/MOP/.cd, coversheets/.store in=\MOP@ZZcoversheets}
\newcommand{\ZZdebuglevel}{99}
\DeclareOptionX{debuglevel}{\renewcommand{\ZZdebuglevel}{#1}}
%%%%% \pgfkeys{/MOP/.cd, debuglevel/.store in=\MOP@ZZdebuglevel}
\newcommand{\ZZdebugoptions}{false}
\DeclareOptionX{debugoptions}{\renewcommand{\ZZdebugoptions}{#1}}
%%%%% \pgfkeys{/MOP/.cd, debugoptions/.store in=\MOP@ZZdebugoptions}
\newcommand{\ZZdebugorder}{false}
\DeclareOptionX{debugorder}{\renewcommand{\ZZdebugorder}{#1}}
%%%%% \pgfkeys{/MOP/.cd, debugorder/.store in=\MOP@ZZdebugorder}
\newcommand{\ZZdebugparameters}{false}
\DeclareOptionX{debugparameters}{\renewcommand{\ZZdebugparameters}{#1}}
%%%%% \pgfkeys{/MOP/.cd, debugparameters/.store in=\MOP@ZZdebugparameters}
\newcommand{\ZZendnotes}{false}
\DeclareOptionX{endnotes}{\renewcommand{\ZZendnotes}{#1}}
%%%%% \pgfkeys{/MOP/.cd, endnotes/.store in=\MOP@ZZendnotes}
\newcommand{\ZZfrenchspacing}{false}
\DeclareOptionX{frenchspacing}{\renewcommand{\ZZfrenchspacing}{#1}}
%%%%% \pgfkeys{/MOP/.cd, frenchspacing/.store in=\MOP@ZZfrenchspacing}
\newcommand{\ZZfrontnumbering}{arabic}
\DeclareOptionX{frontnumbering}{\renewcommand{\ZZfrontnumbering}{#1}}
%%%%% \pgfkeys{/MOP/.cd, frontnumbering/.store in=\MOP@ZZfrontnumbering}
\newcommand{\ZZglossaryname}{GLOSSARY}
\DeclareOptionX{glossaryname}{\renewcommand{\ZZglossaryname}{#1}}
%%%%% \pgfkeys{/MOP/.cd, glossaryname/.store in=\MOP@ZZglossaryname}
\newcommand{\ZZiso}{false}
\DeclareOptionX{iso80000-2}{\renewcommand{\ZZiso}{#1}}
%%%%% \pgfkeys{/MOP/.cd, iso80000-2/.store in=\MOP@ZZiso}
\newcommand{\ZZlistoffiguresname}{LIST~OF~FIGURES}
\DeclareOptionX{listoffiguresname}{\renewcommand{\ZZlistoffiguresname}{#1}}
%%%%% \pgfkeys{/MOP/.cd, listoffiguresname/.store in=\MOP@ZZlistoffiguresname}
\newcommand{\ZZlistoftablesname}{LIST~OF~TABLES}
\DeclareOptionX{listoftablesname}{\renewcommand{\ZZlistoftablesname}{#1}}
%%%%% \pgfkeys{/MOP/.cd, listoftablesname/.store in=\MOP@ZZlistoftablesname}
\newcommand{\ZZnomenclaturename}{NOMENCLATURE}
\DeclareOptionX{nomenclaturename}{\renewcommand{\ZZnomenclaturename}{#1}}
%%%%% \pgfkeys{/MOP/.cd, nomenclaturename/.store in=\MOP@ZZnomenclaturename}
\newcommand{\ZZoutput}{pdf}
\DeclareOptionX{output}{\renewcommand{\ZZoutput}{#1}}
%%%%% \pgfkeys{/MOP/.cd, output/.store in=\MOP@ZZoutput}
\newcommand{\ZZprefacename}{PREFACE}
\DeclareOptionX{prefacename}{\renewcommand{\ZZprefacename}{#1}}
%%%%% \pgfkeys{/MOP/.cd, prefacename/.store in=\MOP@ZZprefacename}
\newcommand{\ZZsymbolsname}{LIST~OF~SYMBOLS}
\DeclareOptionX{symbolsname}{\renewcommand{\ZZsymbolsname}{#1}}
%%%%% \pgfkeys{/MOP/.cd, symbolsname/.store in=\MOP@ZZsymbolsname}
\newcommand{\ZZtableofcontentsname}{TABLE~OF~CONTENTS}
\DeclareOptionX{tableofcontentsname}{\renewcommand{\ZZtableofcontentsname}{#1}}
%%%%% \pgfkeys{/MOP/.cd, tableofcontentsname/.store in=\MOP@ZZtableofcontentsname}
\newcommand{\ZZvitaname}{VITA}
\DeclareOptionX{vitaname}{\renewcommand{\ZZvitaname}{#1}}
%%%%% \pgfkeys{/MOP/.cd, vitaname/.store in=\MOP@ZZvitaname}
\ProcessOptionsX
\str_replace_all:Nnn \ZZinstitution {@} {~}
\str_replace_all:Nnn \ZZcampus {@} {~}
\str_replace_all:Nnn \ZZprogram {@} {~}
\str_replace_all:Nnn \ZZdegree {@} {~}
\str_replace_all:Nnn \ZZauthor {@} {~}
\str_replace_all:Nnn \ZZdocument {@} {~}
\str_replace_all:Nnn \ZZgraduation {@} {~}
\str_replace_all:Nnn \ZZtitle {@} {~}
%
%  The bibliography configuration can't be before the \documentclass
%  line because
%      ! LaTeX Error: \usepackage before \documentclass.
%
%  From https://www.overleaf.com/learn/latex/Writing_your_own_class
%      \RequirePackage is very similar to the well-known \usepackage,
%      adding optional parameters within brackets will also work. The
%      only difference is that the \usepackage can not be used before
%      \documentclass command. It's strongly recommended to use
%      \RequirePackage when writing new classes or packages.
%
%  When I put this bibliography stuff before the \documentclass command
%  on 2020-11-24 the first entry of the bibliography started with
%  "[1]Sexton" instead of "[1] Sexton".  I don't know why.
%
%  CONFIGURE THE BIBLIOGRAPHY
%
%  BibLaTeX and BibTeX are available to compile your bibliography.
%  BibLaTeX is newer and more flexible than BibTeX.  BibTeX is old and
%  not as flexible.  There are more bibliography styles available for
%  BibTeX than BibLaTeX.  Use BibLaTeX if you can.  You can use
%  BibLaTeX or BibTeX but not both.
%
%  Search for "REQUIRED PARAMETERS" above.  Mentally compute the
%  string consisting of your INSTITUTION CODE, followed by a "-",
%  followed by your CAMPUS CODE, followed by a "-", followed by your
%  PROGRAM CODE (e.g., "pu-wl-aae").  Find "% " followed by that
%  string followed space(s) in the list below.  Make a copy of that
%  line below the line you found and remove the "% " followed by that
%  string followed by space(s) in the list below.
%
%  You should do 1 or 2 but not both below.
%
%  1.  If you removed the string in the "BIBLATEX" section you'll be
%      running BibLaTeX.  You also need to change
%          % \addbibresource{all-biblatex.bib}
%      to
%          \addbibresource{all-biblatex.bib}
%      since the information for the references is in the all.bib file.
%
%  2.  If you did this in the "BIBTEX" section you'll be running BibTeX.
%
%  You'll also need to make some changes in the "PRINT THE BIBLIOGRAPHY"
%  section below.
%
%
%  Define \ConfigureBibliography.
%
% Set \bibprocessor to "biblatex" or "bibtex".
% For biblatex, do the appropriate
%     \usepackage[...]{biblatex}
% command.
% For bibtex, do the appropriate
%     \bibliographystyle{..}
% command.
%
% BIBLATEX OPTION             DESCRIPTION
% backend   = biber           Use biber to process the bibliography.
% citestyle = numeric-comp    Change [1],[3] to [1,3] and [1]--[3] to [1--3].
% dashed    = false           Reprint repeated names, don't use a dash.
% sortcites = true            Sort multiple citations.
% style     = ..             Use the ... bibliography style.
%
\newcommand\ConfigureBibliography
{
\ifthen{\equal{pu-fw-bio}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-fw-cme?}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-fw-comm}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-fw-ece}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-fw-engl}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=apa,          dashed=false, sortcites=true, style=apa]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-fw-sped}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-bio}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-bme}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-ccb?}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-cis?}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-ece}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-fis?}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-math}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-mee?}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-neu?}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-in-phys}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-nw-bio}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-nw-cdfs}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-nw-ece}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-nw-hist}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-nw-mce}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-aae}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-abe}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-ad}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-agecon}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-agry}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-amst}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-ansc}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-anth}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-bchm}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-bcm}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-biol}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-bme}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-bms}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-btny}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-ce}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-cgt}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-chem}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-che}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-cit}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-cmpl}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-com}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-cpb}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-csr}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-cs}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
% I understand from Susan Beveridge <sbeverid@purdue.edu> (on 2020-08-27)
% and Milind Sharma <sharm261@purdue.edu> (on ~2020-08-28), both in Earth,
% Atmospheric, and Planetary Sciences that they would like to use the
% ametsoc2014 BibTeX style.
\ifthen{\equal{pu-wl-eaps}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{bibtex}
\bibliographystyle{ametsoc2014}
}
\ifthen{\equal{pu-wl-ece}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
%   % From
%   % https://tex.stackexchange.com/questions/561338/biblatex-with-ieee-style-not-working-anymore-biblatex-ieee
%   % regarding why
%   %     ! Package biblatex-ieee Error: Failed to update citation style.
%   %     See the biblatex-ieee package documentation for explanation.
%   %     Type  H <return>  for immediate help.
%   %     ..
%   %     l.62 \docsvlist{cite:comp:inset,cite:dump:inset}
%   % happens with 2020 bibtex-ieee but old bibtex.
%   %
%   % For the present, you could add
%     % The second step is to replace \multicitedelim and
%     % \multicitesubentrydelim with a version wrapped in
%     % the appropriate delimiter.
%     \renewcommand*{\do}[1]{%
%       \expandafter\patchcmd\expandafter
%         {\csname abx@macro@\detokenize{#1}\endcsname}%
%         {\multicitedelim}
%         {\bibclosebracket\multicitedelim\bibopenbracket}
%         {}
%         {%
%         % \PackageError{biblatex-ieee}{Failed to update citation style}\@ehc
%         }%
%       }
%     \docsvlist{cite:comp:end,cite:comp:inset,cite:comp:shand,cite:dump}
%
%     \renewcommand*{\do}[1]{%
%       \expandafter\patchcmd\expandafter
%         {\csname abx@macro@\detokenize{#1}\endcsname}%
%         {\multicitesubentrydelim}
%         {\bibclosebracket\multicitesubentrydelim\bibopenbracket}
%         {}
%         {%
%         % \PackageError{biblatex-ieee}{Failed to update citation style}\@ehc
%         }%
%       }
%     \docsvlist{cite:comp:inset,cite:dump:inset}
%
%     % There's also one \multiciterangedelim and one
%     % \multicitesubentryrangedelimto alter.
%     \expandafter\patchcmd\expandafter
%       {\csname abx@macro@\detokenize{cite:dump}\endcsname}%
%       {\multiciterangedelim}
%       {\bibclosebracket\multiciterangedelim\bibopenbracket}
%       {}
%       {%
%       %  \PackageError{biblatex-ieee}{Failed to update citation style}\@ehc
%       }%
%
%     \expandafter\patchcmd\expandafter
%       {\csname abx@macro@\detokenize{cite:dump:inset}\endcsname}%
%       {\multicitesubentryrangedelim}
%       {\bibclosebracket\multicitesubentryrangedelim\bibopenbracket}
%       {}
%       {%
%       %  \PackageError{biblatex-ieee}{Failed to update citation style}\@ehc
%       }%
%   % after loading biblatex to get the right behaviour; you'll still have the warning at point-of-loading,
%   % but the output would be fixed.
\ifthen{\equal{pu-wl-econ}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-edci}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-edst}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-eee}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-ene}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-engl}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=apa,          dashed=false, sortcites=true, style=apa]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-entm}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-fnr}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-fs}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-hdfs}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-hist}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-hk}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-hort}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-hsci}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-htm}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-ibsc}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-ie}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-ipph}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-lc}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-ling}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-math}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-mcmp}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-me}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-mgmt}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-mse}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-ne}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-nur}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-nutr}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-obhr}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-owl}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-phillit}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-phil}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-phpr}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-phys}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-pol}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-psd}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-psy}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-satt}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-slhs}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-soc}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-stat}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-tdo}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-thtr}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{pu-wl-tli}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
% Dr. Sandra Lefebvre <SLefebvre@avma.org> wrote on 2020-09-01 at 15:10+00:
%     Thank you for thinking of the JAVMA/AJVR for incorporation in
%     the reference formats that you're developing. We do not seem to
%     have a BibTeX or BibLaTeX format per se (we have our own unique
%     style), but in the near future (by 2021) we will be following
%     the JAMA format, which you're probably planning to include. My
%     suggestion would be to use that for the AVMA journals.
\ifthen{\equal{pu-wl-vcs}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{bibtex}
\bibliographystyle{ama}
}
\ifthen{\equal{pu-wl-ydae}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
\ifthen{\equal{uh-manoa-econ}{\ZZinscampro}}
{
\newcommand{\bibprocessor}{biblatex}
\usepackage[backend=biber, citestyle=numeric-comp, dashed=false, sortcites=true, style=ieee]{biblatex}
\addbibresource{all-biblatex.bib}
}
}
%
%  Define \PrintBibliography.
%
\newcommand\PrintBibliography
{
% If running BibLaTeX..
\ifthen{\equal{\bibprocessor}{biblatex}}
{{
\begin{singlespace}
% From https://tex.stackexchange.com/questions/17360/reduce-spacing-in-bibliography-using-biblatex
\bibitemsep = \baselineskip  % length between two different entries
\bibnamesep = \baselineskip  % length between two entries of different author
\bibinitsep = \baselineskip  % length between two entries of authors
% with different first letter
% Do not split a bibliography entry between pages.
% See
%     https://tex.stackexchange.com/questions/43260/biblatex-no-pagebreak-in-bibliography-entry
% From https://tex.stackexchange.com/questions/152773/please-tutor-the-usage-of-patchcmd-and-xpatch
%     I would consider patchcmd and \patchcommand as obsolete: with
%     etoolbox the complete functionality of \patchcommand can be
%     obtained with \pretocmd and \apptocmd and much more is possible
%     with \patchcmd.
% This uses the \patchcmd command in the etools package.
% Change \interlinepenalty=5000 to \interlinepenalty=10000 in \bibsetup.
\patchcmd\bibsetup
{\interlinepenalty=5000}
{\interlinepenalty=10000}
{}
{}
\parindent = -20pt
\bibhang   = -20pt
\leftskip  = -1in
\printbibliography
[
heading = {bibintoc},    % Put an entry in the table of contents.
title   = {REFERENCES},  % The title of the bibliography should be "REFERENCES".
%%%% block   = {nbpar},
]
\end{singlespace}
\endgraf
}}
% If running BibTeX..
\ifthen{\equal{bibtex}{\bibprocessor}}
{\bibliography{all-bibtex}}
}
% Put a "wallpaper" background on your thesis for testing?
% Don't use wallpaper on the version of the thesis you turn
% in.  Comment out with a "%" if you aren't using wallpaper.
% If you are using wallpaper
%     o  Use the gr-gridlines.pdf file to show the margins with
%        a grid inside with 1/4" squares.
%     o  Use the gr-marginlines.pdf file to show the margins
%        and a line from the lower-left corner to the center
%        of the page.
% If you are not using wallpaper comment out the following
% line with a "%".
\makeplusletter
\makeplusother
\regex_match:nVTF
{.+}
\ZZauthor
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZauthor"+option.}
\ZZIW{"ZZauthor"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .+}
\stop
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {Bloomington} {bl}
\prop_put:Nnn \l_tmpa_prop {Fort~Wayne} {fw}
\prop_put:Nnn \l_tmpa_prop {Indianapolis} {in}
\prop_put:Nnn \l_tmpa_prop {Manoa} {ma}
\prop_put:Nnn \l_tmpa_prop {Northwest} {nw}
\prop_put:Nnn \l_tmpa_prop {Reno} {re}
\prop_put:Nnn \l_tmpa_prop {West~Lafayette} {wl}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZcampus}
\l_tmpa_tl
{
\edef\ZZcam{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"campus"~option.}
\ZZIW{"\ZZcampus"~is~not~on~this~list:}
\ZZIW{~~~~ Bloomington}
\ZZIW{~~~~ Fort~Wayne}
\ZZIW{~~~~ Indianapolis}
\ZZIW{~~~~ Manoa}
\ZZIW{~~~~ Northwest}
\ZZIW{~~~~ Reno}
\ZZIW{~~~~ West~Lafayette}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {Doctor~of~Audiology} {aud}
\prop_put:Nnn \l_tmpa_prop {Doctor~of~Nursing~Practice} {dnp}
\prop_put:Nnn \l_tmpa_prop {Doctor~of~Philosophy} {phd}
\prop_put:Nnn \l_tmpa_prop {Master~of~Arts} {ma}
\prop_put:Nnn \l_tmpa_prop {Master~of~Fine~Arts} {mfa}
\prop_put:Nnn \l_tmpa_prop {Master~of~Library~Science} {mls}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science} {ms}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Aeronautics~and~Astronautics} {msaa}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Agricultural~and~Biological~Engineering} {msabe}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Agriculture} {msa}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Aviation~and~Aerospace~Management} {msaam}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Biomedical~Engineering} {msbme}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Building~Construction~Management} {msbcm}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Chemical~Engineering} {msche}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Civil~Engineering} {msce}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Education} {msed}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Electrical~and~Computer~Engineering} {msece}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Engineering} {mse}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Human~Resources~Management} {mshrm}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Industrial~Engineering} {msie}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Industrial~Technology} {msit}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Materials~Engineering} {msmse}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Mechanical~Engineering} {msme}
\prop_put:Nnn \l_tmpa_prop {Master~of~Science~in~Nuclear~Engineering} {msne}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZdegree}
\l_tmpa_tl
{
\edef\ZZdeg{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"degree"~option.}
\ZZIW{"\ZZdegree"~is~not~on~this~list:}
\ZZIW{~~~~ Doctor~of~Audiology}
\ZZIW{~~~~ Doctor~of~Nursing~Practice}
\ZZIW{~~~~ Doctor~of~Philosophy}
\ZZIW{~~~~ Master~of~Arts}
\ZZIW{~~~~ Master~of~Fine~Arts}
\ZZIW{~~~~ Master~of~Library~Science}
\ZZIW{~~~~ Master~of~Science}
\ZZIW{~~~~ Master~of~Science~in~Aeronautics~and~Astronautics}
\ZZIW{~~~~ Master~of~Science~in~Agricultural~and~Biological~Engineering}
\ZZIW{~~~~ Master~of~Science~in~Agriculture}
\ZZIW{~~~~ Master~of~Science~in~Aviation~and~Aerospace~Management}
\ZZIW{~~~~ Master~of~Science~in~Biomedical~Engineering}
\ZZIW{~~~~ Master~of~Science~in~Building~Construction~Management}
\ZZIW{~~~~ Master~of~Science~in~Chemical~Engineering}
\ZZIW{~~~~ Master~of~Science~in~Civil~Engineering}
\ZZIW{~~~~ Master~of~Science~in~Education}
\ZZIW{~~~~ Master~of~Science~in~Electrical~and~Computer~Engineering}
\ZZIW{~~~~ Master~of~Science~in~Engineering}
\ZZIW{~~~~ Master~of~Science~in~Human~Resources~Management}
\ZZIW{~~~~ Master~of~Science~in~Industrial~Engineering}
\ZZIW{~~~~ Master~of~Science~in~Industrial~Technology}
\ZZIW{~~~~ Master~of~Science~in~Materials~Engineering}
\ZZIW{~~~~ Master~of~Science~in~Mechanical~Engineering}
\ZZIW{~~~~ Master~of~Science~in~Nuclear~Engineering}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZcommittee
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZcommittee"+option.}
\ZZIW{"ZZcommittee"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {A~Dissertation} {dissertation}
\prop_put:Nnn \l_tmpa_prop {A~Master's~Bypass~Report} {}
\prop_put:Nnn \l_tmpa_prop {A~Preliminary~Report} {prelim}
\prop_put:Nnn \l_tmpa_prop {A~Thesis} {thesis}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZdocument}
\l_tmpa_tl
{
\edef\ZZdoc{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"document"~option.}
\ZZIW{"\ZZdocument"~is~not~on~this~list:}
\ZZIW{~~~~ A~Dissertation}
\ZZIW{~~~~ A~Master's~Bypass~Report}
\ZZIW{~~~~ A~Preliminary~Report}
\ZZIW{~~~~ A~Thesis}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.+}
\ZZexamcommittee
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZexamcommittee"+option.}
\ZZIW{"ZZexamcommittee"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .+}
\stop
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {August~2020} {1}
\prop_put:Nnn \l_tmpa_prop {August~2021} {1}
\prop_put:Nnn \l_tmpa_prop {August~2022} {1}
\prop_put:Nnn \l_tmpa_prop {August~2023} {1}
\prop_put:Nnn \l_tmpa_prop {August~2024} {1}
\prop_put:Nnn \l_tmpa_prop {August~2025} {1}
\prop_put:Nnn \l_tmpa_prop {August~2026} {1}
\prop_put:Nnn \l_tmpa_prop {August~2027} {1}
\prop_put:Nnn \l_tmpa_prop {August~2028} {1}
\prop_put:Nnn \l_tmpa_prop {August~2029} {1}
\prop_put:Nnn \l_tmpa_prop {August~2030} {1}
\prop_put:Nnn \l_tmpa_prop {December~2019} {1}
\prop_put:Nnn \l_tmpa_prop {December~2020} {1}
\prop_put:Nnn \l_tmpa_prop {December~2021} {1}
\prop_put:Nnn \l_tmpa_prop {December~2022} {1}
\prop_put:Nnn \l_tmpa_prop {December~2023} {1}
\prop_put:Nnn \l_tmpa_prop {December~2024} {1}
\prop_put:Nnn \l_tmpa_prop {December~2025} {1}
\prop_put:Nnn \l_tmpa_prop {December~2026} {1}
\prop_put:Nnn \l_tmpa_prop {December~2027} {1}
\prop_put:Nnn \l_tmpa_prop {December~2028} {1}
\prop_put:Nnn \l_tmpa_prop {December~2029} {1}
\prop_put:Nnn \l_tmpa_prop {December~2030} {1}
\prop_put:Nnn \l_tmpa_prop {May~2020} {1}
\prop_put:Nnn \l_tmpa_prop {May~2021} {1}
\prop_put:Nnn \l_tmpa_prop {May~2022} {1}
\prop_put:Nnn \l_tmpa_prop {May~2023} {1}
\prop_put:Nnn \l_tmpa_prop {May~2024} {1}
\prop_put:Nnn \l_tmpa_prop {May~2025} {1}
\prop_put:Nnn \l_tmpa_prop {May~2026} {1}
\prop_put:Nnn \l_tmpa_prop {May~2027} {1}
\prop_put:Nnn \l_tmpa_prop {May~2028} {1}
\prop_put:Nnn \l_tmpa_prop {May~2029} {1}
\prop_put:Nnn \l_tmpa_prop {May~2030} {1}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZgraduation}
\l_tmpa_tl
{
}
{
\makeplusletter
\ZZIW{Bad~"graduation"~option.}
\ZZIW{"\ZZgraduation"~is~not~on~this~list:}
\ZZIW{~~~~ August~2020}
\ZZIW{~~~~ August~2021}
\ZZIW{~~~~ August~2022}
\ZZIW{~~~~ August~2023}
\ZZIW{~~~~ August~2024}
\ZZIW{~~~~ August~2025}
\ZZIW{~~~~ August~2026}
\ZZIW{~~~~ August~2027}
\ZZIW{~~~~ August~2028}
\ZZIW{~~~~ August~2029}
\ZZIW{~~~~ August~2030}
\ZZIW{~~~~ December~2019}
\ZZIW{~~~~ December~2020}
\ZZIW{~~~~ December~2021}
\ZZIW{~~~~ December~2022}
\ZZIW{~~~~ December~2023}
\ZZIW{~~~~ December~2024}
\ZZIW{~~~~ December~2025}
\ZZIW{~~~~ December~2026}
\ZZIW{~~~~ December~2027}
\ZZIW{~~~~ December~2028}
\ZZIW{~~~~ December~2029}
\ZZIW{~~~~ December~2030}
\ZZIW{~~~~ May~2020}
\ZZIW{~~~~ May~2021}
\ZZIW{~~~~ May~2022}
\ZZIW{~~~~ May~2023}
\ZZIW{~~~~ May~2024}
\ZZIW{~~~~ May~2025}
\ZZIW{~~~~ May~2026}
\ZZIW{~~~~ May~2027}
\ZZIW{~~~~ May~2028}
\ZZIW{~~~~ May~2029}
\ZZIW{~~~~ May~2030}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {Indiana~University} {iu}
\prop_put:Nnn \l_tmpa_prop {Purdue~University} {pu}
\prop_put:Nnn \l_tmpa_prop {University~of~Hawaii} {uh}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZinstitution}
\l_tmpa_tl
{
\edef\ZZins{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"institution"~option.}
\ZZIW{"\ZZinstitution"~is~not~on~this~list:}
\ZZIW{~~~~ Indiana~University}
\ZZIW{~~~~ Purdue~University}
\ZZIW{~~~~ University~of~Hawaii}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZkeywords
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZkeywords"+option.}
\ZZIW{"ZZkeywords"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.+}
\ZZmajorprofs
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZmajorprofs"+option.}
\ZZIW{"ZZmajorprofs"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .+}
\stop
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {Aeronautics~and~Astronautics} {aae}
\prop_put:Nnn \l_tmpa_prop {Agricultural~Economics} {agecon}
\prop_put:Nnn \l_tmpa_prop {Agricultural~and~Biological~Engineering} {abe}
\prop_put:Nnn \l_tmpa_prop {Agronomy} {agry}
\prop_put:Nnn \l_tmpa_prop {American~Studies} {amst}
\prop_put:Nnn \l_tmpa_prop {Animal~Sciences} {ansc}
\prop_put:Nnn \l_tmpa_prop {Anthropology} {anth}
\prop_put:Nnn \l_tmpa_prop {Art~and~Design} {ad}
\prop_put:Nnn \l_tmpa_prop {Aviation~and~Transportation~Technology} {satt}
\prop_put:Nnn \l_tmpa_prop {Basic~Medical~Sciences} {bms}
\prop_put:Nnn \l_tmpa_prop {Biochemistry} {bchm}
\prop_put:Nnn \l_tmpa_prop {Biological~Sciences} {biol}
\prop_put:Nnn \l_tmpa_prop {Biology} {bio}
\prop_put:Nnn \l_tmpa_prop {Biomedical~Engineering} {bme}
\prop_put:Nnn \l_tmpa_prop {Botany~and~Plant~Pathology} {btny}
\prop_put:Nnn \l_tmpa_prop {Chemical~Engineering} {che}
\prop_put:Nnn \l_tmpa_prop {Chemistry} {chem}
\prop_put:Nnn \l_tmpa_prop {Chemistry~and~Chemical~Biology} {ccb?}
\prop_put:Nnn \l_tmpa_prop {Child~Development~and~Family~Studies} {cdfs}
\prop_put:Nnn \l_tmpa_prop {Civil~Engineering} {ce}
\prop_put:Nnn \l_tmpa_prop {Civil~and~Mechanical~Engineering} {cme?}
\prop_put:Nnn \l_tmpa_prop {Communication} {comm}
\prop_put:Nnn \l_tmpa_prop {Communications} {com}
\prop_put:Nnn \l_tmpa_prop {Comparitive~Pathobiology} {cpb}
\prop_put:Nnn \l_tmpa_prop {Computer~Graphics~Technology} {cgt}
\prop_put:Nnn \l_tmpa_prop {Computer~Science} {cs}
\prop_put:Nnn \l_tmpa_prop {Computer~and~Information~Science} {cis?}
\prop_put:Nnn \l_tmpa_prop {Computer~and~Information~Technology} {cit}
\prop_put:Nnn \l_tmpa_prop {Construction~Management~Technology} {bcm}
\prop_put:Nnn \l_tmpa_prop {Consumer~Science} {csr}
\prop_put:Nnn \l_tmpa_prop {Curriculum~and~Instruction} {edci}
\prop_put:Nnn \l_tmpa_prop {Earth,~Atmospheric,~and~Planetary~Sciences} {eaps}
\prop_put:Nnn \l_tmpa_prop {Economics} {econ}
\prop_put:Nnn \l_tmpa_prop {Educational~Studies} {edst}
\prop_put:Nnn \l_tmpa_prop {Electrical~and~Computer~Engineering} {ece}
\prop_put:Nnn \l_tmpa_prop {Engineering~Education} {ene}
\prop_put:Nnn \l_tmpa_prop {English} {engl}
\prop_put:Nnn \l_tmpa_prop {Entomology} {entm}
\prop_put:Nnn \l_tmpa_prop {Environmental~and~Ecological~Engineering} {eee}
\prop_put:Nnn \l_tmpa_prop {Food~Science} {fs}
\prop_put:Nnn \l_tmpa_prop {Forensic~and~Investigative~Sciences} {fis?}
\prop_put:Nnn \l_tmpa_prop {Forestry~and~Natural~Resources} {fnr}
\prop_put:Nnn \l_tmpa_prop {Health~Sciences} {hsci}
\prop_put:Nnn \l_tmpa_prop {Health~and~Kinesiology} {hk}
\prop_put:Nnn \l_tmpa_prop {History} {hist}
\prop_put:Nnn \l_tmpa_prop {History~and~Philosphy} {hist}
\prop_put:Nnn \l_tmpa_prop {Horticulture} {hort}
\prop_put:Nnn \l_tmpa_prop {Hospitality~and~Tourism~Management} {htm}
\prop_put:Nnn \l_tmpa_prop {Human~Development~and~Family~Studies} {hdfs}
\prop_put:Nnn \l_tmpa_prop {Industrial~Engineering} {ie}
\prop_put:Nnn \l_tmpa_prop {Industrial~and~Physical~Pharmacy} {ipph}
\prop_put:Nnn \l_tmpa_prop {Interdisciplinary~Biomedical~Studies~Program} {ibsc}
\prop_put:Nnn \l_tmpa_prop {Interdisciplinary~Studies~(Comparitive~Literature)} {cmpl}
\prop_put:Nnn \l_tmpa_prop {Languages~and~Cultures} {lc}
\prop_put:Nnn \l_tmpa_prop {Linguistics} {ling}
\prop_put:Nnn \l_tmpa_prop {Management} {mgmt}
\prop_put:Nnn \l_tmpa_prop {Materials~Engineering} {mse}
\prop_put:Nnn \l_tmpa_prop {Mathematical~Sciences} {math}
\prop_put:Nnn \l_tmpa_prop {Mathematics} {math}
\prop_put:Nnn \l_tmpa_prop {Mechanical~Engineering} {me}
\prop_put:Nnn \l_tmpa_prop {Mechanical~and~Energy~Engineering} {mee?}
\prop_put:Nnn \l_tmpa_prop {Mechnical~and~Civil~Engineering} {mce}
\prop_put:Nnn \l_tmpa_prop {Medicinal~Chemistry~and~Molecular~Pharmacology} {mcmp}
\prop_put:Nnn \l_tmpa_prop {Musicology} {musico}
\prop_put:Nnn \l_tmpa_prop {Music~Education} {musice}
\prop_put:Nnn \l_tmpa_prop {Music~Theory} {musict}
\prop_put:Nnn \l_tmpa_prop {Nuclear~Engineering} {ne}
\prop_put:Nnn \l_tmpa_prop {Nursing} {nur}
\prop_put:Nnn \l_tmpa_prop {Nutrition~Science} {nutr}
\prop_put:Nnn \l_tmpa_prop {Organizational~Behavior~and~Human~Resource~Management} {obhr}
\prop_put:Nnn \l_tmpa_prop {Pharmacy~Practice} {phpr}
\prop_put:Nnn \l_tmpa_prop {Philosophy} {phil}
\prop_put:Nnn \l_tmpa_prop {Philosophy~and~Literature} {phillit}
\prop_put:Nnn \l_tmpa_prop {Physics} {phys}
\prop_put:Nnn \l_tmpa_prop {Physics~and~Astronomy} {phys}
\prop_put:Nnn \l_tmpa_prop {Political~Science} {pol}
\prop_put:Nnn \l_tmpa_prop {Psychological~Sciences} {psy}
\prop_put:Nnn \l_tmpa_prop {Purdue~Thesis~Software~Development} {psd}
\prop_put:Nnn \l_tmpa_prop {Sociology} {soc}
\prop_put:Nnn \l_tmpa_prop {Speech,~Language,~and~Hearing~Sciences} {slhs}
\prop_put:Nnn \l_tmpa_prop {Statistics} {stat}
\prop_put:Nnn \l_tmpa_prop {Technology~Leadership~and~Innovation} {tli}
\prop_put:Nnn \l_tmpa_prop {Theatre} {thtr}
\prop_put:Nnn \l_tmpa_prop {Thesis~and~Dissertation~Office} {tdo}
\prop_put:Nnn \l_tmpa_prop {Veterinary~Clinical~Sciences} {vcs}
\prop_put:Nnn \l_tmpa_prop {Writing~Lab/Online~Writing~Lab} {owl}
\prop_put:Nnn \l_tmpa_prop {Youth~Development~and~Agricultural~Education} {ydae}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZprogram}
\l_tmpa_tl
{
\edef\ZZpro{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"program"~option.}
\ZZIW{"\ZZprogram"~is~not~on~this~list:}
\ZZIW{~~~~ Aeronautics~and~Astronautics}
\ZZIW{~~~~ Agricultural~Economics}
\ZZIW{~~~~ Agricultural~and~Biological~Engineering}
\ZZIW{~~~~ Agronomy}
\ZZIW{~~~~ American~Studies}
\ZZIW{~~~~ Animal~Sciences}
\ZZIW{~~~~ Anthropology}
\ZZIW{~~~~ Art~and~Design}
\ZZIW{~~~~ Aviation~and~Transportation~Technology}
\ZZIW{~~~~ Basic~Medical~Sciences}
\ZZIW{~~~~ Biochemistry}
\ZZIW{~~~~ Biological~Sciences}
\ZZIW{~~~~ Biology}
\ZZIW{~~~~ Biomedical~Engineering}
\ZZIW{~~~~ Botany~and~Plant~Pathology}
\ZZIW{~~~~ Chemical~Engineering}
\ZZIW{~~~~ Chemistry}
\ZZIW{~~~~ Chemistry~and~Chemical~Biology}
\ZZIW{~~~~ Child~Development~and~Family~Studies}
\ZZIW{~~~~ Civil~Engineering}
\ZZIW{~~~~ Civil~and~Mechanical~Engineering}
\ZZIW{~~~~ Communication}
\ZZIW{~~~~ Communications}
\ZZIW{~~~~ Comparitive~Pathobiology}
\ZZIW{~~~~ Computer~Graphics~Technology}
\ZZIW{~~~~ Computer~Science}
\ZZIW{~~~~ Computer~and~Information~Science}
\ZZIW{~~~~ Computer~and~Information~Technology}
\ZZIW{~~~~ Construction~Management~Technology}
\ZZIW{~~~~ Consumer~Science}
\ZZIW{~~~~ Curriculum~and~Instruction}
\ZZIW{~~~~ Earth,~Atmospheric,~and~Planetary~Sciences}
\ZZIW{~~~~ Economics}
\ZZIW{~~~~ Educational~Studies}
\ZZIW{~~~~ Electrical~and~Computer~Engineering}
\ZZIW{~~~~ Engineering~Education}
\ZZIW{~~~~ English}
\ZZIW{~~~~ Entomology}
\ZZIW{~~~~ Environmental~and~Ecological~Engineering}
\ZZIW{~~~~ Food~Science}
\ZZIW{~~~~ Forensic~and~Investigative~Sciences}
\ZZIW{~~~~ Forestry~and~Natural~Resources}
\ZZIW{~~~~ Health~Sciences}
\ZZIW{~~~~ Health~and~Kinesiology}
\ZZIW{~~~~ History}
\ZZIW{~~~~ History~and~Philosphy}
\ZZIW{~~~~ Horticulture}
\ZZIW{~~~~ Hospitality~and~Tourism~Management}
\ZZIW{~~~~ Human~Development~and~Family~Studies}
\ZZIW{~~~~ Industrial~Engineering}
\ZZIW{~~~~ Industrial~and~Physical~Pharmacy}
\ZZIW{~~~~ Interdisciplinary~Biomedical~Studies~Program}
\ZZIW{~~~~ Interdisciplinary~Studies~(Comparitive~Literature)}
\ZZIW{~~~~ Languages~and~Cultures}
\ZZIW{~~~~ Linguistics}
\ZZIW{~~~~ Management}
\ZZIW{~~~~ Materials~Engineering}
\ZZIW{~~~~ Mathematical~Sciences}
\ZZIW{~~~~ Mathematics}
\ZZIW{~~~~ Mechanical~Engineering}
\ZZIW{~~~~ Mechanical~and~Energy~Engineering}
\ZZIW{~~~~ Mechnical~and~Civil~Engineering}
\ZZIW{~~~~ Medicinal~Chemistry~and~Molecular~Pharmacology}
\ZZIW{~~~~ Musicology}
\ZZIW{~~~~ Music~Education}
\ZZIW{~~~~ Music~Theory}
\ZZIW{~~~~ Nuclear~Engineering}
\ZZIW{~~~~ Nursing}
\ZZIW{~~~~ Nutrition~Science}
\ZZIW{~~~~ Organizational~Behavior~and~Human~Resource~Management}
\ZZIW{~~~~ Pharmacy~Practice}
\ZZIW{~~~~ Philosophy}
\ZZIW{~~~~ Philosophy~and~Literature}
\ZZIW{~~~~ Physics}
\ZZIW{~~~~ Physics~and~Astronomy}
\ZZIW{~~~~ Political~Science}
\ZZIW{~~~~ Psychological~Sciences}
\ZZIW{~~~~ Purdue~Thesis~Software~Development}
\ZZIW{~~~~ Sociology}
\ZZIW{~~~~ Speech,~Language,~and~Hearing~Sciences}
\ZZIW{~~~~ Statistics}
\ZZIW{~~~~ Technology~Leadership~and~Innovation}
\ZZIW{~~~~ Theatre}
\ZZIW{~~~~ Thesis~and~Dissertation~Office}
\ZZIW{~~~~ Veterinary~Clinical~Sciences}
\ZZIW{~~~~ Writing~Lab/Online~Writing~Lab}
\ZZIW{~~~~ Youth~Development~and~Agricultural~Education}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {Aeronautics~and~Astronautics} {AAE}
\prop_put:Nnn \l_tmpa_prop {Agricultural~Economics} {AGECON}
\prop_put:Nnn \l_tmpa_prop {Agricultural~and~Biological~Engineering} {ABE}
\prop_put:Nnn \l_tmpa_prop {Agronomy} {AGRY}
\prop_put:Nnn \l_tmpa_prop {American~Studies} {AMST}
\prop_put:Nnn \l_tmpa_prop {Animal~Sciences} {ANSC}
\prop_put:Nnn \l_tmpa_prop {Anthropology} {ANTH}
\prop_put:Nnn \l_tmpa_prop {Art~and~Design} {AD}
\prop_put:Nnn \l_tmpa_prop {Aviation~and~Transportation~Technology} {SATT}
\prop_put:Nnn \l_tmpa_prop {Basic~Medical~Sciences} {BMS}
\prop_put:Nnn \l_tmpa_prop {Biochemistry} {BCHM}
\prop_put:Nnn \l_tmpa_prop {Biological~Sciences} {BIOL}
\prop_put:Nnn \l_tmpa_prop {Biology} {BIO}
\prop_put:Nnn \l_tmpa_prop {Biomedical~Engineering} {BME}
\prop_put:Nnn \l_tmpa_prop {Botany~and~Plant~Pathology} {BTNY}
\prop_put:Nnn \l_tmpa_prop {Chemical~Engineering} {CHE}
\prop_put:Nnn \l_tmpa_prop {Chemistry} {CHEM}
\prop_put:Nnn \l_tmpa_prop {Chemistry~and~Chemical~Biology} {CCB?}
\prop_put:Nnn \l_tmpa_prop {Child~Development~and~Family~Studies} {CDFS}
\prop_put:Nnn \l_tmpa_prop {Civil~Engineering} {CE}
\prop_put:Nnn \l_tmpa_prop {Civil~and~Mechanical~Engineering} {CME?}
\prop_put:Nnn \l_tmpa_prop {Communication} {COMM}
\prop_put:Nnn \l_tmpa_prop {Communications} {COM}
\prop_put:Nnn \l_tmpa_prop {Comparitive~Pathobiology} {CPB}
\prop_put:Nnn \l_tmpa_prop {Computer~Graphics~Technology} {CGT}
\prop_put:Nnn \l_tmpa_prop {Computer~Science} {CS}
\prop_put:Nnn \l_tmpa_prop {Computer~and~Information~Science} {CIS?}
\prop_put:Nnn \l_tmpa_prop {Computer~and~Information~Technology} {CIT}
\prop_put:Nnn \l_tmpa_prop {Construction~Management~Technology} {BCM}
\prop_put:Nnn \l_tmpa_prop {Consumer~Science} {CSR}
\prop_put:Nnn \l_tmpa_prop {Curriculum~and~Instruction} {EDCI}
\prop_put:Nnn \l_tmpa_prop {Earth,~Atmospheric,~and~Planetary~Sciences} {EAPS}
\prop_put:Nnn \l_tmpa_prop {Economics} {ECON}
\prop_put:Nnn \l_tmpa_prop {Educational~Studies} {EDST}
\prop_put:Nnn \l_tmpa_prop {Electrical~and~Computer~Engineering} {ECE}
\prop_put:Nnn \l_tmpa_prop {Engineering~Education} {ENE}
\prop_put:Nnn \l_tmpa_prop {English} {ENGL}
\prop_put:Nnn \l_tmpa_prop {Entomology} {ENTM}
\prop_put:Nnn \l_tmpa_prop {Environmental~and~Ecological~Engineering} {EEE}
\prop_put:Nnn \l_tmpa_prop {Food~Science} {FS}
\prop_put:Nnn \l_tmpa_prop {Forensic~and~Investigative~Sciences} {FIS?}
\prop_put:Nnn \l_tmpa_prop {Forestry~and~Natural~Resources} {FNR}
\prop_put:Nnn \l_tmpa_prop {Health~Sciences} {HSCI}
\prop_put:Nnn \l_tmpa_prop {Health~and~Kinesiology} {HK}
\prop_put:Nnn \l_tmpa_prop {History} {HIST}
\prop_put:Nnn \l_tmpa_prop {History~and~Philosphy} {HIST}
\prop_put:Nnn \l_tmpa_prop {Horticulture} {HORT}
\prop_put:Nnn \l_tmpa_prop {Hospitality~and~Tourism~Management} {HTM}
\prop_put:Nnn \l_tmpa_prop {Human~Development~and~Family~Studies} {HDFS}
\prop_put:Nnn \l_tmpa_prop {Industrial~Engineering} {IE}
\prop_put:Nnn \l_tmpa_prop {Industrial~and~Physical~Pharmacy} {IPPH}
\prop_put:Nnn \l_tmpa_prop {Interdisciplinary~Biomedical~Studies~Program} {IBSC}
\prop_put:Nnn \l_tmpa_prop {Interdisciplinary~Studies~(Comparitive~Literature)} {CMPL}
\prop_put:Nnn \l_tmpa_prop {Languages~and~Cultures} {LC}
\prop_put:Nnn \l_tmpa_prop {Linguistics} {LING}
\prop_put:Nnn \l_tmpa_prop {Management} {MGMT}
\prop_put:Nnn \l_tmpa_prop {Materials~Engineering} {MSE}
\prop_put:Nnn \l_tmpa_prop {Mathematical~Sciences} {MATH}
\prop_put:Nnn \l_tmpa_prop {Mathematics} {MATH}
\prop_put:Nnn \l_tmpa_prop {Mechanical~Engineering} {ME}
\prop_put:Nnn \l_tmpa_prop {Mechanical~and~Energy~Engineering} {MEE?}
\prop_put:Nnn \l_tmpa_prop {Mechnical~and~Civil~Engineering} {MCE}
\prop_put:Nnn \l_tmpa_prop {Medicinal~Chemistry~and~Molecular~Pharmacology} {MCMP}
\prop_put:Nnn \l_tmpa_prop {Musicology} {MUSICO}
\prop_put:Nnn \l_tmpa_prop {Music~Education} {MUSICE}
\prop_put:Nnn \l_tmpa_prop {Music~Theory} {MUSICT}
\prop_put:Nnn \l_tmpa_prop {Nuclear~Engineering} {NE}
\prop_put:Nnn \l_tmpa_prop {Nursing} {NUR}
\prop_put:Nnn \l_tmpa_prop {Nutrition~Science} {NUTR}
\prop_put:Nnn \l_tmpa_prop {Organizational~Behavior~and~Human~Resource~Management} {OBHR}
\prop_put:Nnn \l_tmpa_prop {Pharmacy~Practice} {PHPR}
\prop_put:Nnn \l_tmpa_prop {Philosophy} {PHIL}
\prop_put:Nnn \l_tmpa_prop {Philosophy~and~Literature} {PHILLIT}
\prop_put:Nnn \l_tmpa_prop {Physics} {PHYS}
\prop_put:Nnn \l_tmpa_prop {Physics~and~Astronomy} {PHYS}
\prop_put:Nnn \l_tmpa_prop {Political~Science} {POL}
\prop_put:Nnn \l_tmpa_prop {Psychological~Sciences} {PSY}
\prop_put:Nnn \l_tmpa_prop {Purdue~Thesis~Software~Development} {PSD}
\prop_put:Nnn \l_tmpa_prop {Sociology} {SOC}
\prop_put:Nnn \l_tmpa_prop {Speech,~Language,~and~Hearing~Sciences} {SLHS}
\prop_put:Nnn \l_tmpa_prop {Statistics} {STAT}
\prop_put:Nnn \l_tmpa_prop {Technology~Leadership~and~Innovation} {TLI}
\prop_put:Nnn \l_tmpa_prop {Theatre} {THTR}
\prop_put:Nnn \l_tmpa_prop {Thesis~and~Dissertation~Office} {TDO}
\prop_put:Nnn \l_tmpa_prop {Veterinary~Clinical~Sciences} {VCS}
\prop_put:Nnn \l_tmpa_prop {Writing~Lab/Online~Writing~Lab} {OWL}
\prop_put:Nnn \l_tmpa_prop {Youth~Development~and~Agricultural~Education} {YDAE}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZprogram}
\l_tmpa_tl
{
\edef\ZZproabb{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"program"~option.}
\ZZIW{"\ZZprogram"~is~not~on~this~list:}
\ZZIW{~~~~ Aeronautics~and~Astronautics}
\ZZIW{~~~~ Agricultural~Economics}
\ZZIW{~~~~ Agricultural~and~Biological~Engineering}
\ZZIW{~~~~ Agronomy}
\ZZIW{~~~~ American~Studies}
\ZZIW{~~~~ Animal~Sciences}
\ZZIW{~~~~ Anthropology}
\ZZIW{~~~~ Art~and~Design}
\ZZIW{~~~~ Aviation~and~Transportation~Technology}
\ZZIW{~~~~ Basic~Medical~Sciences}
\ZZIW{~~~~ Biochemistry}
\ZZIW{~~~~ Biological~Sciences}
\ZZIW{~~~~ Biology}
\ZZIW{~~~~ Biomedical~Engineering}
\ZZIW{~~~~ Botany~and~Plant~Pathology}
\ZZIW{~~~~ Chemical~Engineering}
\ZZIW{~~~~ Chemistry}
\ZZIW{~~~~ Chemistry~and~Chemical~Biology}
\ZZIW{~~~~ Child~Development~and~Family~Studies}
\ZZIW{~~~~ Civil~Engineering}
\ZZIW{~~~~ Civil~and~Mechanical~Engineering}
\ZZIW{~~~~ Communication}
\ZZIW{~~~~ Communications}
\ZZIW{~~~~ Comparitive~Pathobiology}
\ZZIW{~~~~ Computer~Graphics~Technology}
\ZZIW{~~~~ Computer~Science}
\ZZIW{~~~~ Computer~and~Information~Science}
\ZZIW{~~~~ Computer~and~Information~Technology}
\ZZIW{~~~~ Construction~Management~Technology}
\ZZIW{~~~~ Consumer~Science}
\ZZIW{~~~~ Curriculum~and~Instruction}
\ZZIW{~~~~ Earth,~Atmospheric,~and~Planetary~Sciences}
\ZZIW{~~~~ Economics}
\ZZIW{~~~~ Educational~Studies}
\ZZIW{~~~~ Electrical~and~Computer~Engineering}
\ZZIW{~~~~ Engineering~Education}
\ZZIW{~~~~ English}
\ZZIW{~~~~ Entomology}
\ZZIW{~~~~ Environmental~and~Ecological~Engineering}
\ZZIW{~~~~ Food~Science}
\ZZIW{~~~~ Forensic~and~Investigative~Sciences}
\ZZIW{~~~~ Forestry~and~Natural~Resources}
\ZZIW{~~~~ Health~Sciences}
\ZZIW{~~~~ Health~and~Kinesiology}
\ZZIW{~~~~ History}
\ZZIW{~~~~ History~and~Philosphy}
\ZZIW{~~~~ Horticulture}
\ZZIW{~~~~ Hospitality~and~Tourism~Management}
\ZZIW{~~~~ Human~Development~and~Family~Studies}
\ZZIW{~~~~ Industrial~Engineering}
\ZZIW{~~~~ Industrial~and~Physical~Pharmacy}
\ZZIW{~~~~ Interdisciplinary~Biomedical~Studies~Program}
\ZZIW{~~~~ Interdisciplinary~Studies~(Comparitive~Literature)}
\ZZIW{~~~~ Languages~and~Cultures}
\ZZIW{~~~~ Linguistics}
\ZZIW{~~~~ Management}
\ZZIW{~~~~ Materials~Engineering}
\ZZIW{~~~~ Mathematical~Sciences}
\ZZIW{~~~~ Mathematics}
\ZZIW{~~~~ Mechanical~Engineering}
\ZZIW{~~~~ Mechanical~and~Energy~Engineering}
\ZZIW{~~~~ Mechnical~and~Civil~Engineering}
\ZZIW{~~~~ Medicinal~Chemistry~and~Molecular~Pharmacology}
\ZZIW{~~~~ Musicology}
\ZZIW{~~~~ Music~Education}
\ZZIW{~~~~ Music~Theory}
\ZZIW{~~~~ Nuclear~Engineering}
\ZZIW{~~~~ Nursing}
\ZZIW{~~~~ Nutrition~Science}
\ZZIW{~~~~ Organizational~Behavior~and~Human~Resource~Management}
\ZZIW{~~~~ Pharmacy~Practice}
\ZZIW{~~~~ Philosophy}
\ZZIW{~~~~ Philosophy~and~Literature}
\ZZIW{~~~~ Physics}
\ZZIW{~~~~ Physics~and~Astronomy}
\ZZIW{~~~~ Political~Science}
\ZZIW{~~~~ Psychological~Sciences}
\ZZIW{~~~~ Purdue~Thesis~Software~Development}
\ZZIW{~~~~ Sociology}
\ZZIW{~~~~ Speech,~Language,~and~Hearing~Sciences}
\ZZIW{~~~~ Statistics}
\ZZIW{~~~~ Technology~Leadership~and~Innovation}
\ZZIW{~~~~ Theatre}
\ZZIW{~~~~ Thesis~and~Dissertation~Office}
\ZZIW{~~~~ Veterinary~Clinical~Sciences}
\ZZIW{~~~~ Writing~Lab/Online~Writing~Lab}
\ZZIW{~~~~ Youth~Development~and~Agricultural~Education}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.+}
\ZZprogramhead
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZprogramhead"+option.}
\ZZIW{"ZZprogramhead"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .+}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.+}
\ZZtitle
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZtitle"+option.}
\ZZIW{"ZZtitle"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .+}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZabbreviationsname
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZabbreviationsname"+option.}
\ZZIW{"ZZabbreviationsname"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZabstractname
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZabstractname"+option.}
\ZZIW{"ZZabstractname"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZacknowledgmentsname
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZacknowledgmentsname"+option.}
\ZZIW{"ZZacknowledgmentsname"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{\d+(\.\d+)?}
\baselinestretch
{
}
{
\makeplusletter
\ZZIW{Bad+"baselinestretch"+option.}
\ZZIW{"baselinestretch"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space \string\d+(\string\.\string\d+)?}
\stop
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {false} {\c_false_bool}
\prop_put:Nnn \l_tmpa_prop {true} {\c_true_bool}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZchapterblankpages}
\l_tmpa_tl
{
\edef\ZZchapterblankpagesB{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"chapterblankpages"~option.}
\ZZIW{"\ZZchapterblankpages"~is~not~on~this~list:}
\ZZIW{~~~~ false}
\ZZIW{~~~~ true}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {false} {\c_false_bool}
\prop_put:Nnn \l_tmpa_prop {true} {\c_true_bool}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZcoversheets}
\l_tmpa_tl
{
\edef\ZZcoversheetsB{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"coversheets"~option.}
\ZZIW{"\ZZcoversheets"~is~not~on~this~list:}
\ZZIW{~~~~ false}
\ZZIW{~~~~ true}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{\d+}
\ZZdebuglevel
{
\int_const:Nn \ZZdebuglevelI \l_tmpa_tl
}
{
\makeplusletter
\ZZIW{Bad+"ZZdebuglevel"+option.}
\ZZIW{"ZZdebuglevel"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space \string\d+}
\stop
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {false} {\c_false_bool}
\prop_put:Nnn \l_tmpa_prop {true} {\c_true_bool}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZdebugoptions}
\l_tmpa_tl
{
\edef\ZZdebugoptionsB{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"debugoptions"~option.}
\ZZIW{"\ZZdebugoptions"~is~not~on~this~list:}
\ZZIW{~~~~ false}
\ZZIW{~~~~ true}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {false} {\c_false_bool}
\prop_put:Nnn \l_tmpa_prop {true} {\c_true_bool}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZdebugorder}
\l_tmpa_tl
{
\edef\ZZdebugorderB{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"debugorder"~option.}
\ZZIW{"\ZZdebugorder"~is~not~on~this~list:}
\ZZIW{~~~~ false}
\ZZIW{~~~~ true}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {false} {\c_false_bool}
\prop_put:Nnn \l_tmpa_prop {true} {\c_true_bool}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZdebugparameters}
\l_tmpa_tl
{
\edef\ZZdebugparametersB{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"debugparameters"~option.}
\ZZIW{"\ZZdebugparameters"~is~not~on~this~list:}
\ZZIW{~~~~ false}
\ZZIW{~~~~ true}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {false} {\c_false_bool}
\prop_put:Nnn \l_tmpa_prop {true} {\c_true_bool}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZendnotes}
\l_tmpa_tl
{
\edef\ZZendnotesB{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"endnotes"~option.}
\ZZIW{"\ZZendnotes"~is~not~on~this~list:}
\ZZIW{~~~~ false}
\ZZIW{~~~~ true}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {false} {\c_false_bool}
\prop_put:Nnn \l_tmpa_prop {true} {\c_true_bool}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZfrenchspacing}
\l_tmpa_tl
{
\edef\ZZfrenchspacingB{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"frenchspacing"~option.}
\ZZIW{"\ZZfrenchspacing"~is~not~on~this~list:}
\ZZIW{~~~~ false}
\ZZIW{~~~~ true}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {arabic} {arabic}
\prop_put:Nnn \l_tmpa_prop {roman} {roman}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZfrontnumbering}
\l_tmpa_tl
{
\edef\ZZfrontnumbering{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"frontnumbering"~option.}
\ZZIW{"\ZZfrontnumbering"~is~not~on~this~list:}
\ZZIW{~~~~ arabic}
\ZZIW{~~~~ roman}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZglossaryname
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZglossaryname"+option.}
\ZZIW{"ZZglossaryname"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {false} {\c_false_bool}
\prop_put:Nnn \l_tmpa_prop {true} {\c_true_bool}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZiso}
\l_tmpa_tl
{
\edef\ZZisoB{\l_tmpa_tl}
}
{
\makeplusletter
\ZZIW{Bad~"iso80000-2"~option.}
\ZZIW{"\ZZiso80000-2"~is~not~on~this~list:}
\ZZIW{~~~~ false}
\ZZIW{~~~~ true}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZlistoffiguresname
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZlistoffiguresname"+option.}
\ZZIW{"ZZlistoffiguresname"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZlistoftablesname
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZlistoftablesname"+option.}
\ZZIW{"ZZlistoftablesname"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZnomenclaturename
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZnomenclaturename"+option.}
\ZZIW{"ZZnomenclaturename"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {oneside} {oneside}
\prop_put:Nnn \l_tmpa_prop {pdf} {pdf}
\prop_put:Nnn \l_tmpa_prop {twoside} {twoside}
\prop_get:NVNTF
\l_tmpa_prop
{\ZZoutput}
\l_tmpa_tl
{
}
{
\makeplusletter
\ZZIW{Bad~"output"~option.}
\ZZIW{"\ZZoutput"~is~not~on~this~list:}
\ZZIW{~~~~ oneside}
\ZZIW{~~~~ pdf}
\ZZIW{~~~~ twoside}
\ZZIW{stop~command~is~on~the~next~line}
\stop
\makeplusother
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZprefacename
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZprefacename"+option.}
\ZZIW{"ZZprefacename"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZsymbolsname
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZsymbolsname"+option.}
\ZZIW{"ZZsymbolsname"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZtableofcontentsname
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZtableofcontentsname"+option.}
\ZZIW{"ZZtableofcontentsname"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\makeplusletter
\makeplusother
\regex_match:nVTF
{.*}
\ZZvitaname
{
}
{
\makeplusletter
\ZZIW{Bad+"ZZvitaname"+option.}
\ZZIW{"ZZvitaname"+does+not+match+this+regular+expression:}
\makeplusother
\ZZIW{\space\space\space\space .*}
\stop
}
\edef\ZZinscam{\ZZins-\ZZcam}
\edef\ZZinscampro{\ZZins-\ZZcam-\ZZpro}
\edef\ZZinscamprodeg{\ZZins-\ZZcam-\ZZpro-\ZZdeg}
\group_begin:
\char_set_catcode_active:N +
\def+{~}
\ZZIW{}
\ZZIW{OPTIONS}
\ZZIW{++debuglevel+++++++\ZZdebuglevel}
\ZZIW{++debugoptions+++++\ZZdebugoptions}
\ZZIW{++debugorder+++++++\ZZdebugorder}
\ZZIW{++debugparameters++\ZZdebugparameters}
\group_end:
\group_begin:
\char_set_catcode_active:N +
\def+{~}
\ZZIW{}
\ZZIW{MANDATORY+PARAMETERS}
\ZZIW{++INPUT}
\ZZIW{++++author++++++++++"\ZZauthor"}
\ZZIW{++++campus++++++++++"\ZZcampus"}
\ZZIW{++++degree++++++++++"\ZZdegree"}
\ZZIW{++++document++++++++"\ZZdocument"}
\ZZIW{++++graduation++++++"\ZZgraduation"}
\ZZIW{++++institution+++++"\ZZinstitution"}
\ZZIW{++++program+++++++++"\ZZprogram"}
\ZZIW{++SHORTENED}
\ZZIW{++++ZZcam+++++++++++"\ZZcam"}
\ZZIW{++++ZZdeg+++++++++++"\ZZdeg"}
\ZZIW{++++ZZins+++++++++++"\ZZins"}
\ZZIW{++++ZZpro+++++++++++"\ZZpro"}
\ZZIW{++DERIVED}
\ZZIW{++++ZZinscam++++++++"\ZZinscam"}
\ZZIW{++++ZZinscampro+++++"\ZZinscampro"}
\ZZIW{++++ZZinscamprodeg++"\ZZinscamprodeg"}
\group_end:
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {uh-ma-econ-phd} {0}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musice-ma} {0}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musice-mls} {0}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musice-phd} {0}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musict-ma} {0}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musict-mls} {0}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musict-phd} {0}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musico-ma} {0}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musico-mls} {0}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musico-phd} {0}
\prop_put:Nnn \l_tmpa_prop {unr-re-me-ms} {0}
\prop_put:Nnn \l_tmpa_prop {unr-re-me-phd} {0}
\prop_put:Nnn \l_tmpa_prop {pu-fw-bio-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-fw-cme?-mse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-fw-comm-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-fw-comm-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-fw-cs-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-fw-ece-mse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-fw-engl-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-in-bio-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-in-bme-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-in-bme-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-in-ccb?-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-in-ccb?-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-in-cis?-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-in-cis?-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-in-ece-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-in-ece-mse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-in-fis?-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-in-math-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-in-math-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-in-mee?-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-in-mee?-mse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-in-mee?-msme} {3}
\prop_put:Nnn \l_tmpa_prop {pu-in-mee?-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-in-phys-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-in-phys-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-nw-bio-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-nw-cdfs-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-nw-ece-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-nw-hist-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-nw-mce-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-nw-mce-mse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-aae-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-aae-msaa} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-aae-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-abe-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-abe-msabe} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-abe-mse} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-abe-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-agecon-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-agecon-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-agry-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-agry-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-amst-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-amst-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ansc-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ansc-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-anth-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-anth-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ad-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ad-mfa} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ad-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-satt-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-satt-msaam} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-satt-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bms-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bms-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bchm-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bchm-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bme-msbme} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bme-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-biol-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-biol-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-btny-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-btny-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bcm-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bcm-msbcm} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-chem-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-chem-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-che-msche} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-che-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ce-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ce-msce} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ce-mse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ce-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-com-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-com-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-com-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cpb-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cpb-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cgt-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cgt-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cit-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cs-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cs-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-csr-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-csr-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-edci-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-edci-msed} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-edci-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-eaps-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-eaps-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-econ-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-econ-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-edst-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-edst-msed} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-edst-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-eee-mh} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-eee-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ece-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ece-msece} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ece-mse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ece-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ene-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ene-mse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ene-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-engl-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-engl-mfa} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-engl-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-entm-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-entm-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-fs-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-fs-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-fnr-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-fnr-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hk-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hk-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hsci-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hsci-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hdfs-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hdfs-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hist-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hist-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hort-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hort-msa} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hort-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-htm-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-htm-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ipph-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ipph-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ie-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ie-msie} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ie-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ibsc-phd} {unknown}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cmpl-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cmpl-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-lc-ma} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-lc-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ling-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ling-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mgmt-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mgmt-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-math-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-math-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mse-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mse-msmse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mse-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-me-ms} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-me-mse} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-me-msme} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-me-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mcmp-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mcmp-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ne-msne} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ne-phd} {3}
\prop_put:Nnn \l_tmpa_prop {pu-wl-nur-dnp} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-nur-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-nur-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-nutr-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-nutr-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-obhr-mshrm} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-obhr-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phil-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phil-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phillit-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phpr-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phpr-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phys-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phys-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-pol-ma} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-pol-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-psy-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-psy-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-soc-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-soc-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-slhs-aud} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-slhs-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-slhs-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-stat-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-stat-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-thtr-mfa} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-tli-ms} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-tli-msit} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-tli-phd} {2}
\prop_put:Nnn \l_tmpa_prop {pu-wl-vcs-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-vcs-phd} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ydae-ms} {1}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ydae-phd} {1}
\prop_get:NVNTF
\l_tmpa_prop
\ZZinscamprodeg
\ZZtemplate
{
\ZZIW{}
\ZZIW{(}
\ZZIW{\ZZindenta \ZZDebuggingMessage}
\ZZIW{\ZZindenta This~institution/campus/program/degree~combination~is~ok:}
\ZZIW{\ZZindentb \ZZinstitution}
\ZZIW{\ZZindentc \ZZcampus}
\ZZIW{\ZZindentd \ZZprogram}
\ZZIW{\ZZindente \ZZdegree}
\ZZIW{)}
}
{
\ZZIW{}
\ZZIW{THIS~IS~A~BAD~INSTITUTION/CAMPUS/PROGRAM/DEGREE~COMBINATION:}
\ZZIW{}
\ZZIW{\ZZindenta \ZZinstitution}
\ZZIW{\ZZindentb \ZZcampus}
\ZZIW{\ZZindentc \ZZprogram}
\ZZIW{\ZZindentd \ZZdegree}
\ZZIW{}
\ZZIW{THE~LEGAL~INSTITUTION/CAMPUS/PROGRAM/DEGREE~COMBINATIONS~ARE:}
\ZZIW{}
\ZZIW{\ZZindenta University~of~Hawaii}
\ZZIW{\ZZindentb Manoa}
\ZZIW{\ZZindentc Economics}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Indiana~University}
\ZZIW{\ZZindentb Bloomington}
\ZZIW{\ZZindentc Music~Education}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Indiana~University}
\ZZIW{\ZZindentb Bloomington}
\ZZIW{\ZZindentc Music~Education}
\ZZIW{\ZZindentd Master~of~Library~Science}
\ZZIW{}
\ZZIW{\ZZindenta Indiana~University}
\ZZIW{\ZZindentb Bloomington}
\ZZIW{\ZZindentc Music~Education}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Indiana~University}
\ZZIW{\ZZindentb Bloomington}
\ZZIW{\ZZindentc Music~Theory}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Indiana~University}
\ZZIW{\ZZindentb Bloomington}
\ZZIW{\ZZindentc Music~Theory}
\ZZIW{\ZZindentd Master~of~Library~Science}
\ZZIW{}
\ZZIW{\ZZindenta Indiana~University}
\ZZIW{\ZZindentb Bloomington}
\ZZIW{\ZZindentc Music~Theory}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Indiana~University}
\ZZIW{\ZZindentb Bloomington}
\ZZIW{\ZZindentc Musicology}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Indiana~University}
\ZZIW{\ZZindentb Bloomington}
\ZZIW{\ZZindentc Musicology}
\ZZIW{\ZZindentd Master~of~Library~Science}
\ZZIW{}
\ZZIW{\ZZindenta Indiana~University}
\ZZIW{\ZZindentb Bloomington}
\ZZIW{\ZZindentc Musicology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta }
\ZZIW{\ZZindentb Reno}
\ZZIW{\ZZindentc Mechanical~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta }
\ZZIW{\ZZindentb Reno}
\ZZIW{\ZZindentc Mechanical~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Fort~Wayne}
\ZZIW{\ZZindentc Biological~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Fort~Wayne}
\ZZIW{\ZZindentc Civil~and~Mechanical~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Fort~Wayne}
\ZZIW{\ZZindentc Communication}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Fort~Wayne}
\ZZIW{\ZZindentc Communication}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Fort~Wayne}
\ZZIW{\ZZindentc Computer~Science}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Fort~Wayne}
\ZZIW{\ZZindentc Electrical~and~Computer~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Fort~Wayne}
\ZZIW{\ZZindentc English}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Biology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Biomedical~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Biomedical~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Chemistry~and~Chemical~Biology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Chemistry~and~Chemical~Biology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Computer~and~Information~Science}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Computer~and~Information~Science}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Electrical~and~Computer~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Electrical~and~Computer~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Forensic~and~Investigative~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Mathematical~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Mathematical~Sciences}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Mechanical~and~Energy~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Mechanical~and~Energy~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Mechanical~and~Energy~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Mechanical~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Mechanical~and~Energy~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Physics}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Indianapolis}
\ZZIW{\ZZindentc Physics}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Northwest}
\ZZIW{\ZZindentc Biology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Northwest}
\ZZIW{\ZZindentc Child~Development~and~Family~Studies}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Northwest}
\ZZIW{\ZZindentc Electrical~and~Computer~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Northwest}
\ZZIW{\ZZindentc History~and~Philosphy}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Northwest}
\ZZIW{\ZZindentc Mechnical~and~Civil~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb Northwest}
\ZZIW{\ZZindentc Mechnical~and~Civil~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Aeronautics~and~Astronautics}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Aeronautics~and~Astronautics}
\ZZIW{\ZZindentd Master~of~Science~in~Aeronautics~and~Astronautics}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Aeronautics~and~Astronautics}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Agricultural~and~Biological~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Agricultural~and~Biological~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Agricultural~and~Biological~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Agricultural~and~Biological~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Agricultural~and~Biological~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Agricultural~Economics}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Agricultural~Economics}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Agronomy}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Agronomy}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc American~Studies}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc American~Studies}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Animal~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Animal~Sciences}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Anthropology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Anthropology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Art~and~Design}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Art~and~Design}
\ZZIW{\ZZindentd Master~of~Fine~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Art~and~Design}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Aviation~and~Transportation~Technology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Aviation~and~Transportation~Technology}
\ZZIW{\ZZindentd Master~of~Science~in~Aviation~and~Aerospace~Management}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Aviation~and~Transportation~Technology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Basic~Medical~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Basic~Medical~Sciences}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Biochemistry}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Biochemistry}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Biomedical~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Biomedical~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Biomedical~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Biological~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Biological~Sciences}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Botany~and~Plant~Pathology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Botany~and~Plant~Pathology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Construction~Management~Technology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Construction~Management~Technology}
\ZZIW{\ZZindentd Master~of~Science~in~Building~Construction~Management}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Chemistry}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Chemistry}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Chemical~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Chemical~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Chemical~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Civil~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Civil~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Civil~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Civil~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Civil~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Communications}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Communications}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Communications}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Comparitive~Pathobiology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Comparitive~Pathobiology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Computer~Graphics~Technology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Computer~Graphics~Technology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Computer~and~Information~Technology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Computer~Science}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Computer~Science}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Consumer~Science}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Consumer~Science}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Curriculum~and~Instruction}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Curriculum~and~Instruction}
\ZZIW{\ZZindentd Master~of~Science~in~Education}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Curriculum~and~Instruction}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Earth,~Atmospheric,~and~Planetary~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Earth,~Atmospheric,~and~Planetary~Sciences}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Economics}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Economics}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Educational~Studies}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Educational~Studies}
\ZZIW{\ZZindentd Master~of~Science~in~Education}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Educational~Studies}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Environmental~and~Ecological~Engineering}
\ZZIW{\ZZindentd }
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Environmental~and~Ecological~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Electrical~and~Computer~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Electrical~and~Computer~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Electrical~and~Computer~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Electrical~and~Computer~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Electrical~and~Computer~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Engineering~Education}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Engineering~Education}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Engineering~Education}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc English}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc English}
\ZZIW{\ZZindentd Master~of~Fine~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc English}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Entomology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Entomology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Food~Science}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Food~Science}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Forestry~and~Natural~Resources}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Forestry~and~Natural~Resources}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Health~and~Kinesiology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Health~and~Kinesiology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Health~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Health~Sciences}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Human~Development~and~Family~Studies}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Human~Development~and~Family~Studies}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc History}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc History}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Horticulture}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Horticulture}
\ZZIW{\ZZindentd Master~of~Science~in~Agriculture}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Horticulture}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Hospitality~and~Tourism~Management}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Hospitality~and~Tourism~Management}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Industrial~and~Physical~Pharmacy}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Industrial~and~Physical~Pharmacy}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Industrial~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Industrial~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Industrial~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Industrial~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Interdisciplinary~Biomedical~Studies~Program}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Interdisciplinary~Studies~(Comparitive~Literature)}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Interdisciplinary~Studies~(Comparitive~Literature)}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Languages~and~Cultures}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Languages~and~Cultures}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Linguistics}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Linguistics}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Management}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Management}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Mathematics}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Mathematics}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Materials~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Materials~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Materials~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Materials~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Mechanical~Engineering}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Mechanical~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Mechanical~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Mechanical~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Mechanical~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Medicinal~Chemistry~and~Molecular~Pharmacology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Medicinal~Chemistry~and~Molecular~Pharmacology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Nuclear~Engineering}
\ZZIW{\ZZindentd Master~of~Science~in~Nuclear~Engineering}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Nuclear~Engineering}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Nursing}
\ZZIW{\ZZindentd Doctor~of~Nursing~Practice}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Nursing}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Nursing}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Nutrition~Science}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Nutrition~Science}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Organizational~Behavior~and~Human~Resource~Management}
\ZZIW{\ZZindentd Master~of~Science~in~Human~Resources~Management}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Organizational~Behavior~and~Human~Resource~Management}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Philosophy}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Philosophy}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Philosophy~and~Literature}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Pharmacy~Practice}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Pharmacy~Practice}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Physics~and~Astronomy}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Physics~and~Astronomy}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Political~Science}
\ZZIW{\ZZindentd Master~of~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Political~Science}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Psychological~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Psychological~Sciences}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Sociology}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Sociology}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Speech,~Language,~and~Hearing~Sciences}
\ZZIW{\ZZindentd Doctor~of~Audiology}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Speech,~Language,~and~Hearing~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Speech,~Language,~and~Hearing~Sciences}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Statistics}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Statistics}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Theatre}
\ZZIW{\ZZindentd Master~of~Fine~Arts}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Technology~Leadership~and~Innovation}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Technology~Leadership~and~Innovation}
\ZZIW{\ZZindentd Master~of~Science~in~Industrial~Technology}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Technology~Leadership~and~Innovation}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Veterinary~Clinical~Sciences}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Veterinary~Clinical~Sciences}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Youth~Development~and~Agricultural~Education}
\ZZIW{\ZZindentd Master~of~Science}
\ZZIW{}
\ZZIW{\ZZindenta Purdue~University}
\ZZIW{\ZZindentb West~Lafayette}
\ZZIW{\ZZindentc Youth~Development~and~Agricultural~Education}
\ZZIW{\ZZindentd Doctor~of~Philosophy}
\ZZIW{}
\stop
}
\bool_new:N \ZZCenterCaptionB
\bool_set_true:N \ZZCenterCaptionB
\newboolean{ZZChapterBlankPagesB}
\setboolean{ZZChapterBlankPagesB}{false}
\newboolean{ZZCoverSheetsB}
\setboolean{ZZCoverSheetsB}{false}
\newboolean{ZZFoundB}
\setboolean{ZZFoundB}{false}
\bool_new:N \ZZinappendixb
\bool_set_false:N \ZZinappendixb
\newboolean{ZZInChaptersB}
\setboolean{ZZInChaptersB}{false}
\newboolean{ZZinotherb}
\setboolean{ZZinotherb}{false}
\newboolean{ZZNonChapterBlankPagesB}
\setboolean{ZZNonChapterBlankPagesB}{false}
\newboolean{ZZNumberAllVolumesB}
\setboolean{ZZNumberAllVolumesB}{false}
\newboolean{ZZUnsetB}
\setboolean{ZZUnsetB}{false}
\setcounter{ZZprevindex}{0}
\bool_new:N \ZZtitlepresent
\newcommand{\ZZtitlemessage}{\string \maketitle}
\newcounter{ZZtitlepos}   \setcounter{ZZtitlepos}{1}
\newcounter{ZZtitleincr}  \setcounter{ZZtitleincr}{1}
\bool_new:N \ZZdedicationpresent
\newcommand{\ZZdedicationmessage}{\string dedication}
\newcounter{ZZdedicationpos}   \setcounter{ZZdedicationpos}{2}
\newcounter{ZZdedicationincr}  \setcounter{ZZdedicationincr}{1}
\bool_new:N \ZZacknowledgmentspresent
\newcommand{\ZZacknowledgmentsmessage}{\string acknowledgments}
\newcounter{ZZacknowledgmentspos}   \setcounter{ZZacknowledgmentspos}{3}
\newcounter{ZZacknowledgmentsincr}  \setcounter{ZZacknowledgmentsincr}{1}
\bool_new:N \ZZprefacepresent
\newcommand{\ZZprefacemessage}{\string preface}
\newcounter{ZZprefacepos}   \setcounter{ZZprefacepos}{4}
\newcounter{ZZprefaceincr}  \setcounter{ZZprefaceincr}{1}
\bool_new:N \ZZtableofcontentspresent
\newcommand{\ZZtableofcontentsmessage}{\string \tableofcontents}
\newcounter{ZZtableofcontentspos}   \setcounter{ZZtableofcontentspos}{5}
\newcounter{ZZtableofcontentsincr}  \setcounter{ZZtableofcontentsincr}{1}
\bool_new:N \ZZlistoftablespresent
\newcommand{\ZZlistoftablesmessage}{\string \listoftables}
\newcounter{ZZlistoftablespos}   \setcounter{ZZlistoftablespos}{6}
\newcounter{ZZlistoftablesincr}  \setcounter{ZZlistoftablesincr}{1}
\bool_new:N \ZZlistoffigurespresent
\newcommand{\ZZlistoffiguresmessage}{\string \listoffigures}
\newcounter{ZZlistoffigurespos}   \setcounter{ZZlistoffigurespos}{7}
\newcounter{ZZlistoffiguresincr}  \setcounter{ZZlistoffiguresincr}{1}
\bool_new:N \ZZsymbolspresent
\newcommand{\ZZsymbolsmessage}{\string symbols}
\newcounter{ZZsymbolspos}   \setcounter{ZZsymbolspos}{8}
\newcounter{ZZsymbolsincr}  \setcounter{ZZsymbolsincr}{1}
\bool_new:N \ZZabbreviationspresent
\newcommand{\ZZabbreviationsmessage}{\string abbreviations}
\newcounter{ZZabbreviationspos}   \setcounter{ZZabbreviationspos}{9}
\newcounter{ZZabbreviationsincr}  \setcounter{ZZabbreviationsincr}{1}
\bool_new:N \ZZnomenclaturepresent
\newcommand{\ZZnomenclaturemessage}{\string nomenclature}
\newcounter{ZZnomenclaturepos}   \setcounter{ZZnomenclaturepos}{10}
\newcounter{ZZnomenclatureincr}  \setcounter{ZZnomenclatureincr}{1}
\bool_new:N \ZZglossarypresent
\newcommand{\ZZglossarymessage}{\string glossary}
\newcounter{ZZglossarypos}   \setcounter{ZZglossarypos}{11}
\newcounter{ZZglossaryincr}  \setcounter{ZZglossaryincr}{1}
\bool_new:N \ZZabstractpresent
\newcommand{\ZZabstractmessage}{\string abstract}
\newcounter{ZZabstractpos}   \setcounter{ZZabstractpos}{12}
\newcounter{ZZabstractincr}  \setcounter{ZZabstractincr}{1}
\bool_new:N \ZZchapterpresent
\newcommand{\ZZchaptermessage}{\string chapter}
\newcounter{ZZchapterpos}   \setcounter{ZZchapterpos}{13}
\newcounter{ZZchapterincr}  \setcounter{ZZchapterincr}{0}
\bool_new:N \ZZbibliographypresent
\newcommand{\ZZbibliographymessage}{\string bibliography}
\newcounter{ZZbibliographypos}   \setcounter{ZZbibliographypos}{14}
\newcounter{ZZbibliographyincr}  \setcounter{ZZbibliographyincr}{1}
\bool_new:N \ZZappendixpresent
\newcommand{\ZZappendixmessage}{\string appendix}
\newcounter{ZZappendixpos}   \setcounter{ZZappendixpos}{15}
\newcounter{ZZappendixincr}  \setcounter{ZZappendixincr}{1}
\bool_new:N \ZZappendicespresent
\newcommand{\ZZappendicesmessage}{\string appendices}
\newcounter{ZZappendicespos}   \setcounter{ZZappendicespos}{16}
\newcounter{ZZappendicesincr}  \setcounter{ZZappendicesincr}{1}
\bool_new:N \ZZachapterpresent
\newcommand{\ZZachaptermessage}{\string chapter}
\newcounter{ZZachapterpos}   \setcounter{ZZachapterpos}{17}
\newcounter{ZZachapterincr}  \setcounter{ZZachapterincr}{0}
\bool_new:N \ZZnotesandfootnotespresent
\newcommand{\ZZnotesandfootnotesmessage}{\string notesandfootnotes}
\newcounter{ZZnotesandfootnotespos}   \setcounter{ZZnotesandfootnotespos}{18}
\newcounter{ZZnotesandfootnotesincr}  \setcounter{ZZnotesandfootnotesincr}{1}
\bool_new:N \ZZvitapresent
\newcommand{\ZZvitamessage}{\string vita}
\newcounter{ZZvitapos}   \setcounter{ZZvitapos}{19}
\newcounter{ZZvitaincr}  \setcounter{ZZvitaincr}{1}
\bool_new:N \ZZpublicationpresent
\newcommand{\ZZpublicationmessage}{\string publication}
\newcounter{ZZpublicationpos}   \setcounter{ZZpublicationpos}{20}
\newcounter{ZZpublicationincr}  \setcounter{ZZpublicationincr}{1}
\bool_new:N \ZZpublicationspresent
\newcommand{\ZZpublicationsmessage}{\string publications}
\newcounter{ZZpublicationspos}   \setcounter{ZZpublicationspos}{20}
\newcounter{ZZpublicationsincr}  \setcounter{ZZpublicationsincr}{1}
\newcommand{\ZZpresentandinordererror}[1]
{
\ZZErrorBegin
\ZZIW{The "#1" part of the document is out of order.}
\ZZIW{The parts of the document should be in this order:}
\ZZIW{\ZZindenta \maketitle}
\ZZIW{\ZZindenta dedication}
\ZZIW{\ZZindenta acknowledgments}
\ZZIW{\ZZindenta preface}
\ZZIW{\ZZindenta \tableofcontents}
\ZZIW{\ZZindenta \listoftables}
\ZZIW{\ZZindenta \listoffigures}
\ZZIW{\ZZindenta symbols}
\ZZIW{\ZZindenta abbreviations}
\ZZIW{\ZZindenta nomenclature}
\ZZIW{\ZZindenta glossary}
\ZZIW{\ZZindenta abstract}
\ZZIW{\ZZindenta chapter}
\ZZIW{\ZZindenta bibliography}
\ZZIW{\ZZindenta appendix}
\ZZIW{\ZZindenta appendices}
\ZZIW{\ZZindenta chapter}
\ZZIW{\ZZindenta notesandfootnotes}
\ZZIW{\ZZindenta vita}
\ZZIW{\ZZindenta publication}
\ZZIW{\ZZindenta publications}
\ZZErrorEnd
}
\newcommand{\ZZpresentandinorder}[1]
{
\bool_set_true:c {ZZ#1present}
\setcounter{ZZnameindex}{\arabic{ZZ#1pos}}
\ifthenelse{\value{ZZnameindex} < \value{ZZprevindex}}
{\ZZpresentandinordererror{#1}}
{\setcounter{ZZprevindex}{\value{ZZnameindex}}}
}
\newcommand{\ZZaftercampus}{, Indiana, United States}
\newcommand{\bcaption}
{
\bool_set_true:N \ZZCenterCaptionB
\refstepcounter\@captype \@dblarg{\@caption\@captype}
}
\DeclareRobustCommand{\okina}
{%
\raisebox
{\dimexpr\fontcharht\font`A-\height}%
{\scalebox{0.8}{`}}%
}
\newcommand{\ZZnottableofcontents}{}
\NeedsTeXFormat{LaTeX2e}
\RequirePackage{xkeyval}
\ifpdf
\else
\ZZIW{This document must be processed using pdflatex}
\ZZIW{so figures are processed correctly.}
\stop
\fi
\clubpenalty         = 10000
\displaywidowpenalty = 10000
\widowpenalty        = 10000
\def\@dottedtocline#1#2#3#4#5#6
{
\ifnum #1>\c@tocdepth
\else
\vskip #2
{
\leftskip #3
\rightskip \@tocrmarg
\parfillskip -\rightskip
\parindent = #3
\@afterindenttrue
\interlinepenalty\@M
\leavevmode
\@tempdima = #4
\advance\@tempdima \ZZpaddinglength
\advance\leftskip \@tempdima
\hbox{}\hskip -\leftskip
#5\nobreak
\leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern \@dotsep mu$}\hfill
\nobreak
\renewcommand{\@pnumwidth}{1.55em}
\setlength{\ZZtl}{\@pnumwidth}
\settowidth{\ZZtlb}{\reset@font \rm #6}
\ifdim \ZZtlb>\ZZtl
\hbox to\ZZtlb{\hfil\reset@font \rm #6}\par
\else
\hbox to\ZZtl{\hfil\reset@font \rm #6}\par
\fi
}
\fi
}
\def\big@toc@skip{0.5\baselineskip plus 0.2\p@}
\def\small@toc@skip{0pt}
\newcommand{\ZZAbort}
{
\ZZIW{ABORTING..}
\ZZIW{}
\ZZIW{}
\stop
}
\newcommand{\ZZbaselinestretch}[1]
{
\renewcommand{\baselinestretch}{#1}
\reset@font
}
\newcommand{\ZZBlankPage}
{
\clearpage
\mbox{}
\clearpage
}
\newcommand{\ZZError}[1]
{
\ZZIW{}
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix\space\space #1}
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix}
\ZZIW{}
\stop
}
\newcommand{\ZZErrorBegin}
{
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix\space\space BEGIN ERROR MESSAGE}
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix}
}
\newcommand{\ZZErrorEnd}
{
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix\space\space END ERROR MESSAGE}
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix}
\stop
}
\newcommand{\ZZMessage@prefix}{**********}
\newcommand{\ZZMessage}[1]
{
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix\space\space #1}
\ZZIW{\ZZMessage@prefix}
\ZZIW{\ZZMessage@prefix}
}
\newcommand{\ZZVersion}{2.0.0-beta.52}
\AtBeginDocument
{
\usepackage{notoccite}
\def\@evenfoot{\hfil\textrm{\thepage}\hfil}
\def\@oddfoot{\hfil\textrm{\thepage}\hfil}
}
\def\ZZtitlefont{\large\bf}
\def\ZZauthorfont{\bf}
\def\ZZdocumentfont{\bf}
\def\ZZsubmittedfont{\it}
\def\ZZdegreefont{\bf}
\newbox\ZZboxa
\prop_clear:N \l_tmpa_prop
\prop_put:Nnn \l_tmpa_prop {iu-bl-musice} {Department~of~Music~Education}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musico} {Department~of~Musicology}
\prop_put:Nnn \l_tmpa_prop {iu-bl-musict} {Department~of~Music~Theory}
\prop_put:Nnn \l_tmpa_prop {pu-fw-bio} {Department~of~Biological~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-fw-cme?} {Department~of~Civil~and~Mechanical~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-fw-comm} {Department~of~Communication}
\prop_put:Nnn \l_tmpa_prop {pu-fw-cs} {Department~of~Computer~Science}
\prop_put:Nnn \l_tmpa_prop {pu-fw-ece} {Department~of~Electrical~and~Computer~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-fw-engl} {Department~of~English}
\prop_put:Nnn \l_tmpa_prop {pu-in-bio} {Department~of~Biology}
\prop_put:Nnn \l_tmpa_prop {pu-in-bme} {Department~of~Biomedical~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-in-ccb?} {Department~of~Chemistry~and~Chemical~Biology}
\prop_put:Nnn \l_tmpa_prop {pu-in-cis?} {Department~of~Computer~and~Information~Science}
\prop_put:Nnn \l_tmpa_prop {pu-in-ece} {Department~of~Electrical~and~Computer~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-in-fis?} {Department~of~Forensic~and~Investigative~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-in-math} {Department~of~Mathematical~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-in-mee?} {Department~of~Mechanical~and~Energy~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-in-phys} {Department~of~Physics}
\prop_put:Nnn \l_tmpa_prop {pu-nw-bio} {Department~of~Biology}
\prop_put:Nnn \l_tmpa_prop {pu-nw-cdfs} {Department~of~Child~Development~and~Family~Studies}
\prop_put:Nnn \l_tmpa_prop {pu-nw-ece} {Department~of~Electrical~and~Computer~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-nw-hist} {Department~of~History~and~Philosphy}
\prop_put:Nnn \l_tmpa_prop {pu-nw-mce} {Department~of~Mechnical~and~Civil~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-aae} {School~of~Aeronautics~and~Astronautics}
\prop_put:Nnn \l_tmpa_prop {pu-wl-abe} {School~of~Agricultural~and~Biological~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ad} {Department~of~Art~and~Design}
\prop_put:Nnn \l_tmpa_prop {pu-wl-agecon} {Department~of~Agricultural~Economics}
\prop_put:Nnn \l_tmpa_prop {pu-wl-agry} {Department~of~Agronomy}
\prop_put:Nnn \l_tmpa_prop {pu-wl-amst} {Department~of~American~Studies}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ansc} {Department~of~Animal~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-wl-anth} {Department~of~Anthropology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bchm} {Department~of~Biochemistry}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bcm} {School~of~Construction~Management~Technology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-biol} {Department~of~Biological~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bme} {Weldon~School~of~Biomedical~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-bms} {Department~of~Basic~Medical~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-wl-btny} {Department~of~Botany~and~Plant~Pathology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ce} {Lyles~School~of~Civil~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cgt} {Department~of~Computer~Graphics~Technology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-che} {Davidson~School~of~Chemical~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-chem} {Department~of~Chemistry}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cit} {Department~of~Computer~and~Information~Technology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cmpl} {School~of~Interdisciplinary~Studies~(Comparitive~Literature)}
\prop_put:Nnn \l_tmpa_prop {pu-wl-com} {Brian~Lamb~School~of~Communications}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cpb} {Department~of~Comparitive~Pathobiology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-cs} {Department~of~Computer~Science}
\prop_put:Nnn \l_tmpa_prop {pu-wl-csr} {Department~of~Consumer~Science}
\prop_put:Nnn \l_tmpa_prop {pu-wl-eaps} {Department~of~Earth,~Atmospheric,~and~Planetary~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ece} {School~of~Electrical~and~Computer~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-econ} {Department~of~Economics}
\prop_put:Nnn \l_tmpa_prop {pu-wl-edci} {Department~of~Curriculum~and~Instruction}
\prop_put:Nnn \l_tmpa_prop {pu-wl-edst} {Department~of~Educational~Studies}
\prop_put:Nnn \l_tmpa_prop {pu-wl-eee} {Division~of~Environmental~and~Ecological~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ene} {School~of~Engineering~Education}
\prop_put:Nnn \l_tmpa_prop {pu-wl-engl} {Department~of~English}
\prop_put:Nnn \l_tmpa_prop {pu-wl-entm} {Department~of~Entomology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-fnr} {Department~of~Forestry~and~Natural~Resources}
\prop_put:Nnn \l_tmpa_prop {pu-wl-fs} {Department~of~Food~Science}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hdfs} {Department~of~Human~Development~and~Family~Studies}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hist} {Department~of~History}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hk} {School~of~Health~and~Kinesiology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hort} {Department~of~Horticulture}
\prop_put:Nnn \l_tmpa_prop {pu-wl-hsci} {School~of~Health~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-wl-htm} {Department~of~Hospitality~and~Tourism~Management}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ibsc} {Interdisciplinary~Biomedical~Studies~Program}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ie} {School~of~Industrial~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ipph} {Department~of~Industrial~and~Physical~Pharmacy}
\prop_put:Nnn \l_tmpa_prop {pu-wl-lc} {School~of~Languages~and~Cultures}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ling} {Department~of~Linguistics}
\prop_put:Nnn \l_tmpa_prop {pu-wl-math} {Department~of~Mathematics}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mcmp} {Department~of~Medicinal~Chemistry~and~Molecular~Pharmacology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-me} {School~of~Mechanical~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mgmt} {School~of~Management}
\prop_put:Nnn \l_tmpa_prop {pu-wl-mse} {School~of~Materials~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ne} {School~of~Nuclear~Engineering}
\prop_put:Nnn \l_tmpa_prop {pu-wl-nur} {School~of~Nursing}
\prop_put:Nnn \l_tmpa_prop {pu-wl-nutr} {Department~of~Nutrition~Science}
\prop_put:Nnn \l_tmpa_prop {pu-wl-obhr} {Department~of~Organizational~Behavior~and~Human~Resource~Management}
\prop_put:Nnn \l_tmpa_prop {pu-wl-owl} {Writing~Lab/Online~Writing~Lab}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phil} {Department~of~Philosophy}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phillit} {Department~of~Philosophy~and~Literature}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phpr} {Department~of~Pharmacy~Practice}
\prop_put:Nnn \l_tmpa_prop {pu-wl-phys} {Department~of~Physics~and~Astronomy}
\prop_put:Nnn \l_tmpa_prop {pu-wl-pol} {Department~of~Political~Science}
\prop_put:Nnn \l_tmpa_prop {pu-wl-psd} {Purdue~Thesis~Software~Development}
\prop_put:Nnn \l_tmpa_prop {pu-wl-psy} {Department~of~Psychological~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-wl-satt} {School~of~Aviation~and~Transportation~Technology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-slhs} {Department~of~Speech,~Language,~and~Hearing~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-wl-soc} {Department~of~Sociology}
\prop_put:Nnn \l_tmpa_prop {pu-wl-stat} {Department~of~Statistics}
\prop_put:Nnn \l_tmpa_prop {pu-wl-tdo} {Thesis~and~Dissertation~Office}
\prop_put:Nnn \l_tmpa_prop {pu-wl-thtr} {Department~of~Theatre}
\prop_put:Nnn \l_tmpa_prop {pu-wl-tli} {Department~of~Technology~Leadership~and~Innovation}
\prop_put:Nnn \l_tmpa_prop {pu-wl-vcs} {Department~of~Veterinary~Clinical~Sciences}
\prop_put:Nnn \l_tmpa_prop {pu-wl-ydae} {Department~of~Youth~Development~and~Agricultural~Education}
\prop_put:Nnn \l_tmpa_prop {uh-ma-econ} {Department~of~Economics}
\prop_put:Nnn \l_tmpa_prop {unr-re-me} {Mechanical~Engineering~Department}
\prop_get:NVNTF
\l_tmpa_prop
\ZZinscampro
\ZZwholename
{
}
{
}
\renewcommand*{\maketitle}
{
\pdfbookmark{TITLE~PAGE}{titlepage}
\str_case:VnTF {\ZZins}
{
%
%  Purdue University cover page.
%
{pu}
{
\ZZpresentandinorder{title}%
{
\setcounter{ZZcountersavedpagenumber}{\value{page}}%
\thispagestyle{empty}%
\setbox\ZZboxa\vbox
{%
\centering
{\ZZtitlefont\uppercase\expandafter{\ZZtitle}}\\
by\\
{\ZZauthorfont\ZZauthor}\\
\vspace*{25pt}
{\ZZdocumentfont \ZZdocument}\\
{\ZZsubmittedfont Submitted~to~the~Faculty~of~Purdue~University}\\
{\ZZsubmittedfont In~Partial~Fulfillment~of~the~Requirements~for~the~degree~of}\\
\vspace*{25pt}
{\ZZdegreefont\ZZdegree}\\
\vspace*{35pt}
\hbox to\textwidth{\hss\includegraphics[width=7.9cm]{gr-pu-seal.pdf}\hss}
\vspace*{25pt}
\ZZwholename\\
\ZZcampus,~Indiana\\
\ZZgraduation
}
\setlength{\ZZlengtha}{\textheight}%
\addtolength{\ZZlengtha}{-\ht\ZZboxa}%
\setlength{\ZZlengtha}{0.5\ZZlengtha}%
\vspace*{\ZZlengtha}%
\vspace*{-0.15in}%
\box\ZZboxa
}
}
%
%  University of Hawaii cover page.
%
{uh}
{
\ZZpresentandinorder{title}%
{
\setcounter{ZZcountersavedpagenumber}{\value{page}}%
\thispagestyle{empty}%
\setbox\ZZboxa\vbox
{%
\centering
{\bfseries \Large \uppercase\expandafter{\ZZtitle}}\\[-6pt]
\hbox to\textwidth{\hss\includegraphics[width=7cm]{gr-uh-seal.pdf}\hss}
\vspace*{-6pt}
{\large \ZZdocument\ submitted~to~the~Graduate~Division~of~the}\\
{\large University~of~Hawai\okina i~at~M\=anoa~in~partial~fulfillment~of~the}\\
{\large requirements~for~the~degree~of}\\
\vspace*{18pt}
{\bfseries \large \ZZdegree}\\
{\large in}\\
{\bfseries \large \ZZprogram}\\
\vspace*{18pt}
{\bfseries \large \ZZgraduation}\\
\vspace*{18pt}
{\large by}\\
{\bfseries \large \ZZauthor}\\
\vspace*{18pt}
{\large Dissertation~Committee:}\\[-6pt]
\clist_set_eq:NN \l_tmpa_clist \ZZcommittee
\clist_map_inline:Nn \l_tmpa_clist {\large ##1\\[-6pt]}
\vspace*{24pt}
{\large Keywords:~\ZZkeywords}
}
\setlength{\ZZlengtha}{\textheight}%
\addtolength{\ZZlengtha}{-\ht\ZZboxa}%
\setlength{\ZZlengtha}{0.5\ZZlengtha}%
\vspace*{\ZZlengtha}%
\vspace*{-0.15in}%
\box\ZZboxa
}
}
}
{}
{}
\setcounter{page}{\value{ZZcountersavedpagenumber}}%
}
\newcommand{\ZZnonchapter}[4]
{
{
\ZZnottableofcontents
\group_begin:
\bool_set_true:N \ZZinotherb
\chapter*{#2}
\ifthen{\equal{y}{#3}}
{\addcontentsline{toc}{chapter}{#2}}
\group_end:
\vspace{#4}
}
\if_bool:N \ZZinappendixb
\renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}
\else:
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\fi:
}
%
%  Table of Contents
%
%  The [table of contents -mark] should be spaced at 1.5 lines,
%  no smaller or bigger [TEMPLATE1, page 12] [TEMPLATE2, page 12]
%  [TEMPLATE3, page 12].
\def\@starttoc#1
{
\begingroup
\@input{\jobname.#1}
\if@filesw \expandafter\newwrite\csname tf@#1\endcsname
\immediate\openout \csname tf@#1\endcsname \jobname.#1\relax
\fi
\tex_global:D\@nobreakfalse
\endgroup
}
\renewcommand*{\tableofcontents}
{
\qrmtz    %%%%
\ZZpresentandinorder{tableofcontents}
\ZZnonchapter{odd}{\ZZtableofcontentsname}{n}{0pt}
{\leftskip=0pt \noindent\hbox to\textwidth{\hfil Page}}
{
\output={
%                \let \par \ZZpar
\ifnum \outputpenalty<-\@M
\@specialoutput
\else
\@makecol
\@opcol
\@startcolumn
\@whilesw \if@fcolmade \fi
{\@opcol\@startcolumn}
\fi
\ifnum \outputpenalty>-\@Miv
\ifdim \@colroom<1.5\baselineskip
\ifdim \@colroom<\textheight
\@latex@warning@no@line{Text page \thepage\space contains only floats}
\@emptycol
\else
\tex_global:D \vsize \@colroom
\fi
\else
\tex_global:D \vsize \@colroom
\fi
\else
\tex_global:D \vsize \maxdimen
\fi
{\leftskip=0pt \noindent\hbox to\textwidth{\hfil Page}\endgraf}
}
\ZZbaselinestretch{1}
\@starttoc{toc}
}
}
\renewcommand*{\listoftables}
{
\ZZpresentandinorder{listoftables}
\ZZnonchapter{next}{\ZZlistoftablesname}{y}{0pt}
{
\output=
{
%                \let \par \ZZpar
\ifnum \outputpenalty<-\@M
\@specialoutput
\else
\@makecol
\@opcol
\@startcolumn
\@whilesw \if@fcolmade \fi
{\@opcol\@startcolumn}
\fi
\ifnum \outputpenalty>-\@Miv
\ifdim \@colroom<1.5\baselineskip
\ifdim \@colroom<\textheight
\@latex@warning@no@line{Text page \thepage\space contains only floats}
\@emptycol
\else
\tex_global:D \vsize \@colroom
\fi
\else
\tex_global:D \vsize \@colroom
\fi
\else
\tex_global:D \vsize \maxdimen
\fi
}
\ZZbaselinestretch{1}
\@starttoc{lot}
}
}
\newcommand{\ZZStartList}[1]
{
\ZZnonchapter{odd}{#1}{y}{0pt}
\setlength{\LTleft}{0truein}
\setlength{\LTright}{0truein}
%% ! change to \setlength[\ZZtl}{\textwidth - \LTleft - \LTright - 2*\tabcolsep - 1truein} later
\setlength{\ZZtl}{\textwidth}
\addtolength{\ZZtl}{-\LTleft}
\addtolength{\ZZtl}{-\LTright}
\addtolength{\ZZtl}{-\tabcolsep}
\addtolength{\ZZtl}{-\tabcolsep}
\addtolength{\ZZtl}{-1truein}
%% ! Get real width of first column.
%% ! \setcounter{\ZZcount@temp}{\c@LT@tables}
%% ! \addtocounter(\ZZcount@temp){1}
%% ! \def\stuff{\csname LT@\romannumeral\ZZcount@temp\endcsname}
%% ! \showthe\stuff
%% ! \addtolength{\ZZtl}{-?}
}
\newcommand{\chapterappendix}
{
\par
\bool_set_true:N \ZZinchapterappendixb
\setcounter{section}{0}
\if_bool:N \ZZinappendixb
\renewcommand{\thesection}{\Alph{chapter}.\Alph{section}}
\else:
\renewcommand{\thesection}{\arabic{chapter}.\Alph{section}}
\fi:
}
\newcommand{\chapterappendices}
{
\par
\bool_set_true:N \ZZinchapterappendixb
\setcounter{section}{0}
\if_bool:N \ZZinappendixb
\renewcommand{\thesection}{\Alph{chapter}.\Alph{section}}
\else:
\renewcommand{\thesection}{\arabic{chapter}.\Alph{section}}
\fi:
}
\renewcommand{\listoffigures}
{
\ZZpresentandinorder{listoffigures}
\ZZnonchapter{next}{\ZZlistoffiguresname}{y}{0pt}
{
\output=
{
%                \let \par \ZZpar
\ifnum \outputpenalty<-\@M
\@specialoutput
\else
\@makecol
\@opcol
\@startcolumn
\@whilesw \if@fcolmade \fi
{\@opcol\@startcolumn}
\fi
\ifnum \outputpenalty>-\@Miv
\ifdim \@colroom<1.5\baselineskip
\ifdim \@colroom<\textheight
\@latex@warning@no@line{Text page \thepage\space contains only floats}
\@emptycol
\else
\tex_global:D \vsize \@colroom
\fi
\else
\tex_global:D \vsize \@colroom
\fi
\else
\tex_global:D \vsize \maxdimen
\fi
}
\ZZbaselinestretch{1}
\@starttoc{lof}
}
}
\newcommand{\ZZPause}
{
\immediate\message{Press Enter key to continue: }
\read-1 to \ZZJunk
}
\newcommand{\ZZRepeat}[2]
{
\foreach \ZZATemp in {1,..,#2}
{
#1
}
}
\newenvironment{abbreviations}
{
\ZZpresentandinorder{abbreviations}
\ZZStartList{\ZZabbreviationsname}
\begin{longtable}{@{}lp{\ZZtl}}
}
{
\end{longtable}
}
\renewenvironment{abstract}
{%
\ZZpresentandinorder{abstract}
\ZZnonchapter{next}{\ZZabstractname}{y}{0pt}
%        \vspace*{\baselineskip}
}
{%
\endgraf
}
\newenvironment{acknowledgments}
{
\pdfbookmark{ACKNOWLEDGMENTS}{acknowledments}
\ZZpresentandinorder{acknowledgments}
\ZZnonchapter{next}{\ZZacknowledgmentsname}{n}{0pt}
}
{}
\newenvironment{cabstract}
{
\begin{quote}
\textbf{\ZZabstractname}\quad
}
{
\end{quote}
}
\newenvironment{cland}
{
\begin{landscape}
\hbox\bgroup
\hss
\vbox\bgroup
}
{
\egroup
\hss
\egroup
\end{landscape}
}
\newenvironment{dedication}
{
\pdfbookmark{DEDICATION}{dedication}
\ZZpresentandinorder{dedication}
\newpage
\mbox{}
\vfil
\begin{center}
}
{
\end{center}
\vfil
\eject
\ZZnottableofcontents
}
\newtheorem{definition}{Definition}[section]
\renewenvironment{glossary}
{%
\ZZpresentandinorder{glossary}%
\ZZStartList{\ZZglossaryname}%
\noindent\begin{longtable}{@{}lp{\ZZtl}@{}}%
}
{%
\end{longtable}
}
\newenvironment{nomenclature}
{
\ZZpresentandinorder{nomenclature}
\ZZStartList{\ZZnomenclaturename}
\begin{longtable}{@{}lp{\ZZtl}}
}
{
\end{longtable}
}
\newenvironment{lquotation}
{
\begin{quotation}
\ZZbaselinestretch{1}
}
{
\end{quotation}
}
\newtheorem{observation}{Observation}[section]
\newenvironment{preface}
{
\pdfbookmark{PREFACE}{preface}
\ZZpresentandinorder{preface}
\ZZnonchapter{next}{\ZZprefacename}{n}{0pt}
}
{}
\newtheorem{proposition}{Proposition}[section]
\newenvironment{statement}
{%
\pdfbookmark{COMMITTEE~APPROVAL}{committeeapproval}
\def\approvedby##1
{%
\vspace*{35pt}%
\centering
\textbf{Approved~by:}\\
##1%
\endgraf
}
\def\entry##1##2
{%
\vspace*{25pt}%
\centering
\textbf{##1}\\
##2\\
\endgraf
}
\newpage
\vspace*{1.1cm}%
\centering
{\large\bf THE~PURDUE~UNIVERSITY~GRADUATE~SCHOOL}\\
{\large\bf STATEMENT~OF~COMMITTEE~APPROVAL}\\
\vspace*{10pt}
}
{
}
\newenvironment{symbols}
{
\ZZpresentandinorder{symbols}
\ZZStartList{\ZZsymbolsname}
\begin{longtable}{@{}lp{\ZZtl}}
}
{
\end{longtable}
}
\newtheorem{theorem}{Theorem}[section]
\renewcommand{\bottomfraction}{1}
\renewcommand{\floatpagefraction}{0}
\renewcommand{\topfraction}{1}
\setcounter{bottomnumber}{10}
\setcounter{topnumber}{10}
\setcounter{totalnumber}{10}
\newboolean{ZZFigureCaptionsB}
\setboolean{ZZFigureCaptionsB}{false}
\renewcommand{\chapter}
{
\ifthenelse
{
\(\boolean{ZZinotherb}  \and  \boolean{ZZNonChapterBlankPagesB}\)
\or
\(\NOT\boolean{ZZinotherb}  \and  \boolean{ZZChapterBlankPagesB}\)
}
{\cleardoublepage}
{\clearpage}
\ZZnottableofcontents
\tex_global:D \@topnum=\z@
\@afterindentfalse
\if_bool:N \ZZinappendixb
\renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}
\else:
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\fi:
\secdef \@chapter \@schapter
}
\newcommand{\coversheet}[1]
{
{
\ifthen{\boolean{ZZCoverSheetsB}}
{
\if_bool:N \ZZChapterBlankPagesB
\clearpage 
\else:
\clearpage
\fi:
\pagestyle{empty}
\mbox{}
\ZZCoversheetSpace
\begin{center}
#1
\end{center}
\vfill
\newpage
\addtocounter{page}{-1}
}
\ZZnottableofcontents
}
}
\renewcommand{\appendix}
{
\ZZpresentandinorder{appendix}
\par
\bool_set_true:N \ZZinappendixb
\setcounter{chapter}{0}
\setcounter{section}{0}
\coversheet{\uppercase\expandafter{\ZZAppendixName}}
\renewcommand{\@chapapp}{\ZZAppendixName}
\renewcommand{\thechapter}{\Alph{chapter}}
}
\newcommand{\ZZappendicesname}{Appendices}
\newcommand{\appendices}
{
\ZZpresentandinorder{appendices}
\par
\bool_set_true:N \ZZinappendixb
\setcounter{chapter}{0}
\setcounter{section}{0}
\coversheet{\uppercase\expandafter{\ZZappendicesname}}
\renewcommand{\@chapapp}{\ZZappendicesname}
\renewcommand{\thechapter}{\Alph{chapter}}
}
\newenvironment{notesandfootnotes}
{
\ZZpresentandinorder{notesandfootnotes}
}
{\par}
\newenvironment{vita}
{
\ZZpresentandinorder{vita}
\ZZVitaStart
\ZZnonchapter{odd}{\ZZVitaName}{y}{0pt}
}
{}
\newenvironment{publication}
{
\ZZpresentandinorder{publication}
\ZZPublicationStart
\ZZnonchapter{odd}{\ZZPublicationName}{y}{0pt}
}
{}
\newenvironment{publications}
{
\ZZpresentandinorder{publications}
\ZZPublicationStart
\ZZnonchapter{odd}{\ZZPublicationsName}{y}{0pt}
}
{}
\char_set_catcode_active:N !  \char_set_catcode_active:N '  \char_set_catcode_active:N *
\def!{\@backslashchar}
\def'{~}
\def*{+}
\AtEndDocument
{
\ZZIW{}
\ZZIW{'''''''''''''''''''''''''''''''''''''||}
\ZZIW{'''''''''''''''''''''''''''''''''see'||'below}
\ZZIW{'''''''''''''''''''''''''''''''''''''||}
\ZZIW{''''''''''''''''''''''''''''''''''!!'||'//}
\ZZIW{'''''''''''''''''''''''''''''''''''!!||//}
\ZZIW{''''''''''''''''''''''''''''''''''''!!//}
\ZZIW{*-------------------------------------------------------------------------*}
\ZZIW{|''This'document'is'using'the'2021/02/05'version'of'PurdueThesis.cls.'''''|}
\ZZIW{|''The'PurdueThesis.cls'file'was'probably'read'because'you'used'a'''''''''|}
\ZZIW{|''''''\string\documentclass[..]{PurdueThesis}'''''''''''''''''''''''''''''''''''|}
\ZZIW{|''line'in'your'thesis'input'file.''''''''''''''''''''''''''''''''''''''''|}
\ZZIW{|'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''|}
\ZZIW{|''This'file'may'be'being'read'from'your'thesis'directory'or'somewhere''''|}
\ZZIW{|''else.''To'find'out'which'is'being'used,'search'for'"PurdueThesis.cls"''|}
\ZZIW{|''near'the'beginning'of'this'log.''If'it'has'"(PurdueThesis.cls"'or''''''|}
\ZZIW{|''"(./PurdueThesis.cls"'it'is'from'your'thesis'directory,'otherwise'it'''|}
\ZZIW{|''is'being'read'from'somewhere'else.'''''''''''''''''''''''''''''''''''''|}
\ZZIW{|'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''|}
\ZZIW{|''Only'the'latest'version'of'this'PurdueThesis.cls'file'available'from'''|}
\ZZIW{|''''''http://engineering.purdue.edu/\string~mark/PurdueThesis''''''''''''''''''''|}
\ZZIW{|''is'supported.''Put'it'in'the'same'subdirectory'as'your'thesis.'''''''''|}
\ZZIW{*-------------------------------------------------------------------------*}
\ZZIW{'''''''''''''''''''''''''''''''''''//!!}
\ZZIW{''''''''''''''''''''''''''''''''''//||!!}
\ZZIW{'''''''''''''''''''''''''''''''''//'||'!!}
\ZZIW{''''''''''''''''''''''''''''''''''''||}
\ZZIW{''''''''''''''''''''''''''''''''see'||'above}
\ZZIW{''''''''''''''''''''''''''''''''''''||}
\ZZIW{}
}
\char_set_catcode_other:N !  \char_set_catcode_other:N '  \char_set_catcode_other:N *
\def\ZZthreea#1#2#3{#1}
\def\ZZthreeb#1#2#3{#2}
\def\ZZthreec#1#2#3{#3}
\def\ZZtwoa#1#2{#1}
\def\ZZtwob#1#2{#2}
\newcounter{ZZi}
\newcounter{ZZnameindex}
\newlength{\ZZcaptionwidth}
\newlength{\ZZpaddinglength}
\newlength{\ZZparindent}
\setlength{\ZZparindent}{\parindent}
\newlength{\ZZtl}
\newlength{\ZZtlb}
\setlength{\evensidemargin}{0.5truein}
\settoheight{\headheight}{- ivx1 -}
\setlength{\headsep}{0.5truein}
\addtolength{\headsep}{-\headheight}
\addtolength{\headsep}{-0.0625truein}
\def\ZZauthor@a{\expandafter\ZZthreea\ZZauthor}
\def\ZZauthor@b{\expandafter\ZZthreeb\ZZauthor}
\def\ZZauthor@c{\expandafter\ZZthreec\ZZauthor}
\def\@makechapterhead#1
{
% !!! \ZZchapterheadspacea is now 0pt.
% !!! \vspace*{\ZZchapterheadspacea}
{
\centering
\ZZmake@chapter@head{#1}
\endgraf
}
\vspace*{\ZZchapterheadspaceb}
}
\long\def\@makefntext#1
{
\baselineskip=12pt
\noindent
\@makefnmark #1
}
\def\@makeschapterhead#1
{
% !!! \ZZschapterheadspacea is now 0pt.
% !!! \vspace*{\ZZschapterheadspacea}
{
\centering
\ZZmake@schapter@head{#1}
\endgraf
}
\vspace*{\ZZschapterheadspaceb}
}
\def\@sect#1#2#3#4#5#6[#7]#8%
{
\ifnum #2>\c@secnumdepth
\let\@svsec\@empty
\else
\refstepcounter{#1}
\edef\@svsec{\csname the#1\endcsname\hskip 1em}
\fi
\ifthen{\equal{che}{\ZZprogram}}
{
\ifnum #2=3
\refstepcounter{#1}
\edef\@svsec{\csname the#1\endcsname\hskip 1em}
\fi
}
\@tempskipa #5\relax
\ifdim \@tempskipa>\z@
\begingroup
#6\relax
\@hangfrom{\hskip #3\relax\@svsec}
{\interlinepenalty \@M #8\par}
\endgroup
\csname #1mark\endcsname{#7}
\addcontentsline{toc}{#1}
{
\ifnum #2>\c@secnumdepth
\else
\protect\numberline{\csname the#1\endcsname}
\fi
#7%
}
\else
\def\@svsechd%
{
#6%
\hskip #3\relax
\@svsec #8\csname #1mark\endcsname
{#7}
\addcontentsline{toc}{#1}
{
\ifnum #2>\c@secnumdepth
\else
\protect\numberline{\csname the#1\endcsname}
\fi
#7%
}
}
\fi
\@xsect{#5}
}
\def\@startsection#1#2#3#4#5#6%
{
\if@noskipsec
\leavevmode
\fi
\par
\@tempskipa #4\relax
\@afterindenttrue
\ifdim \@tempskipa <\z@
\@tempskipa -\@tempskipa
\fi
\if@nobreak
\everypar{}
\else
\addpenalty{\@secpenalty}
\addvspace{\@tempskipa}
\fi
\@ifstar
{\@ssect{#3}{#4}{#5}{#6}}
{\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}
}
\renewcommand{\section}{\@startsection{section}{1}{\z@}{24pt}{12pt}{\ZZbaselinestretch{1}\ZZsectionseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}{24pt}{12pt}{\ZZbaselinestretch{1}\ZZsubsectionseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}{24pt}{12pt}{\ZZbaselinestretch{1}\ZZsubsubsectionseries}}
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}{24pt}{12pt}{\ZZbaselinestretch{1}\ZZparagraphseries}}
\renewcommand{\subparagraph}{\@startsection{subparagraph}{5}{parindent}{24pt}{12pt}{\ZZbaselinestretch{1}\ZZsubparagraphseries}}
\def\baselinestretch{1.5}
\pagenumbering{arabic}
\raggedbottom
%  This file was automatically produced from the PurdueThesis.cls.pro file.
%  That file was last modified on 2021-02-05 by Mark Senn.
%  The "/home/pier/e/mark/bin/pro -Dlatex PurdueThesis.cls" command was typed on 2021-02-09
%  while in the"/home/pier/e/mark/PurdueThesis/class" directory to produce this file.

\NeedsTeXFormat{LaTeX2e}
\setcounter{chapter}{0}
\newcommand{\ZZAppendixName}{Appendix}
\newcommand{\articlepages}[1]
{
\ZZRepeat{\ZZBlankPage}{#1}
}
\newcommand{\articleinclude}[1]%
{
\def\ZZATemp{#1}
\foreach \ZZBTemp in {1,..,1000}
{
\def\ZZCTemp{\ZZATemp\ZZBTemp.eps}
\ZZIW{\ZZCTemp}
\IfFileExists{\ZZCTemp}
{\noindent\includegraphics[width=\textwidth]{\ZZCTemp}\newpage}
{\breakforeach}
}
}
\def\@chapter[#1]#2%
{
\if_bool:N \ZZinappendixb
\ZZpresentandinorder{achapter}
\else:
\ZZpresentandinorder{chapter}
\fi:
\ifnum \c@secnumdepth >\m@ne
\refstepcounter{chapter}
\typeout{\@chapapp\space\thechapter.}
\bool_set_true:N \ZZUnsetB
\ifthen{\equal{agec}{\ZZprogram}}
{\bool_set_false:N \ZZUnsetB\addcontentsline{toc}{chapter}{\protect\uppercase{\@chapapp\ \thechapter. #1}}}
\ifthen{\equal{ce}{\ZZprogram}}
{\bool_set_false:N \ZZUnsetB\addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}\uppercase{#1}}}
\ifthen{\equal{mse}{\ZZprogram}}
{\bool_set_false:N \ZZUnsetB\addcontentsline{toc}{chapter}{\protect\uppercase{\@chapapp\ \thechapter. #1}}}
\if_bool:N \ZZUnsetB
\addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}{#1}}
\fi:
\else
\addcontentsline{toc}{chapter}{#1}
\fi
\chaptermark{#1}
% \addtocontents{lof}{\protect\addvspace{10\p@}}
% \addtocontents{lot}{\protect\addvspace{10\p@}}
\@makechapterhead{#2}
\@afterheading
\ifthen{\NOT \boolean{ZZInChaptersB}}
{
%% xxxx \pagenumbering{arabic}
\bool_set_true:N \ZZInChaptersB
}
}
\newcommand{\nonchapterblankpages}{\bool_set_true:N \ZZNonChapterBlankPagesB}
\newcommand{\nononchapterblankpages}{\bool_set_false:N \ZZNonChapterBlankPagesB}
\newcommand{\chapterblankpages}{\bool_set_true:N \ZZChapterBlankPagesB}
\newcommand{\nochapterblankpages}{\bool_set_false:N \ZZChapterBlankPagesB}
\newcommand{\coversheets}{\bool_set_true:N \ZZCoverSheetsB}
\newcommand{\nocoversheets}{\bool_set_false:N \ZZCoverSheetsB}
\def\LT@makecaption#1#2#3
{
\LT@mcol\LT@cols c{\hbox to\z@{\hss\parbox[t]\LTcapwidth{
\sbox\@tempboxa{#1{#2 }#3}
\ifdim\wd\@tempboxa>\hsize
#1{#2 }#3
\else
\hbox to\hsize{\hfil\box\@tempboxa\hfil}
\fi
\endgraf\vskip\baselineskip
}\hss}}
}
\newcommand{\ZZoptionendnotes}
{
\let\footnote=\endnote
\renewcommand{\pendnotes}
{
\newpage
\begingroup
% \Baselinestretch{0.9}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.5ex}
\renewcommand{\enotesize}{\normalsize}
\theendnotes
\endgroup
}
}
\renewcommand*{\l@chapter}{\@dottedtocline{0}{\big@toc@skip}{0em}{1.4em}}
\renewcommand*{\l@section}{\@dottedtocline{1}{\small@toc@skip}{1.5em}{2.3em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{\small@toc@skip}{3.8em}{3.2em}}
\renewcommand*{\l@subsubsection}{\@dottedtocline{3}{\small@toc@skip}{7em}{4.1em}}
\renewcommand*{\l@paragraph}{\@dottedtocline{4}{\small@toc@skip}{10em}{5em}}
\renewcommand*{\l@subparagraph}{\@dottedtocline{5}{\small@toc@skip}{12em}{6em}}
\renewcommand*\l@figure{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\renewcommand*\l@table{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\setboolean{ZZFigureCaptionsB}{true}
\def\ZZCoversheetSpace{\vfill}
\def\AppendixFigure{\relax}
\def\AppendixTable{\relax}
\def\AppendixFigure{\relax}
\def\AppendixTable{\relax}
\def\ZZVitaStart{\coversheet{\ZZVitaName}}
\def\ZZVitaName{VITA}
\def\ZZPublicationStart{\coversheet{\ZZPublicationName}}
\def\ZZPublicationName{PUBLICATION}
\def\ZZPublicationsStart{\coversheet{\ZZPublicationsName}}
\def\ZZPublicationsName{PUBLICATIONS}
\setlength{\dblfloatsep}{18pt plus 3pt minus 3pt}
\setlength{\dbltextfloatsep}{30pt plus 3pt minus 6pt}
\setlength{\floatsep}{18pt plus 3pt minus 3pt}
\setlength{\intextsep}{18pt plus 3pt minus 3pt}
\setlength{\textfloatsep}{30pt plus 3pt minus 6pt}
\renewcommand{\tablename}{Table~}
\renewcommand{\fnum@table}{{\ZZtableseries\tablename~\thetable.}~}
\def\ZZmake@chapter@head#1{\ZZchapterseries \ZZchaptersize \thechapter.~#1}
\def\ZZmake@schapter@head#1{\ZZchapterseries \ZZchaptersize #1}
\def\ZZtitleseries{\bf}
\def\ZZauthorseries{\bf}
\def\ZZdocumentseries{\bf}
\def\ZZsubmittedseries{\it}
\def\ZZdegreeseries{\bf}
\def\ZZtitlesize{\large}
\def\ZZauthorsize{\normalsize}
\def\ZZdocumentsize{\normalsize}
\def\ZZsubmittedsize{\normalsize}
\def\ZZdegreesize{\normalsize}
\def\ZZchapterseries{\bfseries}
\def\ZZfigureseries{\bfseries}
\def\ZZlistingseries{\bfseries}
\def\ZZsectionseries{\bfseries}
\def\ZZsubsectionseries{\bfseries}
\def\ZZsubsubsectionseries{\bfseries}
\def\ZZsubsubsubsectionseries{\bfseries}
\def\ZZparagraphseries{\bfseries}
\def\ZZsubparagraphseries{\bfseries}
\def\ZZtableseries{\bfseries}
\def\ZZchaptersize{\large}
\def\ZZfiguresize{\normalsize}
\def\ZZsectionsize{\normalsize}
\def\ZZsubsectionsize{\normalsize}
\def\ZZsubsubsectionsize{\normalsize}
\def\ZZsubsubsubsectionsize{\normalsize}
\def\ZZtablesize{\normalsize}
\def\ZZFigurePunct{. }
\def\ZZTablePunct{. }
\def\ZZListingPunct{. }
\setcounter{tocdepth}{4}
\def\undertext#1{$\underline{\smash{\hbox{#1}}}$}
\renewcommand{\figurename}{Figure~}
\renewcommand{\fnum@figure}{{\ZZfigureseries\figurename~\thefigure.}~}
\def\ZZchapterheadspacea{0.6truein}
\def\ZZchapterheadspaceb{0.5\baselineskip}
\def\ZZschapterheadspacea{0.6truein}
\def\ZZschapterheadspaceb{0.5\baselineskip}
\renewcommand{\lstlistingname}{Listing~}
\renewcommand{\fnum@lstlisting}{{\ZZlistingseries\lstlistingname~\thelstlisting.}~}
\str_case:Vn {\ZZinscampro}
{
{pu-in-bme}
{
\renewcommand*{\l@section}{\@dottedtocline{1}{\big@toc@skip}{1.5em}{2.3em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{\big@toc@skip}{3.8em}{3.2em}}
\renewcommand*{\l@subsubsection}{\@dottedtocline{3}{\big@toc@skip}{7em}{4.1em}}
\renewcommand*{\l@paragraph}{\@dottedtocline{4}{\big@toc@skip}{10em}{5em}}
\renewcommand*\l@figure{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\renewcommand*\l@table{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\def\numberline#1{\hb@xt@\@tempdima{#1\hfil}}

}
{pu-in-ece}
{
\renewcommand*{\l@section}{\@dottedtocline{1}{\big@toc@skip}{1.5em}{2.3em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{\big@toc@skip}{3.8em}{3.2em}}
\renewcommand*{\l@subsubsection}{\@dottedtocline{3}{\big@toc@skip}{7em}{4.1em}}
\renewcommand*{\l@paragraph}{\@dottedtocline{4}{\big@toc@skip}{10em}{5em}}
\renewcommand*\l@figure{\@dottedtocline{1}{\big@toc@skip}{1.5em}{2.3em}}
\renewcommand*\l@table{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\def\numberline#1{\hb@xt@\@tempdima{#1\hfil}}

}
{pu-wl-aae}
{
\setboolean{ZZFigureCaptionsB}{true}
\renewcommand{\fnum@table}{{\ZZtableseries\tablename~\thetable}.~}

}
{pu-wl-ce}
{
\setboolean{ZZFigureCaptionsB}{true}
\renewcommand{\fnum@table}{{\ZZtableseries\tablename~\thetable}.~}

}
{pu-wl-che}
{
\renewcommand*\l@figure{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\renewcommand*\l@table{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\def\numberline#1{\hb@xt@\@tempdima{#1\hfil}}

}
{pu-wl-chem}
{
\setlength{\dblfloatsep}{36pt}
\setlength{\dbltextfloatsep}{36pt}
\setlength{\floatsep}{36pt}
\setlength{\intextsep}{36pt}
\setlength{\textfloatsep}{36pt}

}
{pu-wl-ece}
{
\renewcommand*{\l@section}{\@dottedtocline{1}{\big@toc@skip}{1.5em}{2.3em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{\big@toc@skip}{3.8em}{3.2em}}
\renewcommand*{\l@subsubsection}{\@dottedtocline{3}{\big@toc@skip}{7em}{4.1em}}
\renewcommand*{\l@paragraph}{\@dottedtocline{4}{\big@toc@skip}{10em}{5em}}
\renewcommand*{\l@subparagraph}{\@dottedtocline{5}{\big@toc@skip}{12em}{6em}}
\renewcommand*\l@figure{\@dottedtocline{1}{\big@toc@skip}{1.5em}{2.3em}}
\renewcommand*\l@table{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\def\numberline#1{\hb@xt@\@tempdima{#1\hfil}}

}
{pu-wl-hsci}
{
\renewcommand*\l@figure{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\renewcommand*\l@table{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\def\numberline#1{\hb@xt@\@tempdima{#1\hfil}}

}
{pu-wl-me}
{
\renewcommand*\l@figure{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\renewcommand*\l@table{\@dottedtocline{1}{\big@toc@skip}{0em}{2.3em}}
\setboolean{ZZFigureCaptionsB}{true}
\def\numberline#1{\hb@xt@\@tempdima{#1\hfil}}
\renewcommand{\fnum@table}{{\ZZtableseries\tablename~\thetable}.~}
\renewcommand{\fnum@figure}{{\ZZfigureseries\figurename~\thefigure.}~}

}
{pu-wl-mse}
{
\def\ZZCoversheetSpace{0.53125truein}
\def\AppendixFigure{addtocontents{lof}{Appendix Figure\hfil}}
\def\AppendixTable{\addtocontents{lot}{Appendix Table\hfil}}
\def\AppendixFigure{\addtocontents{lof}{Appendix Figure\hfil}}
\def\AppendixTable{\addtocontents{lot}{Appendix Table\hfil}}
\def\undertext#1{$\underline{\hbox{#1}}$$}
\setlength{\parindent}{0.40625truein}

}
}
\long\def\@makecaption#1#2
{
\vspace*{\abovecaptionskip}
\if_bool:N \ZZCenterCaptionB
% center caption
\setlength{\ZZcaptionwidth}{\textwidth}
\addtolength{\ZZcaptionwidth}{-4\ZZparindent}
\ifthenelse{\equal{figure}{\@captype} \or \boolean{ZZFigureCaptionsB}}
{
\sbox\@tempboxa{#1 #2}
\ZZbaselinestretch{1}
\ifdim \wd\@tempboxa >\hsize
\centerline{\parbox[t]{\ZZcaptionwidth}{#1 #2}}
\else
\centerline{#1 #2}
\fi
}
{
\ZZbaselinestretch{1}
\centerline{#1}
\sbox\@tempboxa{#2}
\ifdim \wd\@tempboxa >\hsize
\centerline{\parbox[t]{\ZZcaptionwidth}{#2}}
\else
\centerline{#2}
\fi
}
\vspace*{\belowcaptionskip}
\else:
\setlength{\topsep}{0pt}
\setlength{\parskip}{0pt}
\setlength{\partopsep}{0pt}
\begin{quote}
\renewcommand{\\}{}
\ZZbaselinestretch{1}
\ifthenelse{\equal{aae}{\ZZprogram}}
{#1. #2\par}
{
\ifthenelse{\equal{table}{\@captype}}
{\hfil\strut #1\hfil\break #2\par}
{#1 #2\par}
}
\end{quote}
\fi:
\vskip\belowcaptionskip
}
\newcommand\nonnullq[2]
{
\ifthen{\equal{}{#1}}
{\relax}
{#2}
}
{
\def\ZZATemp{\string##}
\ifthen{\equal{\ZZprogram}{\relax}}
{
\ZZIW{}
\ZZIW{}
\ZZIW{No program option was specified in your \string\documentclass\ command options.}
\ZZIW{See}
\ZZIW{~~~~http://engineering.purdue.edu/\string~mark/puthesis/\ZZATemp document}
\ZZIW{for the valid choices.}
\ZZAbort
}
\ifthen{\equal{\ZZdocument}{\relax}}
{
\ZZIW{}
\ZZIW{}
\ZZIW{No document option was specified in your \string\documentclass\ command options.}
\ZZIW{See}
\ZZIW{~~~~http://engineering.purdue.edu/\string~mark/puthesis/\ZZATemp document}
\ZZIW{for the valid choices.}
\ZZAbort
}
}
% College of Agriculture, etc.
\ifthen{\equal{\ZZtemplate}{1}}
{
\def\ZZChapterName{Chapter}
\def\ZZAppendixName{Appendix}
}
% College of Education, etc.
\ifthen{\equal{\ZZtemplate}{2}}
{
\def\ZZAppendixName{Appendix}
}
% College of Engineering, etc.
\ifthen{\equal{\ZZtemplate}{3}}
{
}
\ZZIW{define~fig-name,~fig-punct,~fig-hspace~and~same~for~table?}
\makeatother
\ExplSyntaxOff
\let\oldtableofcontents = \tableofcontents
\renewcommand{\tableofcontents}
{
\pdfbookmark{\contentsname}{tableofcontents}
\oldtableofcontents
}
\endinput
