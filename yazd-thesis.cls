
%%
%%  This is file `yazd-thesis.cls',
%%   __________________________________
%%   Copyright © 2015-2019 Vahid Damanafshan
%%   http://xelinic.ir
%%   vdamanafshan@gmail.com
%% 	 Updated at January 2022 by Mohammad Farshi (m.farshi@gmail.com) 
%%   http://yazd-thesis.blog.ir
%% 
\NeedsTeXFormat{LaTeX2e}
\def\yazd-thesisversion{0.4}
\ProvidesClass{yazd-thesis}
              [2022/01/01 v\yazd-thesisversion\space A template for the Yazd University]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,11pt]{book}
%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{calc}
\RequirePackage[top=3cm, bottom=2.5cm, left=4cm, right=2.5cm]{geometry}
\RequirePackage[]{graphicx}
\graphicspath{{figures/}}
\RequirePackage{array}
\newcolumntype{C}[1]{>{\raggedleft\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}
\newcolumntype{M}[1]{>{\raggedleft\centering\arraybackslash}m{#1}}
\RequirePackage{multicol} 
\RequirePackage{fancyhdr}
\RequirePackage[nottoc, notlot,notlof,notbib]{tocbibind}
\RequirePackage{zref-perpage}
\zmakeperpage{footnote}
\RequirePackage{makeidx}
\makeindex
\RequirePackage[]{xcolor}
\RequirePackage[]{hyperref}
\RequirePackage{tocloft}

\newcommand\scaletwelve{0.95} %12pt
\newcommand\scalethirteen{0.998} %13pt
\newcommand\scalefourteen{1.14} %14pt
\newcommand\scalefifteen{1.235} %15pt
\newcommand\scaletwenty{1.52} %20pt
\newcommand{\besmwidth}[1]{\def\@besmwidth{#1}}
\def\department#1{\gdef\@department{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\newcommand{\credit}[1]{\def\@credit{#1}}
\newcommand{\defensedate}[1]{\def\@defensedate{#1}}
\newcommand{\grade}[1]{\def\@grade{#1}}
\newcommand{\letgrade}[1]{\def\@letgrade{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\firstinternalreferee}[1]{\def\@firstinternalreferee{#1}}
\newcommand{\secondinternalreferee}[1]{\def\@secondinternalreferee{#1}}
\newcommand{\firstexternalreferee}[1]{\def\@firstexternalreferee{#1}}
\newcommand{\secondexternalreferee}[1]{\def\@secondexternalreferee{#1}}
\newcommand{\sooratjalasafile}[1]{\def\@sooratjalasafile{#1}}
\newcommand{\viewer}[1]{\def\@viewer{#1}}
\newcommand{\totext}[1]{\def\@totext{#1}}
\newcommand{\ack}[1]{\def\@ack{#1}}
\newcommand{\faabstract}[1]{\def\@faabstract{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
\def\campus#1{\gdef\@campus{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\firstlatinexaminer#1{\gdef\@firstlatinexaminer{#1}}
\def\secondlatinexaminer#1{\gdef\@secondlatinexaminer{#1}}
\def\thirdlatinexaminer#1{\gdef\@thirdlatinexaminer{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\latincampus#1{\gdef\@latincampus{#1}}
\newcommand{\enabstract}[1]{\def\@enabstract{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@mscthesis
\@mscthesisfalse


\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions
%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\mychapter}[1]{%
\phantomsection%
\addcontentsline{toc}{chapter}{#1}\chapter*{#1}\markboth{#1}{#1}%
}

\newcommand{\yazdtitle}{%
\pagenumbering{adadi}
\thispagestyle{empty}
%%

\begin{titlepage}
\vspace*{-0.5cm}
\centerline{\includegraphics[width=1.5cm]{logo}}
\vspace*{-10mm}
{\minutesfontthirteen \bfseries \@campus}
\\[10pt]
{\minutesfonttwelve \bfseries \@faculty}
\par
\vspace{2\baselineskip}
{\minutesfontfifteen \bfseries
\if@mscthesis
پایان‌نامه 
\else
رساله
\fi
%\\[4mm]
برای دریافت درجه
\if@mscthesis
کارشناسی ارشد
\else
دکتری
\fi
}
\\[4mm]
{\minutesfontfourteen \bfseries در رشته/گرایش
\@subject/{}\@field 
}
\\[4mm]
{\minutesfonttwenty \bfseries \@title}
\baselineskip=1.5cm\par
\vskip 4ex
 \baselineskip=.5cm
\large
{
\ifx\@firstsupervisor\undefined%
\ifx\@secondsupervisor\undefined%
\else\fi
\else
\ifx\@secondsupervisor\undefined%
{\minutesfontfifteen \bfseries
استاد راهنما:}
\\[4mm]
{\minutesfontthirteen\bfseries \@firstsupervisor}
%}
\else
{\minutesfontfifteen\bfseries 
استادان راهنما:}
\\[4mm]
{\minutesfontthirteen \bfseries\@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\vspace{\baselineskip}
\par\minutesfontfifteen
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
{\minutesfontfifteen \bfseries
استاد مشاور:}
\\[4mm]
{\minutesfontthirteen\bfseries\@firstadvisor}
\else
{\minutesfontfifteen\bfseries
استادان مشاور:}
\\[4mm]
{\minutesfontthirteen\bfseries\@firstadvisor{} و \@secondadvisor}
\fi\fi}
\vspace{\baselineskip}
\par
{\minutesfontfifteen\bfseries%
نگارش:}
\\[4mm]
{\minutesfontthirteen\bfseries\@name\  \@surname}\par
\vspace{2\baselineskip}
{\minutesfontthirteen \@thesisdate}
\end{titlepage}
\newpage
%
\begin{minipage}[c][0.9\textheight][c]{0.9\textwidth}%
\thispagestyle{empty}
\centering
\includegraphics[width=
\ifx\@besmwidth\undefined%
.9\textwidth
\else
\@besmwidth\textwidth
\fi
]{besm}
\end{minipage}%
%\thispagestyle{empty}
%\vspace*{\fill}
%\noindent
\\
\textcolor{gray}{\tiny
آماده‌شده توسط کلاس 
\texttt{yazd-thesis}،
نسخه 
\lr{\yazd-thesisversion} \hfill
{\tiny تاریخ ایجاد  فایل: \today}
}
%%%%%
%\cleardoublepage%~
\newpage
%
%\begin{minipage}[c][\textheight][c]{\textwidth}%
\thispagestyle{empty}
{\centering
\ifx\@sooratjalasafile\undefined%
	\if@mscthesis 
		\centerline{\includegraphics[width=1.4\textwidth]{sooratjalasa-msc}}
	\else
		\centerline{\includegraphics[width=1.4\textwidth]{sooratjalasa-phd}}
	\fi
\else 
\centerline{\includegraphics[width=1.4\textwidth]{\@sooratjalasafile}}
\fi
}
%\end{minipage}%

%%%%%%%
%\cleardoublepage%~
\newpage
%\vspace*{\fill} 
%{\large \bfseries \noindent 
\thispagestyle{empty}
{\ypfont
\renewcommand{\arraystretch}{2.25}%
\begin{tabular}{|M{2.5cm}|@{}M{7.95cm}@{}|}
\hline
\vspace{5pt}
\includegraphics[scale=.09]{logo} {\bfseries\small  تحصیلات تکمیلی}
&
{\large \bfseries 
\hspace*{-2cm}تعهد رعایت حقوق معنوی دانشگاه یزد \hspace*{2cm}
}
\\ \hline
\multicolumn{2}{|p{14cm}|}{
%\if@mscthesis
\baselineskip=.8cm
%\else
%\baselineskip=.73cm
%\fi
اینجانب        
\@name  \@surname\
\if@mscthesis
 دانش‌آموخته مقطع كارشناسی ارشد
\else
دانشجوی مقطع دکتری
\fi
 در رشتهٔ
\@subject \
گرایش
\@field \
که در تاریخ
\@defensedate \
از 
\if@mscthesis 
 پایان‌نامه
\else
رساله
\fi
خود تحت عنوان:
 \@title
%\par
\ 
با کسب درجه
 \ifx\@degree\undefined
\hphantom{عالی}
\else
\@degree\
\fi
دفاع نموده‌ام، شرعاً و قانوناً متعهد می‌شوم: 
\par
1)‌ مطالب مندرج در این 
\if@mscthesis
پایان‌نامه 
\else
رساله
\fi
 حاصل تحقیق و پژوهش اینجانب بوده و در مواردی که از دستاوردهای علمی و پژوهشی دیگران اعم از پایان‌نامه، کتاب، 
 مقاله و غیره استفاده نموده‌ام، رعایت کامل امانت را نموده 
 \if@mscthesis
 و ضمن رعایت قواعد مرجع‌دهی، اقدام به ذكر آن‌ها در فهرست منابع نموده‌ام.
 \else
 و مطابق مقررات، ارجاع و در فهرست منابع مآخذ اقدام به ذکر آن‌ها نموده‌ام. 
 \fi
\par
2) تمام یا بخشی از این 
\if@mscthesis
پایان‌نامه 
\else
رساله
\fi
  قبلاً برای دریافت هیچ مدرک تحصیلی (هم‌سطح، پایین‌تر یا بالاتر) در سایر دانشگاه‌ها و مؤسسات آموزش عالی 
  ارائه نشده است. 
\par
3) مقالات مستخرج از این 
\if@mscthesis
پایان‌نامه 
\else
رساله
\fi
 کاملاً حاصل کار اینجانب بوده و از هرگونه جعل داده و یا تغییر اطلاعات پرهیز نموده‌ام. 
 \if@mscthesis
همچنین با آگاهی كامل از مفاد اصول اخلاق علمی، خود را ملزم به رعایت آن و عدم انجام سرقت و جعل علمی می‌دانم.
\else\fi
\par
4) از ارسال همزمان و یا تکراری مقالات مستخرج از این 
\if@mscthesis
پایان‌نامه 
\else
رساله
\fi
 به نشریات و یا كنگره‌های گوناگون خودداری نموده و
می‌نمایم. 
\par
5)‌ کلیه حقوق مادی و معنوی حاصل از این 
\if@mscthesis
پایان‌نامه 
\else
رساله
\fi
 متعلق به دانشگاه یزد بوده و متعهد می‌شوم هرگونه بهره‌مندی و یا نشر دستاوردهای حاصل از این تحقیق یا غیر 
 از آن اعم از چاپ کتاب، مقاله، ثبت اختراع و غیره (در زمان دانشجویی و یا بعد از فراغت از تحصیل) 
 با کسب اجازه از استاد/استادان راهنما\if@mscthesis{،} مشاور \else \fi
  و ذکر نام دانشگاه یزد باشد. 
\par
6) در صورت اثبات تخلف (در هر زمان) مسئولیت حقوقی آن بطور کامل برعهده اینجانب بوده و می‌پذیرم 
مدرک تحصیلی صادر شده توسط دانشگاه یزد از درجه اعتبار ساقط است و اینجانب هیچگونه ادعایی نخواهم داشت. 
\par 
\if@mscthesis
7) برای انجام مراحل قبل و بعد از دفاع آیین‌نامه‌ها و شیوه‌نامه‌های مربوط در وبسایت تحصیلات تکمیلی دانشگاه را بطور
دقیق مطالعه كرده‌ام و به مفاد آنها پایبند هستم.
\par
\else \fi
\mbox{}
\par
\hspace*{6cm}
\begin{minipage}{6cm}
\bfseries
نام و نام خانوادگی دانشجو: \@name  \@surname\
\par
امضاء و تاریخ:
\end{minipage}
\par
\mbox{}
\par
}
\\\hline
\end{tabular}
%\cleardoublepage%~
%\newpage
}
%%%%%%%%%%%%%%
%%%%%%%%%%%%%%

%%%%%
%\cleardoublepage%~
%\newpage
%\vspace*{\fill} 
%{\large \bfseries \noindent 
\thispagestyle{empty}
\renewcommand{\arraystretch}{2.5}%
\thispagestyle{empty}
{\ypfont
\begin{tabular}{|r|}
\hline
\thispagestyle{empty}
\begin{minipage}{\textwidth}
\vspace*{1.5cm}
\centerline{\includegraphics[scale=0.7]{IRI-logo}}
{\Large \bfseries 
\vspace{\baselineskip}
\centerline{وزارت علوم، تحقیقات و فناوری}
\vspace{\baselineskip}
\centerline{معاونت پژوهش و فناوری}
}
\vspace{\baselineskip}
\centerline{\bfseries به نام خدا}
\vspace{\baselineskip}
\centerline{\Large \bfseries منشور اخلاق پژوهش}
\vspace{\baselineskip}
\thispagestyle{empty}

با استعانت از خدای سبحان و با اعتقاد راسخ به اینكه عالم محضر خداست و او همواره ناظر بر اعمال ماست و به منظور انجام شایستة پژوهش‌های اصیل، تولید دانش جدید و بهسازی زندگانی بشر، ما دانشجویان و اعضای هیأت علمی دانشگاه‌ها و پژوهشگاه‌های كشور:
\begin{itemize}
\item 	تمام تلاش خود را برای كشف حقیقت و فقط حقیقت به كار خواهیم بست و از هر گونه جعل و تحریف در فعالیت‌های علمی پرهیز می‌كنیم.
\item 	حقوق پژوهشگران، پژوهیدگان (انسان، حیوان، گیاه و اشیاء)، سازمان‌ها و سایر صاحبان حقوق را به رسمیت می‌شناسیم و در حفظ آن می‌كوشیم.
\item 	به مالكیت مادی و معنوی آثار پژوهشی ارج می‌نهیم، برای انجام پژوهشی اصیل اهتمام ورزیده از سرقت علمی و ارجاع نامناسب اجتناب می‌كنیم.
\item 	ضمن پایبندی به انصاف و اجتناب از هر گونه تبعیض و تعصب، در كلیة فعالیت‌های پژوهشی رهیافتی نقادانه اتخاذ می‌کنیم. 
\item 	ضمن امانت‌داری، از منابع و امكانات اقتصادی، انسانی و فنی موجود استفاده بهره‌ورانه می‌کنیم.
\item 	از انتشار غیراخلاقی نتایج پژوهش نظیر انتشار موازی همپوشان و چندگانه (تكه‌ای) پرهیز می‌كنیم.
\item 	اصل محرمانه بودن و رازداری را محور تمام فعالیت‌های پژوهشی خود قرار می‌دهیم.
\item 	در همه فعالیت‌های پژوهشی به منافع ملی توجه كرده و برای تحقق آن می‌كوشیم.
\item 	خویش را ملزم به رعایت كلیه هنجارهای علمی رشته خود، قوانین و مقررات، سیاست‌های حرفه‌ای، سازمانی، دولتی و راهبردهای ملی در همه مراحل پژوهش می‌دانیم. 
\item 	رعایت اصول اخلاق در پژوهش را اقدامی فرهنگی می‌دانیم و به منظور بالندگی این فرهنگ، به ترویج و اشاعۀ آن درجامعه اهتمام می‌ورزیم.
\end{itemize}
\vspace{2\baselineskip}
                 %\centerline
				 {\hspace*{1cm}\bfseries نام و امضاء دانشجو:		\hspace*{4cm} 	    نام و امضاء استاد راهنما:}
				 \vspace{2\baselineskip}
\end{minipage}
\\\hline
\end{tabular}
\pagestyle{empty}
%\cleardoublepage%~
\newpage

}
%%%%%%%%%%%%%
%\flushright 
%%%%%%%%%%%
%\cleardoublepage%~
%\newpage
\ifx\@totext\undefined%
\else
\thispagestyle{empty}
\@totext
\fi
%\cleardoublepage%~
\newpage
\thispagestyle{empty}
\ifx\@ack\undefined%
\else
\thispagestyle{empty}
%\begin{minipage}{\textwidth}
%\def\baselinestretch{1.3}
%\setstretch{1.5}
%\linespread{2}\selectfont
\@ack
%\end{minipage}
\fi
\cleardoublepage%~
\newpage
%\cleardoublepage%~
%\newpage
\ifx\@faabstract\undefined%
\else
\@faabstract
\thispagestyle{empty}
\fi
}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{\scriptsize \@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

\newcommand{\latinyazdtitle}{%
\pagestyle{empty}
\cleardoublepage%~
\newpage
\newgeometry{left=2.5cm, right=4cm}
\ifx\@enabstract\undefined%
\else
\@enabstract
\fi
\clearpage~
\thispagestyle{empty}
\begin{titlepage}
\def\baselinestretch{1.7}
\vspace*{-8mm}
\centerline{\includegraphics[width=1.5cm]{logo}}
\vspace*{5mm}
\yefont
{\huge \bfseries
Yazd University
}
\\[5pt]
{\Large \bfseries \@latinfaculty}
\\[5pt]
{\large 
\@latindepartment}
\par
\vspace{4em}
{\Large \bfseries 
 \if@mscthesis
A Thesis Submitted in Partial Fulfillment of the Requirements for the Degree of %\\[1em]
%Master of Science 
\@latindegree \ 
in \@latinfield
\else
A Dissertation Submitted in Partial Fulfillment of the %\\[1em]
Requirements for the Ph.D. Degree in \@latinfield
\fi
}
\par
\vspace{5em}
%{\Large \bfseries Title}
\par
{\Huge\bfseries\@latintitle}
\baselineskip=1cm \par
\vskip 2cm
%\vskip 7mm
{\large{\large \bfseries By:}\\
\@latinname \; \@latinsurname}\par
\vskip 10mm
\flushleft \noindent Evaluated and Approved by 
\if@mscthesis
Thesis
\else
Dissertation 
\fi
Committee, on {\@latinthesisdate}
\vskip 7mm
%\def\baselinestretch{1}
%\hspace*{-1cm}
\begin{enumerate}%[leftmargin=-.5in]
\setlength{\itemindent}{-.2in}
\setlength\itemsep{-1.5em}
\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
{%\large\bfseries
%Supervisor\\
\item \@firstlatinsupervisor\  (Supervisor)}
\else
{%\large\bfseries
%Supervisors\\
 \item \@firstlatinsupervisor\ (Supervisor){} 
 \item \@secondlatinsupervisor\ (Supervisor)}
\fi\fi
\par
%\vskip 7mm
\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
{%\large\bfseries
%Advisor\\
\item \@firstlatinadvisor\ (Advisor)}
\else
{%\large\bfseries
%Advisors\\
\item \@firstlatinadvisor\ (Advisor){} 
\item \@secondlatinadvisor\ (Advisor)}
\fi\fi
%%%%%%%%%%
\ifx\@firstlatinexaminer\undefined%
\else
\item \@firstlatinexaminer\  (Examiner)
\fi
\ifx\@secondlatinexaminer\undefined%
\else
\item \@secondlatinexaminer\  (Examiner)
\fi
\ifx\@thirdlatinexaminer\undefined%
\else
\item \@thirdlatinexaminer\  (Examiner)
\fi


\end{enumerate}
\vskip 5mm
\end{titlepage}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\persiangloss[2]{#1\dotfill\lr{#2}\\}
\newcommand\englishgloss[2]{#2\dotfill\lr{#1}\\}
%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
\theoremstyle{definition}
\newtheorem{definition}{تعریف}[section]
\newtheorem{observation}{مشاهده}[section]
\theoremstyle{plain}
\newtheorem{theorem}[definition]{قضیه}
\newtheorem{lemma}[definition]{لم}
\newtheorem{proposition}[definition]{گزاره}
\newtheorem{corollary}[definition]{نتیجه}
\newtheorem{remark}[definition]{ملاحظه}
\theoremstyle{definition}
\newtheorem{example}[definition]{مثال}
\renewcommand{\bibname}{}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{} 
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
\def\@makechapterhead#1{%
  \vspace*{70\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \centerline{\centering \titrfont \huge\bfseries \@chapapp\space \thechapter:}
        \par\nobreak
        \vskip 30\p@
      \fi
    \fi
    \interlinepenalty\@M
	\begin{center}
    	{\centering \huge \bfseries #1}
	\end{center}
	\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
    \newpage
  }}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
%%    \newpage
  }}  
  \flushbottom
}


\setlength{\parindent}{1cm}
\setlength{\parskip}{0pt}

\setlength{\footskip}{
\paperheight   -(1in+\voffset+\topmargin+\headheight+\headsep+\textheight)  -1cm
}

\makeatletter
\renewcommand\section{\@startsection{section}{1}{\z@}%
                                   {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {1cm \@plus0ex}%
                                   {\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                    {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {1cm \@plus0ex}%
                                     {\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {1cm \@plus0ex}%
                                     {\normalfont\normalsize\bfseries}}  
 \makeatother
 
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\vspace*{\fill}
\begin{center}
%این صفحه، عمداً خالی گذاشته شده است.
\end{center}
\vspace{\fill}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother


\makeatletter
\let\origprintindex\printindex
\renewcommand*{\printindex}{%
\cleardoublepage
  \fancypagestyle{plain}{%
    \fancyhf{}%
    \renewcommand{\headrulewidth}{0pt}%
    \renewcommand{\footrulewidth}{0pt}%
  }%
  \tolerance=10000
  \origprintindex
}
\makeatother



\newcommand{\ysymbol}[2]{%
\gdef\currntsymbol{#1}%
\gdef\currntsymboldef{#2}%
\csname phantomsection\endcsname%
%#1%
\addcontentsline{los}{ysymbol}{%
\protect\numberline{\currntsymbol}%
\currntsymboldef}%
}
%%%%%TOC
%\renewcommand{\simplechapterdelim}{:}
%\simplechapter[فصل]

\makeatletter
\renewcommand\@tocrmarg{1.55em}
\newcommand\listsymbolsname{\centerline{\huge فهرست نمادهای اختصاری و اختصارات }}
\newcommand\listofsymbols[1][3em]{%
\cleardoublepage
\newcommand*\l@ysymbol{%
\@dottedtocline{1}{0em}{#1}} \mychapter{\listsymbolsname}%
\setlength{\columnsep}{5ex}
\begin{multicols*}{2}
\small
\baselineskip=1cm
\@starttoc{los}
\raggedcolumns
\end{multicols*}
}
\makeatother


%% 
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Vahid Damanafshan.
%% 
%% 
%% 
%% 
%%
%% End of file `yazd-thesis.cls'.
