"general configuration

:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:set encoding=UTF-8
:set ignorecase
:set cursorline
syntax enable

"pluggins

call plug#begin('~/.config/plugged')

Plug 'morhetz/gruvbox'			"Colorscheme gruvbox
Plug 'preservim/nerdtree'		"NerdTree
Plug 'vim-airline/vim-airline'	"Status bar
Plug 'neoclide/coc.nvim'		"Auto Completion
Plug 'tpope/vim-commentary'		"gc gcc commentary
Plug 'preservim/tagbar'			"Tagbar for code navigation
Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()

"color configuration

colorscheme gruvbox 
let g:gruvbox_contrast_dark = "hard"

" let g:onedark_config = {
"     \ 'style': 'Warm',
\}
" colorscheme onedark

" shortcuts
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

"airline

let g:airline_powerline_fonts = 1

"write inside 
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap < <><Esc>i

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

