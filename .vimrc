call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"ColorTheme
Plug 'morhetz/gruvbox'
"TMux
Plug 'christoomey/vim-tmux-navigator'
"nginx syntax hl
Plug 'mutewinter/nginx.vim'
"Git
Plug 'tpope/vim-fugitive'
"All-language autocompleters
"Plug 'valloric/youcompleteme'
"Plug 'zxqfl/tabnine-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

call plug#end()

syntax on

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_html_checkers = ['html', 'eslint', 'htmlhint']
let g:syntastic_javascript_checkers = ['eslint', 'jslint']


colorscheme gruvbox
let background='dark'
"let g:gruvbox_bold=0
let g:gruvbox_contrast_dark='soft'
"g:gruvbox_number_column=grey
set number
set expandtab
set tabstop=2 shiftwidth=2
set list! 
set listchars=tab:>-

"indentline
let g:indentLine_char = '.'
let g:indentLine_color_term = 239
set list lcs=tab:\.\

let g:airline_theme='bubblegum'
set hlsearch
set incsearch
set foldenable
"set foldmethod=indent
"set foldmethod=manual

"Snipmate
"let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
"let g:snipMate.scope_aliases = {}
"let g:snipMate.scope_aliases['html'] = 'html'

" mappings:
map <C-n> : NERDTreeToggle<CR>

