set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim_runtime
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
set tabstop=2
set number
set shiftwidth=4
set expandtab
set autoindent
set modeline
set ls=2
set list
"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd FileType python,ruby setlocal eol binary fileformats="mac,unix,dos"
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

let g:erlangHighlightErrors = 1
let g:erlangHighlightBif = 1
let g:erlangCompletionDisplayDoc = 1
let g:erlangWranglerPath = "/usr/local/share/wrangler"
let g:erlangRefactoring = 1
"Ruler
highlight ColorColumn ctermbg=DarkGray
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
