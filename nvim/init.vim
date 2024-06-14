" Options
set background=dark 
set clipboard=unnamedplus 
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden 
set nocompatible
set inccommand=split
set mouse=a 
set number
set title
set splitbelow splitright
set ttimeoutlen=0
set nohlsearch
set hlsearch

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

filetype plugin indent on
syntax on

set encoding=UTF-8
set t_Co=256

let term_program = $TERM_PROGRAM

if term_program !=? 'Apple_Terminal'
	set termguicolors
else
	if $TERM !=? 'xterm-256color'
		set termguicolors
	endif
endif


call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline' 
    Plug 'ryanoasis/vim-devicons'
    Plug 'tjdevries/colorbuddy.nvim', { 'branch': 'dev' }
    Plug 'nobbmaestro/nvim-andromeda'

    " Utilities
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'

    " Git
    " Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    
    " Syntax Highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    if has('nvim') || has('patch-8.0.902')
      Plug 'mhinz/vim-signify'
    else
      Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
    endif
call plug#end()

set updatetime=100
colorscheme andromeda

let NERDTreeShowHidden=1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" vim-airline setup
let g:airline_theme='ayu_mirage'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#whitespace#enabled=0
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections=1

" let g:airline#extensions#gitgutter#enabled=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.colnr = ':'

let g:airline_section_z = airline#section#create(['%2p%%  ' ,'linenr', 'colnr'])

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <F6> :sp<CR>:terminal<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-x> :wq<CR>
nnoremap <F5> :TSToggle highlight<CR>

" Tabs
nnoremap <S-Tab> :bn<CR>
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>

" Auto Commands
augroup auto_commands
    autocmd BufWrite *.py call CocAction('format')
    autocmd FileType scss setlocal iskeyword+=@-@
    autocmd VimEnter * :TSEnable highlight
augroup END

" Language server stuff
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
