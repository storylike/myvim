set fileformats=unix
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/ctrlp.vim
call vundle#begin()
" Add plugin support here, format Plugin '*.vim'
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)

"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" NERDTree plugin
Plugin 'scrooloose/nerdtree'
" Tagbar plugin
Plugin 'majutsushi/tagbar'
" Python-mode plugin
Plugin 'klen/python-mode'
Plugin 'ctrlpvim/ctrlp'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'hdima/python-syntax'
Plugin 'craigemery/vim-autotag'
Plugin 'ervandew/supertab'
Plugin 'tmhedberg/SimpylFold'
Plugin 'webdevel/tabulous'
" Auto completion engine for VIM"
Plugin 'Valloric/YouCompleteMe'"
call vundle#end()


set tags+=/root/.vim/tags
syntax on
filetype plugin indent on
set t_Co=256
set background=dark  "dark light "can switch it to find which is look pretty
set nocompatible                 "some plugin need it
set hlsearch                     "highlight the search
set incsearch                    "move to fit position after one char input
set nobackup                     "won't produce the backup file when save file
set nowritebackup                "won't produce the backup file when save file
set noswapfile                   "won't use swapfile
set hidden                       "can open other file when a file is not saved
set ruler                        "show ruler at the right bottom
set nowrap                       "disable auto newline
set laststatus=2                 "status bar will show anytime
set updatetime=200               "tagbar response 800ms
set showmatch matchtime=0        "show the other bracket
set wmnu wildmode=longest:full   "when in command mode can use auto complete same as bash
set expandtab tabstop=4          "expand the tab to 4 space
set si ai ci cinkeys-=0# cinoptions=g0,:0   "some indent rules
set shiftwidth=4                 "make the indent 4 length
set softtabstop=4                "backspace can del 4 space
set lcs=eol:$,tab:\|\            "display tab to green line
set backspace=indent,eol,start   "better backspace
set fileencodings=utf-8,cp936    "auto test the file is uft-8 or cp936
set fileformats=unix,dos,mac     "line feed different in different mode
set completeopt=menuone,longest

highlight TagbarHighlight guifg=Green ctermfg=Green
let NERDTreeQuitOnOpen=1
let NERDTreeDirArrows=0
let NERDTreeWinSize=40
let NERDRemoveExtraSpaces=0
"let NERDTreeMapOpenInTab='\r'"
let g:bufExplorerDisableDefaultKeyMapping = 1
let g:tagbar_sort=0
let g:tagbar_compact=1
let g:tagbar_foldlevel=1
let g:tagbar_iconchars=['+', '-']
let OmniCpp_SelectFirstItem = 2
let OmniCpp_ShowPrototypeInAbbr = 1 
let OmniCpp_MayCompleteScope = 1

func! Turntabstop()

    let tablength = &tabstop
    if tablength == 1
        set tabstop=2
        set softtabstop=2
        set shiftwidth=2
    elseif tablength==2
        set tabstop=4
        set softtabstop=4
        set shiftwidth=4
    elseif tablength==4
        set tabstop=8
        set softtabstop=8
        set shiftwidth=8
    elseif tablength==8
        set tabstop=1
        set softtabstop=1
        set shiftwidth=1
    endif
endfunc

"file list
map <silent> <F2> :NERDTreeToggle<cr>
"tarbar functon list
map <silent> <F3> :TagbarToggle<cr>
"header and implement file switch
map <F4> :A<cr>
"update index
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<cr><cr>:cs kill cscope.out<cr>:!cscope -Rb<cr><cr>:cs add cscope.out<cr>
"switch display invisable char or not
map <F6> :set list!<cr>:set list?<cr>
"highlight
map <F7> ms:%s /\<<C-R>=expand("<cword>")<CR>\>//gn<cr>`s
"swapfile list
map <silent> <F8> :BufExplorer<CR>
"switch tab expand to space or not
map <F9> :set expandtab!<cr>:set expandtab?<cr>
"switch tab expand to space or not
map <silent> <F10> :call Turntabstop()<cr>:set tabstop?<cr>
""comment visual line
vnoremap <silent> , :call NERDComment(1, "alignLeft")<cr>
"uncomment visual line
vnoremap <silent> . :call NERDComment(1, "uncomment")<cr>
"show list if more tag 
nnoremap <c-]> g<c-]>
"move to right window
noremap <c-l> <c-w>l
"move to up window
noremap <c-k> <c-w>k
"move to down window
noremap <c-j> <c-w>j
"move to left window
noremap <c-h> <c-w>h
"goto the place where word definition
nmap \g :cs find g <C-R>=expand("<cword>")<CR><CR>
"list the funcion called by this function
nmap \d :cs find d <C-R>=expand("<cword>")<CR><CR>
"list the position where to call this word
nmap \c :cs find c <C-R>=expand("<cword>")<CR><CR>
"search word in the project
nmap \s :cs find s <C-R>=expand("<cword>")<CR><CR>
"search word in the project and the word can be in text
nmap \t :cs find t <C-R>=expand("<cword>")<CR><CR>
"search word in the project and the word can be in text, support regex
nmap \e :cs find e <C-R>=expand("<cword>")<CR><CR>
"list the file which filename is this word
nmap \f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"list the file include the file which filename is this word
nmap \i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"list the file which include this file
nmap \I :cs find i <C-R>=expand("%:t")<CR><CR>

"Add shortcuts for quickly comenting out codes.
" Python style
vnoremap <silent> <C-i> :s/^/#/<cr>:noh<cr>
vnoremap <silent> <C-u> :s/^#//<cr>:noh<cr>
" C/C++ style 
vnoremap <silent> <C-j> :s!^!//!<cr>:noh<cr>
vnoremap <silent> <C-h> :s!^//!!<cr>:noh<cr>

if has("cscope") 
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
endif

" My personal config

" Fold/unfold options
let g:pymode_ident = 1
let g:pymode_folding = 1
set nofoldenable
set foldmethod=indent
"set foldmethod=syntax

" Set fold nest max to 1
set foldnestmax=2
set foldlevel=99

" Set line numbers
set number

" Enable multi-color highlight plugin: mark.vim"
let mapleader = ";"
source ~/.vim/bundle/mark.vim
source ~/.vim/bundle/pylint.vim

