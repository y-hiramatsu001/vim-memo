" ========================================
" dein.vimの設定
" :call dein#install()でインストールできる
" ========================================
if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/deinvim/dein.vim

call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('mattn/emmet-vim')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('Shougo/unite.vim')
call dein#add('scrooloose/nerdtree') " :NERDTree を打つとTree表示が起動します
call dein#add('tomtom/tcomment_vim') " 選択範囲を ctrl + - (ハイフン2回押し)でコメントアウト

call dein#end()

" ========================================
" vimの設定
" ========================================
syntax on
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set cursorline
set number
set backspace=indent,eol,start
set history=1000

" ========================================
" Unite.vimの設定(バッファからファイル開ける)
" ========================================

" 入力モードで開始する
let g:unite_enable_start_insert=1

" バッファ一覧
" noremap <C-P> :Unite buffer<CR>

" ファイル一覧
" noremap <C-N> :Unite -buffer-name=file file<CR>

" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>

" ========================================
" key bind
" ========================================

" ctrl + e でemmet-vim起動
imap <C-e> <C-y>,
vmap <C-e> <C-y>,

" jj でesc
inoremap jj <Esc>:w<CR>

" ctrl + tでタブを開いてツリー表示
nnoremap <C-t> :tabnew<CR>:e .<CR>

" 閉じ括弧の自動挿入（十字キーの挙動がおかしくなるからコメントアウト）
" inoremap { {}<LEFT>
" inoremap ( ()<LEFT>

" phpタグ挿入
inoremap php<TAB> <?php   ?><LEFT><LEFT><LEFT><LEFT>




