%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------
\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[margin=.5in, vmargin=1.2cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{333b47} % The primary document color for content text

\definecolor{headings}{HTML}{363b70} % The color of the large sections

\definecolor{location}{HTML}{000000} % The color of the large sections

\definecolor{subheadings}{HTML}{000000} % The color of subsections and places worked/studied

\definecolor{descript}{HTML}{000000} % The color of subsections and places worked/studied 

\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right
\definecolor{name}{HTML}{666666} % The color used for the Last Updated text at the top right

\definecolor{jobtitle}{HTML}{603678} % The color used for the Last Updated text at the top right

\definecolor{sectionsunderhead}{HTML}{000000} % The color used for the Last Updated text at the top right

\definecolor{run}{HTML}{2a467a} % The color used for the Last Updated text at the top right






%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=primary, Path = fonts/muli/,
BoldItalicFont = Muli-RegularItalic, BoldFont = Muli-Bold, ItalicFont = Muli-LightItalic]{Muli-Light} 

% The primary font for content text; defines bold, italic and bold-italic as well

\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight} % The font used where \sfffamily is called

%----------------------------------------------------------------------------------------
%	LAST UPDATED COMMAND
%----------------------------------------------------------------------------------------

\usepackage[absolute]{textpos} % Required for positioning the Last Updated text at the top right of the page
\usepackage[UKenglish]{isodate} % Prints the Last Updated date in UK English format

\setlength{\TPHorizModule}{0.01\paperwidth} % Sets the units for the horizontal position used in the \begin{textblock} argument
\setlength{\TPVertModule}{0.01\paperwidth} % Sets the units for the vertical position used in the \begin{textblock} argument
\newcommand{\lastupdated}{ % Create a new command for printing the Last Updated text
\begin{textblock}{25}(75,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont % Text styling of the text
Last Updated on \today % Last Updated text
\end{textblock}}

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[3]{ % Defines the command for the main heading
{
\fontsize{60pt}{60pt} % Font size
\fontspec[Path = fonts/montserrat/]{Montserrat-Thin}\selectfont #1 % First name font
\fontspec[Path = fonts/montserrat/]{Montserrat-Regular}\selectfont #2 % Last name font
} \\[1pt] % Whitespace between the name and contact information
\color{name} % Use the headings color
\fontspec[Path = fonts/quicksand/]{Quicksand-Light}\fontsize{11pt}{14pt}\selectfont #3} % Contact information font
\vspace{-5pt} % Reduce whitespace after the rule slightly


%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\newName}[3]{ % Defines the command for the main heading
{
\fontsize{48pt}{48pt} % Font size
%\fontspec[Path = fonts/poppins/]{Poppins-Light}\selectfont #1 % First name font
%\fontspec[Path = fonts/AlegreyaSans/]{AlegreyaSans-Light}\selectfont #2 % Last name font
%\fontspec[Path = fonts/montserrat/]{Montserrat-Thin}\selectfont #1 % First name font
%\fontspec[Path = fonts/montserrat/]{Montserrat-Thin}\selectfont #2 % last name font
%\fontspec[Path = fonts/Fira_Code/]{FiraCode-Regular}\selectfont #1 % Last name font
%\fontspec[Path = fonts/Fira_Code/]{FiraCode-SemiBold}\selectfont #2 % Last name font
%\fontspec[Path = fonts/roboto/]{Roboto-Bold}\selectfont #1 % Last name font
%\fontspec[Path = fonts/roboto/]{Roboto-Bold}\selectfont #2 % Last name font
%\fontspec[Path = fonts/poppins/]{Poppins-Thin}\selectfont #1 % Last name font
%\fontspec[Path = fonts/poppins/]{Poppins-SemiBold}\selectfont #2 % Last name font
%\fontspec[Path = fonts/News_Cycle/]{NewsCycle-Regular}\selectfont #1 % Last name font
%\fontspec[Path = fonts/News_Cycle/]{NewsCycle-Regular}\selectfont #2 % Last name font
\fontspec[Path = fonts/public-sans-v1.007/binaries/otf/]{PublicSans-Regular}\selectfont #1 % Last name font
\fontspec[Path = fonts/public-sans-v1.007/binaries/otf/]{PublicSans-Regular}\selectfont #2 % Last name font
} \\[1pt] % Whitespace between the name and contact information
\color{name} % Use the headings color
\fontspec[Path = fonts/quicksand/]{Quicksand-Light}\fontsize{11pt}{14pt}\selectfont #3} % Contact information font
\vspace{-5pt} % Reduce whitespace after the rule slightly

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles

\titlespacing{\subsection}{0pt}{0pt}{6pt} % Removes the spacing around the subsections

\titlespacing{\runsubsection}{0pt}{0pt}{5pt} % Removes the spacing around the subsections


\newcommand{\sectionspace}{\vspace{0pt}} % Defines a command to add a set amount of space after sections and subsections



\titleformat{\section}{ % Customize the large section titles
\color{headings}\scshape\fontspec[Path = fonts/poppins/]{Poppins-Medium}\fontsize{14pt}{22pt}\selectfont \raggedright\uppercase}{}{0em}{}



% ex: uci  % MY TITLE : SOFTWARE INTERN, WICS CHAIR, ETC.
\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\color{subheadings}\fontspec[Path = fonts/quicksand/]{Quicksand-SemiBold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}


% MY TITLE : SOFTWARE INTERN, WICS CHAIR, ETC.
\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{run}\fontspec[Path = fonts/poppins/]{Poppins-Light}\fontsize{11pt}{11pt}\selectfont\bfseries\uppercase {\vspace{.5em}#1\vspace{.4em}} \normalfont}



\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{descript}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{13pt}\selectfont {#1 \\} \normalfont}


\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{location}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Light}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}\itemsep-1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
