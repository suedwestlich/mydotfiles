" get rid of Vi compatibility mode. SET FIRST!
set nocompatible

" Initialize Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Enable syntax highlighting
syntax on
filetype plugin indent on

" some stuff
set timeout timeoutlen=1500
let mapleader=","

" Colorscheme see https://github.com/hukl/Smyck-Color-Scheme
color smyck

