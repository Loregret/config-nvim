" reset to vim-defaults
if &compatible          " only if not set before:
  set nocompatible      " use vim-defaults instead of vi-defaults (easier, more user friendly)
endif

" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on  
syntax on


set wildmode=longest,list
" set nowrap
set ignorecase
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
set tabstop=4 
set scrolloff=2 
set magic
set autoindent	
set shiftwidth=4
set smartindent	
set smarttab	
set softtabstop=4	
set ruler	
set undolevels=1000	
set backspace=indent,eol,start	
set number	
set relativenumber
set showmatch 
" set clipboard=unnamedplus
set noswapfile

" Autosave
"autocmd TextChanged,TextChangedI <buffer> silent write

" Plugin manager downloads dir at .../plugged

call plug#begin(expand('~/.config/nvim/plugged'))

" Customization
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Usability
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'numToStr/Comment.nvim'
Plug 'anuvyklack/pretty-fold.nvim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'tpope/vim-fugitive'

" AutoComplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'habamax/vim-godot'

" dev icons always at bottom
Plug 'ryanoasis/vim-devicons'

call plug#end()

" for plugin Comment
lua require('Comment').setup()
" pretty fold
lua require('pretty-fold').setup()
lua require('pretty-fold.preview').setup()


" Godot fold + mapping
set foldlevel=20
setlocal foldmethod=expr
setlocal tabstop=4
nnoremap <buffer> <F4> :GodotRunLast<CR>
nnoremap <buffer> <F5> :GodotRun<CR>
nnoremap <buffer> <F6> :GodotRunCurrent<CR>
nnoremap <buffer> <F7> :GodotRunFZF<CR>

" COC configuration + mapping
source ~/.config/nvim/coc_config.vim

" AUTOCLOSE BRACKETS
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" COLORSHEME

" Example config in VimScript
let g:tokyonight_style = "storm"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

" Load the colorscheme
colorscheme tokyonight


" Airline theme
let g:airline_theme='supernova'
