let mapleader = " "
" Setting Options
syntax on 
set hidden
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set wildignore+=*/node_modules/*,.*,*/.git/*,*/dist/*
set guifont=FiraCode-Regular:h13
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
nnoremap <C-l> :CocCommand eslint.executeAutofix<CR>
"nnoremap <C-t> :TagbarToggle<CR>
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
nnoremap <C-b> :CocCommand prettier.formatFile<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <TAB>
       \ coc#pum#visible() ? coc#pum#next(1):
       \ <SID>check_back_space() ? "\<Tab>" :
       \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
" Plugins
call plug#begin()

Plug 'vim-airline/vim-airline' " Status line
Plug 'tpope/vim-fugitive' " Exec git commands in nvim
Plug 'frazrepo/vim-rainbow' " Pair brackets with colors
Plug 'tpope/vim-commentary' " Commenting Easily
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'preservim/tagbar' " See vars and other stuff for file 
" Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'alvan/vim-closetag' " Auto closing tags
Plug 'ctrlpvim/ctrlp.vim'
Plug 'styled-components/vim-styled-components'
Plug 'ap/vim-css-color'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'wakatime/vim-wakatime'
Plug 'dstein64/vim-startuptime'
Plug 'StanAngeloff/php.vim'  
Plug 'mhinz/vim-startify'
Plug 'mhartington/oceanic-next'
Plug 'Badacadabra/vim-archery'
Plug 'segeljakt/vim-silicon'
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/everforest'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'EdenEast/nightfox.nvim'
call plug#end()

" Extensions Configs
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" let g:everforest_better_performance = 1
colorscheme nightfox 

let g:airline_theme='everforest'
let g:airline#extensions#tabline#enabled = 2 " Enable airline for tabbar

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

"Support for SCSS Files
autocmd FileType scss setl iskeyword+=@-@
"Silicon config for taking screenshot of code
let g:silicon = {
      \   'theme':              'Dracula',
      \   'font':         'CaskaydiaCove Nerd Font Mono',
      \   'background':         '#2ed573',
      \   'shadow-color':       '#b2bec3',
      \   'line-pad':                   2,
      \   'pad-horiz':                 80,
      \   'pad-vert':                 100,
      \   'shadow-blur-radius':        0,
      \   'shadow-offset-x':           0,
      \   'shadow-offset-y':           0,
      \   'line-number':           v:true,
      \   'round-corner':          v:true,
      \   'window-controls':      v:false,
      \ }
