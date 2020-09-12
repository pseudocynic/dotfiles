set encoding=utf-8
set nocompatible
scriptencoding utf-8
set runtimepath=~/.vim,~/.vim/after,$VIM,$VIMRUNTIME
let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"


if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    augroup PLUG
        au!
        autocmd VimEnter * PlugInstall
    augroup END
endif


call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'
	augroup Goyo
		autocmd!
		autocmd VimResized * execute "normal \<C-W>="
		autocmd BufReadPost * Goyo 		82x80%
		autocmd BufReadPost *.md Goyo 		76x80%
		autocmd BufReadPost neofetch Goyo 	102x80%
	augroup END

Plug 'w0rp/ale'
    let g:ale_completion_enabled = 1
    let g:ale_sign_column_always = 1
    let g:ale_lint_on_text_changed = 'never'
    let g:ale_fix_on_save = 1
    let g:ale_completion_enabled = 1

Plug 'terryma/vim-expand-region' 
    vmap v <Plug>(expand_region_expand)
    vmap <C-v> <Plug>(expand_region_shrink)

Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
    nmap ss ysiw
    nmap sl yss
    vmap s S

Plug 'maxboisvert/vim-simple-complete'
    let g:vsc_type_complete_length = 1

call plug#end()
filetype plugin on


set signcolumn=yes
set noshowmode
set laststatus=0
set synmaxcol=150
set shortmess=atI
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
set breakindent
set tabstop=4
set shiftwidth=4
set expandtab
set re=1
set foldmethod=marker
set foldlevel=99
set foldlevelstart=0
set hlsearch
set incsearch
set ignorecase
set smartcase
set undofile
set undolevels=1000
set undoreload=1000
set autochdir
set clipboard=unnamedplus
set nostartofline
set notimeout
set nottimeout
set nrformats-=octal
set modeline
set backspace=indent,eol,start
set noswapfile
set tabstop=4
