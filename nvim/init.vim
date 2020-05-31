" github.com/Coldsaga/dotfiles
" Plugin manager = Vim-Plug

call plug#begin('-/local/share/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'ncm2/ncm2' | Plug 'roxma/nvim-yarp'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
lug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
call plug#end()

""""""""""""""""""""""""""""""""""""""
" Main Configs & Shortcuts
""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set relativenumber
set number
set hidden
set inccommand=split

let mapleader="\<space>"
nnoremap <leader><space> A<esc>
nnoremap <leader>; A;<esc>
nnoremap <leader>. A.<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>wm :vsplit ~/.config/bspwm/bspwmrc<cr>
nnoremap <leader>bar :vsplit ~/.config/polygar/config<cr>

"""""""""""""""""""""""""""""""""""""
" Ncm2
"""""""""""""""""""""""""""""""""""""
autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

"""""""""""""""""""""""""""""""""""""
"Fzf
"""""""""""""""""""""""""""""""""""""
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
":Ag Requires silver searcher 

""""""""""""""""""""""""""""""""""""""
"Lightline
""""""""""""""""""""""""""""""""""""""
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }

""""""""""""""""""""""""""""""""""""""
"UltiSnips
""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/snips'
