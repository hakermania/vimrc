set clipboard=unnamedplus
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'valloric/youcompleteme'

Plugin 'jiangmiao/auto-pairs'

Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:NERDSpaceDelims = 1
nnoremap <F9> :!%:p<Enter>
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 1

" remove the popup window of ycm, showing information about the function
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set hlsearch
set number

let mapleader = "\<Space>"
" now I can save with space w
nnoremap <Leader>w :w<CR>
" quit with space q
nnoremap <Leader>q :q<CR>
" edit vimrc
nnoremap <Leader>v :tabe ~/.vimrc<CR>
" reload vimrc
nnoremap <Leader>r :so ~/.vimrc<CR>

" now I can toggle nerd tree
nmap <silent> <Leader>t :NERDTreeToggle<CR>
" tabs to spaces
set expandtab
set tabstop=4
set shiftwidth=4
map <F2> :retab <CR> :wq! <CR>
