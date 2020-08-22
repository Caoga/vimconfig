" --- Plugins
call plug#begin('$VIM/plugged')

Plug 'tomasr/molokai'
Plug 'ntk148v/vim-horizon'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" --- Remaps
inoremap jk <ESC>
let mapleader = " "
nmap <leader>w :w!<cr>
nnoremap <Leader><space> :noh<cr>
set backspace=indent,eol,start
nmap <F2> <Plug>(coc-rename)
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)
nmap <F6> <Plug>(ale_fix)
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

" --- Behaviour settings
set updatetime=300
set hidden
set noswapfile
set nobackup
set nowritebackup
set smartcase
set expandtab
set nowrap
set incsearch
set encoding=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932
set shortmess+=c

" --- Visuals
set guioptions=
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set novisualbell
set gfn=IBM\ Plex\ Mono:h14
set modelines=0
set ruler
set number
set list
set scrolloff=3
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set showmode showcmd
set showmatch
colorscheme molokai

" --- Plugin-specific variables
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
let g:airline_theme = 'molokai'

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)
