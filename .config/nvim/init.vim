let mapleader = " "
" Setting Options
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set wildignore+=*/node_modules/*,.*,*/.git/*,*/dist/*
" set guifont=CaskaydiaCove\ Nerd\ Font\ Mono
" Custom KeyMappings
inoremap ii <ESC>
tnoremap ii <C-\><C-N> 
noremap <Up> <nop>
noremap <Down> <nop>
nnoremap <C-s> :w<CR>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <leader>h :bp<CR>
noremap <leader>l :bn<CR>
noremap <leader>c :bd<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-t> :TagbarToggle<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
if exists('*complete_info')
  inoremap <silent><expr> <cr> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Plugins
call plug#begin()

Plug 'vim-airline/vim-airline' " Status line
Plug 'tpope/vim-fugitive' " Exec git commands in nvim
Plug 'frazrepo/vim-rainbow' " Pair brackets with colors
Plug 'tpope/vim-commentary' " Commenting Easily
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/tagbar' " See vars and other stuff for file 
" Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'alvan/vim-closetag' " Auto closing tags
Plug 'ctrlpvim/ctrlp.vim'
Plug 'joshdick/onedark.vim'
Plug 'styled-components/vim-styled-components'
Plug 'ap/vim-css-color'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'wakatime/vim-wakatime'
Plug 'dstein64/vim-startuptime'
Plug 'derektata/lorem.nvim'
Plug 'vim-scripts/loremipsum'
call plug#end()

" Extensions Configs
colorscheme onedark

let g:airline_theme= 'onedark'
let g:airline#extensions#tabline#enabled = 1 " Enable airline for tabbar

" Auto close tag config
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.js'

let g:closetag_xhtml_filenames = '*.xml,*.xhtml,*.jsx,*.js'

" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,js,jsx'

" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xml,xhtml,jsx,js'

" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }


" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
" setup lorem.nvim
lua <<EOF
require'lorem-nvim'.setup()
EOF
