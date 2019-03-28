set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" two airline plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" two markdown plugins
"Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'kien/rainbow_parentheses.vim'

call vundle#end()
filetype plugin indent on

" misc settings
set nobackup
set noswapfile
set ignorecase " Case insensitive search
set smartcase " Case sensitive when upper-case present
set number
set showmode
set showcmd
set scrolloff=7 " Number of lines to keep above and below the cusor
set hidden
set history=50
set incsearch " search while typing
set hlsearch " highlight search item
set ruler " show the position of cursor

set tabstop=4 " tab=4space
set shiftwidth=4 " indent width
set expandtab " tab is convertible
set autoindent " follow the same indent style as previous line
set smartindent " another autoindent
set backspace=indent,eol,start " grant backspace delete role
" set backspace=2 " alternative way to do the same thing as above

" change default leader key
let mapleader=","

" vim theme setting
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" highlight the position of cursor
set cursorcolumn
set cursorline

" enable mouse
" set mouse=a

" disable markdown folding
let g:vim_markdown_folding_disabled=1

" statusline settings
set laststatus=2 " alwasy show statusline
let g:airline#extensions#tabline#enabled=1 " enable tabline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

" fancy statusline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

" rainbow parenthesis settings
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" shortcut for changing the size of windows
map <leader>= <C-W>+
map <leader>- <C-W>-
map <leader>= <C-W>>
map <leader>- <C-W><

tnoremap <ESC> <C-w>:q!<CR>
nnoremap <Space> i<Space><Right><ESC>





