set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized' " solarized color scheme
Plugin 'vim-airline/vim-airline' " two airline plugins
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular' " two markdown plugins
Plugin 'plasticboy/vim-markdown'
"Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fugitive' " git tool
Plugin 'kien/ctrlp.vim' " file search
Plugin 'vim-syntastic/syntastic' " syntastic check

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
set clipboard=unnamed " use system clipboard

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
" syntax on " show syntax on md file
let g:vim_markdown_folding_disabled=1 " disable folding in md

" statusline settings
set laststatus=2 " alwasy show statusline
let g:airline_powerline_fonts = 1 " powerline fonts
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

tnoremap <ESC> <C-w>:q!<CR> " shortcut to quit terminal in split window
nnoremap <Space> i<Space><Right><ESC> " add space in normal mode

" ctrlp settings
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0

" synatstic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" for cosmetic purpose
" let g:syntastic_error_symbol='>>'
" let g:syntastic_warning_symbol='>'
let g:syntastic_python_checkers=['pyflakes'] " faster algorithm
" let g:syntastic_enable_highlighting=1 " highlight error position
let g:syntastic_loc_list_height = 5 " error window height
