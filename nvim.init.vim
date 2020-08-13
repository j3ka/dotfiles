call plug#begin('~/.vim/plugged')
Plug 'ludovicchabant/vim-gutentags'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'amiorin/vim-project'
Plug 'kjssad/quantum.vim'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'Shougo/deoplete.nvim'
Plug 'neomake/neomake'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'joonty/vdebug'
Plug 'SirVer/ultisnips'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lifepillar/vim-solarized8'
Plug 'itchyny/lightline.vim'
Plug 'doums/darcula'
Plug 'craigemery/vim-autotag'
Plug 'phanviet/vim-monokai-pro'
Plug 'wimstefan/Lightning'
Plug 'mkarmona/materialbox'
""" Go
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
""" PHP
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'kristijanhusak/deoplete-phpactor'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'arnaud-lb/vim-php-namespace'
"""""" EXPEREMENTAL
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
"autocmd FileType php LanguageClientStart
"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
"nnoremap <F2> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
""""""""""""""""""""
" RUST
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
" Plug ''
call plug#end()

"" Editor
set nocompatible
set hidden
set encoding=utf-8
set showtabline=0
set expandtab
set tabstop=4
set shiftwidth=4
let g:CtrlSpaceDefaultMappingKey="<C-space> "
let g:NERDTreeShowHidden=1
let g:NERDTreeWinPos ="right"
let g:NERDTreeHighlightCursorline=1
set mouse=a
set number
let g:deoplete#enable_at_startup=1
filetype plugin on
"" Colors
syntax enable
set background=light
set termguicolors
colorscheme materialbox
" colorscheme monokai_pro
" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ }
"hi Normal guibg=NONE ctermbg=NONE

"" PHP
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

let g:php_namespace_sort_after_insert = 1

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip/"
autocmd FileType php noremap <Leader>cd :call pdv#DocumentWithSnip()<CR>

let g:phpactorPhpBin = "/usr/bin/php"

"" Rust
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

"" Go
let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor     

