" install vim-plug if not already installed
source ~/.config/nvim/utils/plug.vim

call plug#begin()
Plug 'mhinz/vim-startify'                   " fancy start screen
Plug 'ryanoasis/vim-devicons'               " add file type icons
Plug 'arcticicestudio/nord-vim'             " nord color scheme
Plug 'vim-airline/vim-airline'              " lean & mean status/tabline
Plug 'tpope/vim-sleuth'                     " adjust tab according to the file
Plug 'sheerun/vim-polyglot'                 " collection of language packs
Plug 'preservim/nerdtree'                   " tree explorer
Plug 'preservim/nerdcommenter'              " comment out lines of code
Plug 'airblade/vim-gitgutter'               " use sign column to show VCS diff
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " install latest fzf binary
Plug 'junegunn/fzf.vim'                     " fzf wrapper
Plug 'tpope/vim-fugitive'                   " awesome git wrapper
call plug#end()

set autoindent                              " autoindent new lines
set clipboard=unnamedplus                   " use system-wide clipboard
set completeopt=menuone,noinsert,preview    " autocomplete menu behavior
set cursorline                              " highlight current line
set expandtab tabstop=4 shiftwidth=4        " indent using 4 spaces
set ignorecase smartcase                    " smart case-insensitive search
set noshowmode                              " don't show mode (airline does it)
set number                                  " show line number
set mouse=a                                 " enable mouse support
set shell=/bin/bash                         " set bash as vim shell
set splitbelow splitright                   " define where to open slits
set termguicolors

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#whitespace#show_message = 0

" Fzf
let g:fzf_layout = { 'down': '~40%' }

" NERD Tree
nnoremap <C-t> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
" close tab if NERDTree is the only window remaining
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" exit Vim if NERDTree is the only window remaining in the only tab
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" NERD Commenter
let g:NERDCreateDefaultMappings = 1

" Nord
let g:nord_bold_vertical_split_line = 1
silent! colorscheme nord

" Polyglot
let g:python_highlight_space_errors = 0

" Startify
let g:startify_custom_header = []
let g:startify_change_to_dir = 0
