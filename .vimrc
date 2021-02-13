""" .vimrc -- Mark A. Herndon""" 

"""basic vim settings"""
set number relativenumber
set showcmd
set linebreak
set noswapfile
set wildmode=longest,list,full
set iskeyword+=:

"""Syntax and colorscheme"""
packadd! dracula
syntax enable
colorscheme dracula
set t_Co=256

"""mapleader for macros"""
let mapleader=";"

"""FILETYPE""" 
	autocmd BufRead,BufNewFile *.bib set filetype=bib
	autocmd BufRead,BufNewFile *.tex set filetype=tex   
	autocmd BufRead,BufNewFile *.f90 set filetype=fortran
	autocmd BufRead,BufNewFile *.F90 set filetype=fortran
	autocmd BufRead,BufNewFile *.cpp set filetype=cpp
	autocmd Filetype cpp set tabstop=4 shiftwidth=4 expandtab	
	autocmd Filetype fortran set tabstop=4 shiftwidth=4 expandtab
	autocmd BufRead,BufNewFile *.py  set tabstop=4	
	autocmd BufRead,BufNewFile *.m set filetype=matlab
	autocmd Filetype matlab set tabstop=4
	autocmd BufRead,BufNewFile *.dat set tabstop=2
"""FORTRAN COMMDANDS"""
	autocmd Filetype f90 inoremap;sr SUBROUTINE<Enter><Enter>END<Space>SUBROUTINE
"""LATEX COMMANDS"""
	"NORMAL MODE MACROS"
	
	"compile script must be in same directory as %.tex"
	autocmd Filetype tex nnoremap;cc :! ./compiletex.sh % 1 <Enter>

	"INSERT MODE MACROS"
	"Equation and listing environments"
	autocmd Filetype tex inoremap;eq  <Tab>\begin{equation}<Enter><Enter><Tab>\end{equation}<Esc>ki<Tab><Tab>
	autocmd Filetype tex inoremap;eqn <Tab>\begin{equation*}<Enter><Enter><Tab>\end{equation*}<Esc>ki<Tab><Tab>
	autocmd Filetype tex inoremap;al  <Tab>\begin{align}<Enter><Enter><Tab>\end{align}<Esc>ki<Tab><Tab>
	autocmd Filetype tex inoremap;aln <Tab>\begin{align*}<Enter><Enter><Tab>\end{align*}<Esc>ki<Tab><Tab>
	autocmd Filetype tex inoremap;en  <Tab>\begin{enumerate}<Enter><Enter><Tab>\end{enumerate}<Esc>ki<Tab><Tab>
	autocmd Filetype tex inoremap;it  <Tab>\begin{itemize}<Enter><Enter><Tab>\end{itemize}<Esc>ki<Tab><Tab>
	"Figure and diagram environments"
	autocmd Filetype tex inoremap;tc  <Tab>\begin{tcolorbox}<Enter><Enter>\end{tcolorbox}<Esc>ki<Tab><Tab>
	autocmd Filetype tex inoremap;tz  <Tab>\begin{tikzpicture}<Enter><Enter>\end{tikzpicture}<Esc>ki<Tab><Tab>
	autocmd Filetype tex inoremap;fg  <Tab>\begin{figure}<Enter><Tab><Tab>\centering<Enter><Tab><Tab>\includegraphics[]{}<Enter><Tab><Tab>\caption{}<Enter><Tab><Tab>\label{label:my fig}<Enter><Tab>\end{figure}<Esc>3k14li
	"Text environment settings"
	autocmd Filetype tex inoremap;bf \textbf{}<Esc>hi
	autocmd Filetype tex inoremap;rm \textrm{}<Esc>hi
	autocmd Filetype tex inoremap;mm \(\)<Esc>hhi

	
