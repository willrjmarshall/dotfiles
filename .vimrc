" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

au BufRead,BufNewFile *.scss set filetype=scss
" au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
" VUNDLE
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle "ervandew/supertab"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "scrooloose/snipmate-snippets"
Bundle "scrooloose/nerdtree"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-haml"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-bundler"
Bundle "tpope/vim-git"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-rvm"
Bundle "tpope/vim-rake"
Bundle "tpope/vim-cucumber"
Bundle "tpope/vim-endwise"
Bundle "scrooloose/nerdcommenter"
Bundle "kchmck/vim-coffee-script"



set guifont=Menlo:h14
set linespace=8

syntax on
set number
set nowrap
set hlsearch  " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase


set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent,eol
set cursorline

" Always display the status line
set showcmd
set ruler

" , is the leader character
let mapleader = ","

" use ack instead of grep
set grepprg=ack
set grepformat=%f:%l:%m 

" Sets the backgroud of the theme 0 is darker
colorscheme molokai
set fuoptions=maxvert,maxhorz
set guioptions-=T
let g:molokai_original=0

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

" Backups & Files

set backup                   " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

" Fuzzy finder params
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70

" Custom mappings
map <leader>r :ruby finder.rescan!<CR>

map <leader>t :FuzzyFinderFileWithCurrentBufferDir<CR>
map <leader>b :FuzzyFinderBuffer<CR>

map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

map <leader>p :Project<CR>

" map <leader>ch :Project<CR><C-h>/Choices<CR><CR>j<CR>:only<CR>

:noremap ,v :vsp<cr>
:noremap ,h :split<cr>

imap jj <Esc>
imap uu _
imap hh =>

map <S-Enter> O<ESC>
map <Enter> o<ESC>

map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-l> <C-w>l


" Ompni Complete
 autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
 autocmd FileType python set omnifunc=pythoncomplete#Complete
 autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
 autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete
 autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete " may require ruby compiled in

" you always want this
set nocompatible
filetype indent plugin on | syn on
filetype indent on

" allow buffers to go in background
set hidden

" type \c to open the config


" useful mappings:
noremap \c :e ~/.vimrc<cr>
noremap \w :w!<cr>
" you may want to remove the <c-d> if you have many files opened
noremap \b :b<space><c-d>
noremap \h :h<space>
" open one file
noremap \e :e<space>**/*
" open all files
noremap \n :n<space>**/*
noremap \r :TRecentlyUsedFiles<cr>


set noerrorbells visualbell t_vb=


" reload .vim files after saving. This should also apply to ~/.vimrc
if !exists('g:myvimstuff_done')
let g:myvimstuff_done =1
  augroup myvimstuff
    autocmd BufWrite *.vim :source %
    autocmd BufWrite ~/.vimrc :source %
  augroup end
endif

" echoe is nice for debugging. You can view messages again by the :messsages command
" this way you know that vim hit a line

" deactive some tlib plugins. You may want to enable them again.
let loaded_cmdlinehelp=1
let loaded_concordance=1
let loaded_evalselection=1
let loaded_glark=1
let loaded_hookcursormoved=1
let loaded_linglang=1
let loaded_livetimestamp=1
let loaded_localvariables=1
let loaded_loremipsum=1
let loaded_my_tinymode=1
let loaded_netrwPlugin=1
let loaded_pim=1
let loaded_quickfixsigns=1
let loaded_scalefont=1
let loaded_setsyntax=1
let loaded_shymenu=1
let loaded_spec=1
let loaded_tassert=1
let loaded_tbak=1
let loaded_tbibtools=1
let loaded_tcalc=1
let loaded_tcomment=1
let loaded_techopair=1
let loaded_tgpg=1
let loaded_tlog=1
let loaded_tmarks=1
let loaded_tmboxbrowser=1
let loaded_tmru=1
let loaded_tortoisesvn=1
let loaded_tregisters=1
let loaded_tselectbuffer=1
let loaded_tselectfile=1
let loaded_tsession=1
let loaded_tskeleton=1
let loaded_tstatus=1
let loaded_ttagcomplete=1
let loaded_ttagecho=1
let loaded_ttags=1
"let loaded_ttoc=1
let loaded_viki=1
let loaded_vikitasks=1


finish
" everything after finish will not be read by Vim.
So put your notes here.
Now you have syntax highlighting.

~/.vim/plugins/*.vim # is sourced when you startup vim always
~/.vim/autoload/**/*.vim # is sourced lazily if you call a func
~/.vim/ftplugin/name.vim # eg name = c or name = vim: Those files are loaded when you open such a filetype

Help:
:h

How to uset he command line?
- <c-d> : show list. Example :h mot*ion.txt<c-d>
  <tab> : next match
  <s-tab>: previous match <s- = shift key <c- = ctrl -key


ctrl-v = block selection can be used with Itext<esc> to insert text in multiple lines at once
d= delete

v = from cursor to new pos
V = linewise
o = jump cursos to other end
gv = reselect last selection
u = undo (vim saves a tree of history. See g+ g-. Dont' bother about it. Just be aware whatever you type wil not be lost unless you exit Vim)

" things you may be interested in:

This is folding:
folding 
plugins
movements (:h motion.txt)

Then don't miss quickfix

How to cope with plugins? Use my vim-addon-manager script. Don't install manually
url = git://github.com/MarcWeber/vim-addon-actions.git

movementns:
eE = end of word. Behavior is different ABC.DEF. first stops at C, second stops at F (spaces only)
g; = last position you edited
ctrl-o ctrl-i    previous cursoor pos
ctlr-^ = toggle file

3 types of sub windos:
/ = search forward
? = search backward
: = command

q<char> will open a subbuffer. Then you have history

So try q: once, please

y = yank = copy
p = paste
P = paste before cursor!

y3w = copy 3 words
v3ey = visually select 3 words and yank them.. you get it

text ojects:
dat = delete a tag
dit = delete inner tag
ya( = yank a ( ) pair and contents
yi( = yank inner contents of () pair etc..

dt) = delete till )
df) = delete including )

func (){

try again

}

indentation:
>3j = indent three lines
V .. select what you want > = indent selection
while coding use <c-t> <c-d> to change indentation
maybe :set autoindent (see help)


"tabs - spaces:
set sw =2 use 2 spaces for indentation
"set expandtab = expand tab to spaces
set noexpandtab
set tabstop = 8  use 8 spaces for a tab (display only)
:set invlist  = invert list option = show tabs and special chars
	aoeunth << a tab
@: = repeat last command 

You should consider using setlocal (which only sets an option for the current buffer)
sometimes

completion: very important:
<c-x><c-l> : line
<c-x><c-o> : omniOENTUHKKJKJK
PAOEUOEUNTOHAENUTOEH
<c-x><c-u> : completefunc (same as omni, but alternative)
<c-x><c-f> : file name completion
<c-n> : don't know exactly. Kind of word completion. Don't type a word twice
There may be some more. Those are the most important ones

show a setting: echo &omnifunc

!!! learn about tags

l


