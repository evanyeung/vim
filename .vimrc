" for pathogen package manager
execute pathogen#infect()

" colors
syntax enable
set t_Co=256
"set background=light
"colorscheme solarized
let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark
"colorscheme Tomorrow-Night-Eighties
colorscheme base16-ocean

" set leader to something easy to hit
let mapleader=';'

" map s to save and turn off swap
nnoremap s :w<cr>
set noswapfile

" map jk to escape in insert mode
imap jk <esc>

" basic setup
set number      " show line numbers
set ruler       " show % scrolled, line, and column in status bar
set nowrap      " disable line wrapping
set hidden      " hide buffers instead of closing them
set cursorline  " highlight current line
set backspace=2 " make backspace work like most other apps
set incsearch   " move cursor to next string while typing in search

" used for autoindenting. filetype pl... sets indent for language specific
set autoindent
filetype plugin indent on

" tab
set tabstop=4      " sets the width of the tab to 4
set shiftwidth=4
set softtabstop=4
set smarttab  " use spaces instead of tabs at beginning of line
set expandtab " use spaces instead of tabs
" toggle expandtab
nmap <leader>t :set expandtab!<CR>

" folding
set foldmethod=indent
nnoremap <space> za

" buffer mapping
nmap <leader>h :bp<CR>
nmap <leader>l :bn<CR>
" use plugin to not exit program when close buffer
nmap <leader>d <Plug>Kwbd

" split movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" show unwanted whitespace
set list
set listchars=trail:~,tab:>~
nmap <leader>w :set list!<CR> " toggle whitespace easily
let &colorcolumn="101" " highlight 101 char col

" NERDTree settings
let NERDTreeQuitOnOpen = 0
command NT NERDTree
map <Leader>n <plug>NERDTreeMirrorToggle<CR>

" airline settings
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=1
let g:airline#extensions#tabline#buffer_nr_show=1
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
let g:ctrlp_max_files=0
let g:ctrlp_working_path_mode = '' " use pwd
let g:ctrlp_follow_symlinks=2
nnoremap <leader>b :CtrlPBuffer<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/node_modules/**
" use ag instead of ack
let g:ctrlp_user_command = 'ag %s -i -l --nocolor --nogroup --hidden --follow
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_use_caching = 0 " ag is fast enough
" ctags with ctrlp
nnoremap <leader>. :CtrlPTag<cr>

" tagbar
nmap <leader>m :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" UltiSnips
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'vim-snippets/UltiSnips']

" Easymotion
nmap f <Plug>(easymotion-prefix)