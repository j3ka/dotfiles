"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Complete
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Golang
Plug 'preservim/tagbar' " Navigate throgh class methods/properties in file
Plug 'vim-ctrlspace/vim-ctrlspace' " file navigation
Plug 'sheerun/vim-polyglot' " better syntax highlight
Plug 'StanAngeloff/php.vim' " PHP syntax
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'kristijanhusak/deoplete-phpactor'
Plug 'mhinz/vim-signify' " Uses git to highlight what lines are changed
Plug 'preservim/nerdtree' " Tree-file navigation tool
Plug 'jiangmiao/auto-pairs' " Auto close brackets
Plug 'tpope/vim-commentary' " comment toggle: gcc, comment selection: gc
Plug 'overcache/NeoSolarized' " COLORSCHEME
Plug 'ollykel/v-vim' " Support V-language
Plug 'dense-analysis/ale' " Syntax checker
Plug 'deoplete-plugins/deoplete-clang' " C/C++ autocomplete
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme
set background=dark
set termguicolors
colorscheme NeoSolarized
let g:neosolarized_contrast = "hight" " low normal hight
let g:neosolarized_visibility = "normal" " low normal hight
let g:neosolarized_vertSplitBgTrans = 1
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
let g:neosolarized_termBoldAsBright = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-native options
filetype plugin on
syntax on
set mouse=a " use mouse for selecting in editor buffer
set relativenumber " left line numbers
set nu rnu " current line number is absolute, but other are relative
set cursorline " highlight line
set clipboard+=unnamedplus " use system clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete config
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*'})
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Global shortcuts
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRL-SPACE
set nocompatible
set hidden
set encoding=utf-8
let g:CtrlSpaceDefaultMappingKey = "<C-space> "
set showtabline=0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_keep_list_window_open=0
let g:ale_set_quickfix=0
let g:ale_list_window_size = 5
let g:ale_php_phpcbf_standard='PSR2'
let g:ale_php_phpcs_standard='phpcs.xml.dist'
let g:ale_php_phpmd_ruleset='phpmd.xml'
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'php': ['phpcbf', 'php_cs_fixer', 'remove_trailing_lines', 'trim_whitespace'],
  \}
let g:ale_fix_on_save = 1
let g:ale_linters = {
  \ 'vim': ['vint'],
  \ 'cpp': ['clang'],
  \ 'c': ['clang']
\}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Golang
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = 'goimports'
let g:syntastic_go_checkers = ['golint', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:neomake_go_gometalinter_args = ['--disable-all']
let g:go_snippet_engine = 'neosnippet'
let g:go_rename_command = 'gopls'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP
let g:phpactorPhpBin = "/usr/bin/php"
autocmd FileType php nnoremap <Leader>gd :PhpactorGotoDefinition<CR>
autocmd FileType php nnoremap <Leader>io :PhpactorImportClass<CR>
autocmd FileType php nnoremap <Leader>ia :PhpactorImportMissingClasses<CR>
autocmd FileType php nnoremap <Leader>ss :PhpactorHover<CR>
autocmd FileType php set showmatch
autocmd FileType php set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
" map <c-s> <esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C/C++
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
