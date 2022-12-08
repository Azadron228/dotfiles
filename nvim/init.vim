set mouse=a  " enable mouse
set encoding=utf-8
set number
set noswapfile
set scrolloff=7


set clipboard=unnamedplus


set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on      " load filetype-specific indent files

" for tabulation
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4

inoremap jk <esc>

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
set encoding=UTF-8

call plug#end()

nnoremap <F5> :NERDTree<CR>
nnoremap <F5> :NERDTreeToggle<CR>
noremap <silent> <C-S>          :update<CR>

" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>

noremap j k
noremap k j

hi Pmenu ctermfg=Green ctermbg=Black 
hi PmenuSel ctermfg=white ctermbg=Black 
hi CocErrorSign ctermfg=red  guibg=red
hi CocErrorFloat ctermfg=white ctermbg=red
hi CocInfoSign ctermfg=blue 
hi CocInfoFloat ctermfg=white ctermbg=blue
hi CocWarningSign ctermfg=white ctermbg=yellow
" I have tried all of the below, but to no avail
" hi CocHighlightText ctermfg=black ctermbg=DarkGreen
" hi CocHintSign ctermfg=black ctermbg=DarkGreen
" hi CocHintHighlight ctermfg=black ctermbg=DarkGreen
" hi CocHintVirtualText ctermfg=black
hi MatchParen cterm=none ctermbg=none ctermfg=blue

autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>







colorscheme tokyonight-night
let g:airline_theme='murmur'

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>



