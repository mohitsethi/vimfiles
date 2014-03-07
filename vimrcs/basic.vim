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
 Bundle 'vim-ruby/vim-ruby'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'wincent/Command-T'
 Bundle 'ervandew/supertab'
 Bundle 'mohitsethi/syntastic'
 Bundle 'mohitsethi/vim-pathogen'
 Bundle 'elixir-lang/vim-elixir'
 Bundle 'mohitsethi/vim-airline'
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
set mouse=a                                 " Enable mouse features
set showmatch                               " Show matching for symbols like () and etc
filetype on
filetype plugin on
set cursorline                              " Highlight current line
" Default Colors for CursorLine
highlight  CursorLine ctermbg=DarkBlue ctermfg=White

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=DarkGreen ctermfg=White

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=DarkBlue ctermfg=White
set vb t_vb=                                " disable beep and flashing
set wildmenu                                " better auto complete
set wildmode=longest,list                   " bash-like auto complete
set history=1000
set autoread                                " refresh if changed
"ruby
autocmd FileType ruby compiler ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd BufWritePre *.py :%s/\s\+$//e
au FileType gitcommit set tw=72
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
" Ignore case when searching
set ignorecase
set history=1000
"set statusline=
"set statusline+=%-3.3n\                      " buffer number
"set statusline+=%f\                          " filename
"set statusline+=%h%m%r%w                     " status flags
"set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
"set statusline+=\ %{fugitive#statusline()}     " fugitive
"set statusline+=%=                           " right align remainder
"set statusline+=0x%-8B                       " character value
"set statusline+=%-14(%l,%c%V%)               " line, character
"set statusline+=%<%P                         " file position

" Backups and swap {{{
" set backup
" set backupdir=~/.vim/backup
" set noswapfile
" }}}
 execute pathogen#infect()
" vim-airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
