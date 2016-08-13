set clipboard=unnamedplus
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'valloric/youcompleteme'

Plugin 'jiangmiao/auto-pairs'

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
