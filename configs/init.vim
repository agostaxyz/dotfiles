set encoding=utf-8
set relativenumber
set number
set hidden
set shiftwidth=3
set tabstop=3

let g:polyglot_disabled = ['rust']
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:suda_smart_edit = 1

call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'projekt0n/github-nvim-theme'
Plug 'sheerun/vim-polyglot'
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'dstein64/nvim-scrollview'
Plug 'lambdalisue/vim-suda'
call plug#end()

lua << EOF
require('github-theme').setup({
	options = {
		transparent = true,
		terminal_colors = true,
	}
})
EOF

colorscheme github_dark

