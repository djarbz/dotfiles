" ~/.vimrc
"colorscheme desert
"colorscheme delek
"colorscheme torte
"colorscheme slate

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
if has('syntax')
  syntax on
endif


" Add numbers to each line on the left-hand side.
"set number

" Make backspace work properly
set backspace=indent,eol,start
" Backspace deletes like most programs in insert mode
"set backspace=2

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn

" Set shift width to follow tabstop.
set shiftwidth=0

" Set tab width to 2 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Tab Stops
set tabstop=2
set shiftwidth=2

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" https://superuser.com/questions/437730/always-use-set-paste-is-it-a-good-idea
" This post has my favorite answer, https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
" Basically if you start in Insert mode and use Ctrl+Shift+V or right click paste with your mouse,
" Vim detects that this came from a terminal and automatically sets paste mode, then unsets it once done,
" so you don't lose remapped keys (which can't work in paste mode because its writing raw data) and you are back to a "sane" state when it is done.
if has('termguicolors')
  let &t_SI .= "\<Esc>[?2004h"
  let &t_EI .= "\<Esc>[?2004l"
endif
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

if exists('*function')
  function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
  endfunction
endif


" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

"call plug#begin('~/.vim/plugged')

"  Plug 'username/plugin-name'

"call plug#end()

" }}}
"
"


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" Clear last search term
map <F3> :let @/ = ""<CR>

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.


" }}}



" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
