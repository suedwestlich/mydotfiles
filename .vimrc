" get rid of Vi compatibility mode. SET FIRST!
set nocompatible

" Initialize Pathogen
runtime autoload/pathogen.vim
execute pathogen#infect()

" Enable syntax highlighting
syntax on
filetype plugin indent on

" some stuff
set timeout timeoutlen=1500
let mapleader=","

" Colorscheme see https://github.com/hukl/Smyck-Color-Scheme
color smyck

" Set encoding
set encoding=utf-8

" Zeigt Zeilennummer an
set number
set ruler

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Disable code folding
set nofoldenable

set completeopt=longest,menuone

" Erstetzt Umlaute wie ä,ö,ü und ß durch die HTML entitäten
:map S :silent :1,$!/home/simon/Vim/ReplaceSpecialCharsToHTMLEntities.pl<Return>

" trim each line
:map T :silent :1,$!/home/simon/Vim/TrimEachLine.pl<Return>

" convert to upper / lowercase letters
:map U :silent :1,$!/home/simon/Vim/ToUpperCase.pl<Return>
:map L :silent :1,$!/home/simon/Vim/ToLowerCase.pl<Return>

" Show trailing spaces and highlight hard tabs
set list listchars=tab:»·,trail:·

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Search related settings
set incsearch
set hlsearch

" Map Ctrl+l to clear highlighted searches
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Highlight characters behind the 80 chars margin
:au BufWinEnter * let w:m2=matchadd('ColumnMargin', '\%>80v.\+', -1)

" Disable code folding
set nofoldenable

" Directories for swp files
set backupdir=~/.vimbackup
set directory=~/.vimbackup

" make uses real tabs
au FileType make set noexpandtab
