execute pathogen#infect()
syntax on
filetype plugin indent on

" Normal backspace and tab 
set backspace=indent,eol,start
set complete-=i
set autoindent
" >> will use spaces, pressing TAB will insert a tab
set tabstop=4
set expandtab
set shiftwidth=4

colorscheme evening

" No wrapping
set nowrap

" Ruler
set ruler

" Autodisplay colon commands
set wildmenu

" Line numbers
set number

" Searching stuff
set incsearch
set cursorline

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set autochdir
set path+=**
set wildmenu

" 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Remove whitespace
command RemoveWhitespace %s/\s\+$//e

" Filetype specific
" LaTeX
autocmd FileType tex set makeprg=pdflatex\ %\ &&\ open\ %:r.pdf
autocmd FileType tex set spell
autocmd FileType tex set tw=80
autocmd FileType tex :command Bib !pdflatex % && bibtex %:r && pdflatex % && pdflatex %

" Python
autocmd FileType python set makeprg=python3\ %
" NERDTree
nmap ,l :NERDTreeToggle<CR>
nmap ,r :NERDTreeFind<CR>

"Tagbar
nmap ,t :Tagbar<CR>

" ALE
let g:ale_sign_column_always = 1
let g:al_sign_error = '!'
let g:al_sign_error = '>'

" Whitespace characters
set listchars=tab:⇥\ 
set list

"YCM
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" Codi
let g:codi#interpreters = {'python': {'bin': '/usr/local/bin/python3'}}
let g:codi#rightalign = 0
execute pathogen#infect()
