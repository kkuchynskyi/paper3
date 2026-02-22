%%
%% LaTeX documentclass for the journal
%%	Theory of Stochastic Processes
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<identification>%
\NeedsTeXFormat{LaTeX2e}
	[2001/06/01]
\ProvidesClass{tsp-short}
	[2009/02/03 v1.11 TSP Author Class]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<Options>%
\ProcessOptions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<Package load>%
\RequirePackage[english]{babel}

\LoadClass{amsart}[1999/11/24]

\RequirePackage{amssymb}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<Main code>%
%% Default language
\selectlanguage{english}

%% Set margins
\textwidth=32pc
\textheight=52.5pc

\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\topmargin}{-2pt}
\addtolength{\textheight}{10pt}
%%
\endinput