source ~/.vimrc.bundle
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'grep.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Yggdroot/indentLine'

""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

 " Recommended to install
 " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
 NeoBundle 'Shougo/vimproc'

"vunlde.vimで管理してるpluginを読み込む
"source ~/dotfiles/.vimrc.bundle
"
""基本設定
source ~/dotfiles/.vimrc.basic
"StatusLine設定
source ~/dotfiles/.vimrc.statusline
""インデント設定
source ~/dotfiles/.vimrc.indent
"表示関連
source ~/dotfiles/.vimrc.apperance
""補完関連
source ~/dotfiles/.vimrc.completion
"Tags関連
source ~/dotfiles/.vimrc.tags
""検索関連
source ~/dotfiles/.vimrc.search
"移動関連
source ~/dotfiles/.vimrc.moving
""Color関連
source ~/dotfiles/.vimrc.colors
"編集関連
source ~/dotfiles/.vimrc.editing
""エンコーディング関連
source ~/dotfiles/.vimrc.encoding
"その他
source ~/dotfiles/.vimrc.misc
""プラグインに依存するアレ
source ~/dotfiles/.vimrc.plugins_setting



 "-------------------------------------------------
 "" neocomplcache設定
 "-------------------------------------------------
 ""辞書ファイル
 autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/.vim/dictionaries/php.dict filetype=php
 let g:neocomplcache_enable_at_startup = 1
 let g:neocomplcache_enable_camel_case_completion = 1
 let g:neocomplcache_enable_underbar_completion = 1
 let g:neocomplcache_smart_case = 1
 let g:neocomplcache_min_syntax_length = 3
 let g:neocomplcache_manual_completion_start_length = 0
 let g:neocomplcache_caching_percent_in_statusline = 1
 let g:neocomplcache_enable_skip_completion = 1
 let g:neocomplcache_skip_input_time = '0.5'

 " ファイルオープンを便利に
 NeoBundle 'Shougo/unite.vim'
 " " Unite.vimで最近使ったファイルを表示できるようにする
 NeoBundle 'Shougo/neomru.vim'

  " http://blog.remora.cx/2010/12/vim-ref-with-unite.html
  """"""""""""""""""""""""""""""
  " Unit.vimの設定
  """"""""""""""""""""""""""""""
  " 入力モードで開始する
  let g:unite_enable_start_insert=1
  " バッファ一覧
  noremap <C-P> :Unite buffer<CR>
  " ファイル一覧
  noremap <C-N> :Unite -buffer-name=file file<CR>
  " 最近使ったファイルの一覧
  noremap <C-Z> :Unite file_mru<CR>
  " sourcesを「今開いているファイルのディレクトリ」とする
  noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
  " ウィンドウを分割して開く
  au FileType unite nnoremap <silent> <buffer> <expr> <C-J>
  "unite#do_action('split')
  au FileType unite inoremap <silent> <buffer> <expr> <C-J>
  "unite#do_action('split')
  " ウィンドウを縦に分割して開く
  au FileType unite nnoremap <silent> <buffer> <expr> <C-K>
  "unite#do_action('vsplit')
  au FileType unite inoremap <silent> <buffer> <expr> <C-K>
  "unite#do_action('vsplit')
  " ESCキーを2回押すと終了する
  au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
  au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
  """""""""""""""""""""""""""""""
 "-------------------------------------------------"
 "" indentLine設定
 "-------------------------------------------------"
set list listchars=tab:\¦\
let g:indentLine_char = '¦'
let g:indentLine_color_term = 234
let g:indentLine_color_gui = '#2a2a2a'
let g:indentLine_indentLevel = 20

let g:molokai_original = 1
let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set paste!
set invpaste
let g:neocomplcache_enable_at_startup = 1
filetype plugin indent on
filetype indent on
syntax on
NeoBundleCheck

