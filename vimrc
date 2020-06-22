""""""""""""""""""""""""""""""
"Vundle
""""""""""""""""""""""""""""""
" https://github.com/l-jdavies/dotfiles/blob/master/.vimrc
" https://realpython.com/vim-and-python-a-match-made-in-heaven/#vim-extensions

" Installed the package manager Vundle
" Installed from https://github.com/VundleVim/Vundle.vim
" To add plugins, add in the 'Plugin' list then run ':so ~/.vimrc' followed by
" ':PluginInstall'

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Color scheme
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'itchyny/lightline.vim'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Config for lightline.vim plugin
set laststatus=2
set noshowmode " hides '-- INSERT --' since its specified in statusline 

"
set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor
"syntax enable
"colorscheme monokai

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"File settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Change default so line numbers are always shown
set number

" Enable syntax highlighting (based on detected filetype)
syntax on

" Change tab to two spaces
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set softtabstop=4

" Add date stamp with F3
" nmap <F3> i<C-R>=strftime("%d-%m-%Y %a %I:%M %p")<CR><Esc>
" imap <F3> <C-R>=strftime("%d-%m-%Y %a %I:%M %p")<CR>

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable highlighting with mouse
" set mouse=a

" Enable show white space as dot and tab as arrow
" set list
" set listchars=tab:→\ ,space:·
