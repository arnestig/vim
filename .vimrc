set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

set ts=4
set number
set numberwidth=5
set shiftwidth=4
set expandtab
set tabpagemax=100
filetype plugin on
hi link Repeat Statement
colorscheme slate
noremap <f1> :SyntasticCheck<CR>
noremap <f3> :%s/\s\+$//e<CR>
noremap <f4> :execute "vimgrep /" .expand("<cword>") . "/j **" <Bar> cw<CR>
noremap <S-f5> :call VimgrepInput() <CR>
nnoremap <F5> :GundoToggle<CR>
vnoremap <S-f6> :'<,'>%!xxd<CR>
nnoremap <f6> :%!astyle -H -D -A3 --indent=spaces=4<CR><C-o>
"nnoremap <f6> :%!astyle -H -U -A1 --indent=spaces=3<CR><C-o>
"nnoremap <f7> :!ctags -R *<CR><CR>
nnoremap <f7> :call CtagsGitPath()<CR>
nmap <F8> :TagbarToggle<CR>
noremap <f9> :!%:p<CR>
noremap <S-f9> :!sudo %:p<CR>
noremap <F10> :call NERDComment(0,"toggle")<CR>
noremap <F11> :A<CR>
noremap <F12> :NERDTreeToggle<CR>
noremap <f2> za
set wildignore+=tags,*.o,*.avi,*.img,*.a,*.so,*.jpg
set tags=./tags;,tags;
set ignorecase
set smartcase
set smartindent
set smarttab
let g:gundo_right = 1
let g:gundo_close_on_revert = 1
let g:gundo_preview_bottom = 1
syntax on
hi Pmenu ctermbg=1 ctermfg=0
hi PmenuSel ctermbg=1 ctermfg=15
set noswapfile
set completeopt=menu,menuone,longest
set pumheight=15
set autoindent
let g:clang_complete_auto=0
let NERDTreeQuitOnOpen = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
noremap <C-Left> :tabp<CR>
noremap <C-Right> :tabn<CR>
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :tab split<CR>:exec("tjump ".expand("<cword>"))<CR>
set switchbuf+=usetab,newtab
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_cpp_include_dirs = [ '/usr/include/x86_64-linux-gnu/qt5', '/usr/include/x86_64-linux-gnu/qt5/QtCore', 'external', '/usr/include/x86_64-linux-gnu/qt5/QtGui', '/usr/include/x86_64-linux-gnu/qt5/QtNetwork' ]
let g:syntastic_cpp_compiler_options = '-fPIC'
let g:syntastic_mode_map = { "mode": "passive" }
let g:ycm_auto_trigger = 0

hi DiffChange ctermbg=95
if &diff
    syntax off
endif

vnoremap p "_dP

source ~/.vim/vimrc/vimgrep.vim
source ~/.vim/vimrc/ctags_git.vim
