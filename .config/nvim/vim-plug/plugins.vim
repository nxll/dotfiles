call plug#begin('~/.config/nvim/autoload/plugged')

	" FILE EXPLORER
	Plug 'scrooloose/NERDTree'

	" FILE EXPLORER ICONS
	Plug 'ryanoasis/vim-devicons'

	" SYNTAX HIGHLIGHTING
	Plug 'nvim-treesitter/nvim-treesitter'

	" COLORIZER
	Plug 'norcalli/nvim-colorizer.lua'

	" AUTO PAIRS
	Plug 'jiangmiao/auto-pairs'

	" ALIGNMENT
	Plug 'junegunn/vim-easy-align'
	Plug 'godlygeek/tabular'

	" AUTOCOMPLETION
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'

	" WAL COLORS
	Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }

call plug#end()
