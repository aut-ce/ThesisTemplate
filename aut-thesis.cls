%%
%%  This is file `AUT_thesis.cls',
%%  The original file was xepersian-thesis.cls by Vafa Khalighi
%%   __________________________________
%%   Copyright © 2015-2018 Amirkabir University
%%
%%   http://www.aut.ac.ir
%%   http://www.parsilatex.com
%%   http://forum.parsilatex.com
%%
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aut-thesis}
              [15/04/2021 v0.1
 Persian thesis document class in XeLaTeX for University of Amirkabir projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,10pt]{book}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\thesisdate#1{\gdef\datethesis{#1}}
\newcommand{\firstsupervisor}[1]{\def\ffirstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\fsecondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\ffirstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\fsecondadvisor{#1}}
\newcommand{\internalexaminer}[1]{\def\finternalexaminer{#1}}
\newcommand{\externalexaminer}[1]{\def\fexternalexaminer{#1}}
\def\name#1{\gdef\fname{#1}}
\def\surname#1{\gdef\lname{#1}}
\def\fatitle#1{\gdef\ftitle{#1}}
\def\keywords#1{\gdef\fkeywords{\noindent #1}}
\def\fa-abstract#1{\gdef\ffa-abstract{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\fsubject{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
%\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\een-abstract{#1}}
\def\latinkeywords#1{\gdef\elatinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\AUTtitle}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-1cm}\centerline{{\includegraphics[height=3.8cm]{images/fa-logo}}}
\vspace{-1cm}
{\bf{\fontsize{16pt}{16pt}\selectfont دانشگاه صنعتی امیرکبیر}\par
\vspace{-1cm}\fontsize{14pt}{15pt}\selectfont(پلی‌تکنیک تهران)\par
\vspace{-1cm}\fontsize{16pt}{17pt}\selectfont\@faculty}\par
%\vskip 1.5cm
{\fontsize{16pt}{14pt}\selectfont\bfseries
\if@mscthesis
پایان‌نامه کارشناسی ارشد
\vspace{-.8cm}

\@department
\else
\if@bscthesis
پروژه کارشناسی
\vspace{-.8cm}

\@department
\else
رساله دکتری
\vspace{-.8cm}

\@department
\fi\fi
}

% {\fontsize{16pt}{17pt}\selectfont\bfseries%
%  \onvan}\par
\par
 \vspace{1cm}
{\fontsize{20pt}{21pt}\selectfont\bfseries {\ftitle}}\par
\vskip .5cm
 {\fontsize{16pt}{17pt}\selectfont\bfseries%
  \by}\par
\par
\vspace*{-0.8cm}
{\fontsize{18pt}{19pt}\selectfont\bfseries{\fname \ \lname}}\par
\fontsize{16pt}{17pt}\selectfont\bfseries
{\ifx\ffirstsupervisor\undefined%
\ifx\fsecondsupervisor\undefined%
\else\fi
\else
\ifx\fsecondsupervisor\undefined%
استاد راهنما
\vspace*{-0.8cm}
{\fontsize{18pt}{19pt}\selectfont\bfseries\par
\ffirstsupervisor}
\else
\fontsize{16pt}{17pt}\selectfont\bfseries
استادان راهنما
\vspace*{-0.8cm}
{\fontsize{18pt}{19pt}\selectfont\bfseries\par \ffirstsupervisor\space
     و
      \fsecondsupervisor}
\fi\fi}
\par\fontsize{16pt}{17pt}\selectfont\bfseries
{\ifx\ffirstadvisor\undefined%
\ifx\fsecondadvisor\undefined%
\else\fi
\else
\ifx\fsecondadvisor\undefined%
استاد مشاور
\vspace*{-0.8cm}
{\fontsize{18pt}{19pt}\selectfont\bfseries\par
\ffirstadvisor}
\else

\fontsize{16pt}{17pt}\selectfont\bfseries
استادان مشاور
\vspace*{-0.8cm}
{\fontsize{18pt}{19pt}\selectfont\bfseries\par\ffirstadvisor{} و \fsecondadvisor}
\fi\fi}

\vskip 6mm

{\fontsize{16pt}{17pt}\selectfont \datethesis}

\end{titlepage}%
\newpage
\thispagestyle{empty}
\baselineskip=.7cm
\if@bscthesis \relax
\else
%-----------------------------------------------------------------------------------table of thesis
\relax
\fi
}
%دستوری برای لیست نمادها
\newcommand{\symb}[2]{\makebox[10cm]
{\makebox[1cm][c]{\hfill}\makebox[3cm][r]{$\displaystyle #1$}\makebox[6cm][r]{#2}}\newline}

\newcommand{\exam}[2]{\makebox[12cm]
{\makebox[2cm][c]{\hfill}\makebox[4cm][r]{#1} \ \  \makebox[6cm][r]{#2}}\newline}
% دستوری برای تعریف واژه‌نامه انگلیسی به فارسی
\newcommand{\englishTOfarsi}[2]{\par\bigskip\rl{#2}\dotfill\lr{#1}\par}
% دستوری برای تعریف واژه‌نامه فارسی به انگلیسی
\newcommand{\farsiTOenglish}[2]{\par\bigskip#1\dotfill\lr{#2}\par}
% دستوری برای تعریف اختصارات
\newcommand{\abbr}[2]{\par\bigskip\lr{#2}\dotfill\lr{#1}\par}
%-----------------------------------------------
\def\frame{\newpage
\thispagestyle{empty}
\begin{framed}\thispagestyle{empty}
\def\endframe{\thispagestyle{empty}}\end{framed}
\thispagestyle{empty}
\newpage
}
\def\abstractpage{\newpage
\thispagestyle{empty}
\vskip 15mm
\par
\begin{abstract}}
\def\endabstractpage{\end{abstract}
\newpage
}

\def\latinabstract{\newpage
\thispagestyle{empty}
\vskip 15mm
\begin{center}{\fontsize{16pt}{17pt}\selectfont\bfseries \@latintitle \\[5mm]}
{\bfseries Abstract}
\end{center}
\vspace{5mm}}

\def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}

\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{\nastaliq \scriptsize \fname\ \lname \\
\datethesis}
\end{flushleft}}

\def\abstract{\subsection*{\abstractname}\small
\@normalsize}
\def\endabstract{\par}

\font\titlefont=cmssbx10 scaled 2074
\font\supervisorfont=cmbxti10

\newcommand{\latinvtitle}{%
\if@bscthesis \relax
\else
\relax
%-------------------------------------------------------------------------- table of En thesis

%---------------------------------------------------------------------------- end of En table
\begin{titlepage}
\vspace{-1cm}{\includegraphics[height=3.8cm]{images/en-logo}}
\centerline{\fontsize{18pt}{19pt}\selectfont\bf Amirkabir University of Technology}\space
\vskip -.2cm
\fontsize{16pt}{17pt}\selectfont\bfseries (Tehran Polytechnic)\par \vskip .2cm
\bfseries
\fontsize{16pt}{17pt}\selectfont\@latinfaculty\space
\vskip 5mm
 \if@mscthesis
MSc Thesis\par
\else
Ph.D Thesis\par
\fi\par
\vspace*{2cm}
%{\fontsize{16pt}{17pt}\selectfont\bfseries Title}%\@latinsubject
\par
\baselineskip=.750cm
{\Huge\@latintitle}%\titlefont
\baselineskip=.750cm \par
\vskip 1.5cm
{\bfseries\latinby}\par
{\fontsize{18pt}{19pt}\selectfont\bfseries
\@latinname \ \@latinsurname}\par
\vskip 1cm

\fontsize{16pt}{17pt}\selectfont\bfseries
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor
{\fontsize{18pt}{19pt}\selectfont\bfseries\par
\@firstlatinsupervisor}
\else
\fontsize{16pt}{17pt}\selectfont\bfseries
Supervisors
\par
{\fontsize{18pt}{19pt}\selectfont\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\par
\vskip 1cm
\fontsize{16pt}{17pt}\selectfont\bfseries
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor
{\fontsize{18pt}{19pt}\selectfont\bfseries\par
\@firstlatinadvisor}
\else

\fontsize{16pt}{17pt}\selectfont\bfseries
Advisors
\par
{\fontsize{18pt}{19pt}\selectfont\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
%\vskip 5mm

\par
\vskip 2cm

{\fontsize{16pt}{17pt}\selectfont\bfseries\@latinthesisdate}
\par
\vskip 1cm

\par

\vfill
%
\end{titlepage}
\fi}

\def\by{نگارش}
\def\latinby{By}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\usepackage{amsthm,amssymb,amsmath,amsfonts}
% بسته‌ای برای تنطیم حاشیه‌های بالا، پایین، چپ و راست صفحه
% این مقادیر برگرفته از سند پارسا دفتر سیاست گذاری و برنامه‌ریزی امور پژوهشی می‌باشد.
\usepackage[top=2.5cm, bottom=2.5cm, left=2.2cm, right=2.2cm]{geometry}
% بسته‌‌ای برای ظاهر شدن شکل‌ها و تصاویر متن
\usepackage{graphicx}
\usepackage{color}
% بسته‌ای برای تنظیم فاصله عمودی خط‌های متن
\usepackage{setspace}
\setstretch{1.3}
\usepackage{tocbasic}
%% \usetocstyle{standard}
\usepackage{titleps}
\usepackage{titletoc}
\usepackage{tocloft}
\usepackage{multirow}
\usepackage{tabularx}
\usepackage{booktabs}
% با فعال کردن بسته زیر فوت‌نوت‌ها در هر صفحه ریست می‌شوند. حالت پیش‌فرض آن ریست شدن در هر فصل می‌باشد.

%\usepackage[perpage]{footmisc}
\usepackage{enumitem}
%\usepackage{titlesec}

% بسته‌ و دستوراتی برای ایجاد لینک‌های رنگی با امکان جهش
\usepackage[pagebackref=false,colorlinks,linkcolor=blue,citecolor=red]{hyperref}
\usepackage[nameinlink]{cleveref}%capitalize,,noabbrev
\AtBeginDocument{%
    \crefname{equation}{برابری}{equations}%
    \crefname{chapter}{فصل}{chapters}%
    \crefname{section}{بخش}{sections}%
    \crefname{appendix}{پیوست}{appendices}%
    \crefname{enumi}{مورد}{items}%
    \crefname{footnote}{زیرنویس}{footnotes}%
    \crefname{figure}{شکل}{figures}%
    \crefname{table}{جدول}{tables}%
    \crefname{theorem}{قضیه}{theorems}%
    \crefname{lemma}{لم}{lemmas}%
    \crefname{corollary}{نتیجه}{corollaries}%
    \crefname{proposition}{گزاره}{propositions}%
    \crefname{definition}{تعریف}{definitions}%
    \crefname{result}{نتیجه}{results}%
    \crefname{example}{مثال}{examples}%
    \crefname{remark}{نکته}{remarks}%
    \crefname{note}{یادداشت}{notes}%
}
% چنانچه قصد پرینت گرفتن نوشته خود را دارید، خط بالا را غیرفعال و  از دستور زیر استفاده کنید چون در صورت استفاده از دستور زیر‌‌،
% لینک‌ها به رنگ سیاه ظاهر خواهند شد که برای پرینت گرفتن، مناسب‌تر است
%\usepackage[pagebackref=false]{hyperref}
% بسته‌ لازم برای تنظیم سربرگ‌ها
\usepackage{fancyhdr}
% بسته‌ای برای ظاهر شدن «مراجع» در فهرست مطالب
\usepackage[nottoc]{tocbibind}
% دستورات مربوط به ایجاد نمایه
\usepackage{makeidx,multicol}
\setlength{\columnsep}{1.5cm}
%\usepackage{tensor}
%\usepackage[all]{xy}
%\usepackage{tikz}
%\usetikzlibrary{arrows}

\usepackage{verbatim}
\makeindex
\usepackage{sectsty}

% فراخوانی بسته زی‌پرشین و تعریف قلم فارسی و انگلیسی
\usepackage[localise]{xepersian}
\SepMark{-}
\settextfont[Scale=1.4]{BNazanin}
\setlatintextfont{Times New Roman}

\fancypagestyle{default}{
    \fancyhf{}
    \fancyfoot[R]{\thepage}
    \fancyhead[L]{\leftmark}%
    \renewcommand{\headrulewidth}{1.2pt}
}
