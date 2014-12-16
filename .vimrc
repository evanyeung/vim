" for pathogen package manager
execute pathogen#infect()

syntax enable
set t_Co=256
"set background=light
"colorscheme solarized
set background=dark
colorscheme Tomorrow-Night

let mapleader=';'

set number
set ruler
set nowrap
set hidden

set backspace=2 " make backspace work like most other apps"

" used for autoindenting. filetype pl... sets indent for language specific
set autoindent
filetype plugin indent on

" sets the width of the tab to 4
set tabstop=4
set shiftwidth=4
set softtabstop=4
" use spaces instead of tabs at beginning of line
set smarttab
" use spaces instead of tabs
set expandtab
" toggle expandtab
nmap <leader>t :set expandtab!<CR>

" folding
set foldmethod=indent
nnoremap <space> za

" buffer mapping
nmap <leader>h :bp<CR>
nmap <leader>l :bn<CR>
" use plugin to not exit program when close buffer
" cabbrev 'bd' <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? '<Plug>Kwbd' : 'bd')<CR>
nmap <leader>d <Plug>Kwbd

" show unwanted whitespace
set list
set listchars=trail:~,tab:>~
" toggle it easily
nmap <leader>w :set list!<CR>

" NERDTree settings
let NERDTreeQuitOnOpen = 0
command NT NERDTree

" NREDTree tabs settings
map <Leader>n <plug>NERDTreeMirrorToggle<CR>
" map <Leader>f <plug>NERDTreeTabsFind<CR>

" airline settings
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=1
let g:airline#extensions#tabline#buffer_nr_show=1
" let g:airline_theme="solarized"
set ttimeoutlen=50

" syntastic
let g:syntastic_mode_map = { 'mode': 'passive',
    \ 'active_filetypes': ['javascript', 'css'],
    \ 'passive_filetypes': ['html', 'python'] }

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_python_checkers = ['pylint']

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/node_modules/**

" UltiSnips
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'vim-snippets/UltiSnips']

" YouCompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
