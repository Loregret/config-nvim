if &compatible          " only if not set before:
  set nocompatible      " use vim-defaults instead of vi-defaults (easier, more user friendly)
endif

filetype plugin indent on  
syntax on

"set nowrap
set autoindent	
set backspace=indent,eol,start	
set clipboard=unnamedplus
set hlsearch	
set ignorecase
set ignorecase	
set incsearch	
set magic
set noswapfile
set number	
set relativenumber
set ruler	
set scrolloff=2 
set shiftwidth=4
set showmatch 
set smartcase	
set smartindent	
set smarttab	
set softtabstop=4	
set tabstop=4 
set undolevels=1000	
set wildmode=longest,list


call plug#begin(expand('~/.config/nvim/plugged'))	" Plugin manager downloads dir at .../plugged

	" Customization
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Usability
	Plug 'airblade/vim-gitgutter'
	Plug 'anuvyklack/pretty-fold.nvim'
	Plug 'numToStr/Comment.nvim'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'preservim/nerdtree'
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	" AutoComplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'habamax/vim-godot'
	" Dev icons always at bottom
	Plug 'ryanoasis/vim-devicons'

call plug#end()

" Lua setup
lua require('Comment').setup()
lua require('pretty-fold').setup()
lua require('pretty-fold.preview').setup()

" COC configuration + mapping
source ~/.config/nvim/coc_config.vim
" Colorsheme
source ~/.config/nvim/colorsheme.vim
" Autoclose brackets
source ~/.config/nvim/autoclose_brackets.vim
