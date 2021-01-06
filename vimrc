run :PlugInstall to update plugins
call plug#begin()


" if fzf has already been installed via homebrew, use existing
if isdirectory("/usr/local/opt/fzf")
  Plug '/usr/local/opt/fzf'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
endif

Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'bruno-/vim-line'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax


call plug#end()

" this stuff is related to fzf 
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  " use ag for fzf listing files.  fast and respects .gitignore
  let $FZF_DEFAULT_COMMAND = 'ag --literal --files-with-matches --nocolor --hidden -g ""'
endif

"set no compatible mode
:set nocp

"tab magic
map <C-t> <esc>:tabnew<cr>

"shift direction will scroll thru tabs
nnoremap <S-l> gt
nnoremap <S-h> gT

"set relativenumber
:set relativenumber

"display file name and path constantly
:set laststatus=2

" map ctrl p to open fuzzy finder (fzf)
nnoremap <c-p> :Files<cr>

" set my leader key to space
let mapleader = " "
let g:user_emmet_leader_key=','

"get out of insert mode and into normal mode with a super seldom used sequence
inoremap jj <ESC>
inoremap kk <ESC>

"cute shortcut for running a macro
nnoremap Q @q
vnoremap Q :norm @q<cr>


nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFind<CR>

"quit files with leader q
nnoremap <leader>q :q<cr>

"save files with leader s
nnoremap <leader>s :w<cr>

"set line numbers to be on by default
set number

"map leader w opens a new split and switches to it
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

"move around your splits with ctrl hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"switch back and forth between two files
nnoremap <leader><leader> <c-^>

nnoremap <leader>a :Ack 

"assigning ripgrep to the ack plugin for speed
if executable('rg')
	let g:ctrlp_user_command = 'rg --files %s'
	let g:ctrlp_use_caching = 0
	let g:ctrlp_working_path_mode = 'ra'
	let g:ctrlp_switch_buffer = 'et'
endif

let g:ackprg = 'rg --vimgrep --no-heading'

"softtabs 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

"search settings
set incsearch
set hlsearch
