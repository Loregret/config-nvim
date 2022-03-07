if &compatible          " only if not set before:
  set nocompatible      " use vim-defaults instead of vi-defaults (easier, more user friendly)
endif

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
set clipboard=unnamedplus
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

" lua setup
lua require('Comment').setup()
lua require('pretty-fold').setup()
lua require('pretty-fold.preview').setup()

" COC configuration + mapping
source ~/.config/nvim/coc_config.vim
" ColorSheme
source ~/.config/nvim/colorsheme.vim
" Autoclose brackets
source ~/.config/nvim/autoclose_brackets.vim
