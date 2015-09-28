" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

autocmd FuncUndefined * exe 'runtime autoload/' . expand('<afile>') . '.vim'
map -a	:call SyntaxAttr()<CR>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

syntax on
set hlsearch

execute pathogen#infect()
filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
	au!

	autocmd QuickFixCmdPost [^l]* nested cwindow
	autocmd QuickFixCmdPost    l* nested lwindow

augroup END

set number
set cursorline 
set showmatch
set wildmenu
map <Leader>j :w<CR>:make<CR><CR>

inoremap <;> <C-x><C-o>

nmap <silent> <Leader><Down> :wincmd j<CR> 
nmap <silent> <Leader><Up> :wincmd k<CR>
nmap <silent> <Leader><Right> :tabn<CR>
nmap <silent> <Leader><Left> :tabp<CR>


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let typescript_enable_domhtmlcss = 1

