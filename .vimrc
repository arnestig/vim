set ts=4
set number
set numberwidth=5
set shiftwidth=4
set expandtab
filetype plugin on
hi link Repeat Statement
colorscheme slate
noremap <f3> :syn clear Repeat <Bar> g/^\(.*\)\n\ze\%(.*\n\)*\1$/exe 'syn match Repeat "^' . escape(getline('.'), '".\^$*[]') . '$"' <Bar> nohlsearch <CR> <CR>
noremap <f4> :execute "vimgrep /" .expand("<cword>") . "/j **" <Bar> cw<CR>
noremap <S-f5> :call VimgrepInput() <CR>
nnoremap <F5> :GundoToggle<CR>
vnoremap <S-f6> :'<,'>%!xxd<CR>
nnoremap <f6> :%!astyle -H -D -A3 --indent=spaces=4<CR><C-o>
"nnoremap <f6> :%!astyle -H -U -A1 --indent=spaces=3<CR><C-o>
nnoremap <f7> :!ctags -R *<CR><CR>
nmap <F8> :TagbarToggle<CR>
noremap <f9> :!%:p<CR>
noremap <S-f9> :!sudo %:p<CR>
noremap <F10> :call NERDComment(0,"toggle")<CR>
noremap <F11> :A<CR>
noremap <F12> :NERDTreeToggle<CR>
noremap <f2> za
set ignorecase
set smartcase
set smartindent
set smarttab
let g:gundo_right = 1
let g:gundo_close_on_revert = 1
let g:gundo_preview_bottom = 1
syntax on
hi Pmenu ctermbg=1 ctermfg=0
hi PmenuSel ctermbg=1 ctermfg=8
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

source ~/.vim/vimrc/vimgrep.vim
