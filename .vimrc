"let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" Pathogen
execute pathogen#infect()

"" Pre-load vim-sensible in case I want to override it.
runtime! plugin/sensible.vim

"" Default yank to system clipboard. Requires macvim or latest vim.
" Run brew install macvim vim
set clipboard+=unnamed

"" My appearance stuff
set number      " line numbers
set mouse=a     " capture mouse
if has('gui_running')
  colorscheme pyte
else
  colorscheme jellybeans
endif

" GitGutter
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

" Disable bell
set visualbell    " don't beep
set noerrorbells  " don't beep

set directory=~/tmp,/var/tmp,/tmp  " Save .swp file in temporary directory

"" My custom keybindings
let mapleader = ","
" Map Ctrl+{j,k,h,l} to select windows.
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
" Ctrl+n toggles NERDTree
"noremap <C-n> :NERDTreeToggle<CR>

noremap <C-Tab> :bn<cr>
noremap <C-S-Tab> :bp<cr>

" Go to buffer by number
noremap <leader>1 :1b<cr>
noremap <leader>2 :2b<cr>
noremap <leader>3 :3b<cr>
noremap <leader>4 :4b<cr>
noremap <leader>5 :5b<cr>
noremap <leader>6 :6b<cr>
noremap <leader>7 :7b<cr>
noremap <leader>8 :8b<cr>
noremap <leader>9 :9b<cr>

" Go to tab by number
noremap <leader><leader>1 1gt
noremap <leader><leader>2 2gt
noremap <leader><leader>3 3gt
noremap <leader><leader>4 4gt
noremap <leader><leader>5 5gt
noremap <leader><leader>6 6gt
noremap <leader><leader>7 7gt
noremap <leader><leader>8 8gt
noremap <leader><leader>9 9gt
noremap <leader><leader>0 :tablast<cr>

"" Auto-reload files that change
:set autoread

"" Tabs
" http://vim.wikia.com/wiki/Converting_tabs_to_spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
set expandtab
" On pressing tab, insert 4 spaces
"set expandtabset expandtab    " insert spaces when tab is pressed
"set tabstop=2    " tab = 2 spaces
"set softtabstop
"set shiftwidth=2 " use 2 spaces for indentation
"set list         " show whitespace characters
setlocal textwidth=120     " Set this to have long lines wrap inside comments.
" Auto-remove trailing whitespace when saving source files
autocmd FileType c,cpp,h,hpp autocmd BufWritePre <buffer> %s/\s\+$//e

"" From http://blog.mojotech.com/a-veterans-vimrc/
set nocompatible
set undolevels=100  " Use more levels of undo

"" Searching
set ignorecase
set hlsearch

"" Don't wrap lines
set nowrap
set textwidth=0 wrapmargin=0

"" From vim-fish.git
compiler fish  " Set up :make to use fish for syntax checking.

"" Ctrl+P custom ignore
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|\.archive|testdata|build|xcode)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"" Ctrl+P default to just filename
let g:ctrlp_by_filename = 1


"" Custom command to write as sudo: w!!
" From http://nvie.com/posts/how-i-boosted-my-vim/
cmap w!! w !sudo tee % >/dev/null

"" NERDTree
" Open NERDTree automatically if no file is open
" autocmd vimenter * if !argc() | NERDTree | endif

"" nerdcommenter
filetype plugin on

" Close NERDTree automatically if only thing left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"" YouCompleteMe
"let g:ycm_confirm_extra_conf = 0  " Suppress question when asking to load ycm_extra... file
let g:ycm_global_ycm_extra_conf = $HOME.'/.vim/.ycm_extra_conf.py'

" Apply YCM FixIt
map <Leader><Leader>f :YcmCompleter FixIt<CR>

"" Ultisnips
let g:UltiSnipsExpandTrigger="<Leader><Leader>"   " Expand snippet
let g:UltiSnipsJumpForwardTrigger="<C-j>"         " Next field
let g:UltiSnipsJumpBackwardTrigger="<C-k>"        " Prev field


" Powerline stuff  (if commented, using vim-airline instead)
"set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
"set laststatus=2


"set guifont=Monaco\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8


let g:airline_powerline_fonts = 1

"if has("gui_running")
"  let s:uname = system("uname")
"  if s:uname == "Darwin\n"
"     set guifont=Inconsolata\ for\ Powerline:h15
"  endif
"endif

" Let us leave a buffer that has been modified hanging around, outside a
" window
"set hidden
