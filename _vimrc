"シンタックスをオンにする
syntax on
"オートインデント
set autoindent
"インクリメンタルサーチを行う
set incsearch
"行番号を表示する
set number
"シフト移動幅
set shiftwidth=4
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
set tabstop=4
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
set noswapfile
set nowrapscan
set showcmd
set nocompatible
set list
set textwidth=0
set laststatus=2
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'compatible'
set t_Co=256
set noshowmode
imap <c-j> <esc>
nnoremap <silent> <S-Left>  :5wincmd <<CR>
nnoremap <silent> <S-Right> :5wincmd ><CR>
nnoremap <silent> <S-Up>    :5wincmd -<CR>
nnoremap <silent> <S-Down>  :5wincmd +<CR>
"シンタックスをオンにする
syntax on
"オートインデント
set autoindent
"インクリメンタルサーチを行う
set incsearch
"行番号を表示する
set number
"シフト移動幅
set shiftwidth=4
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
set tabstop=4
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
set noswapfile
set nowrapscan
set showcmd
set nocompatible
set list
set textwidth=0
set laststatus=2
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'compatible'
set t_Co=256
set noshowmode
imap <c-j> <esc>
nnoremap <silent> <S-Left>  :5wincmd <<CR>
nnoremap <silent> <S-Right> :5wincmd ><CR>
nnoremap <silent> <S-Up>    :5wincmd -<CR>
nnoremap <silent> <S-Down>  :5wincmd +<CR>

" Use neocomplcache.
 let g:neocomplcache_enable_at_startup = 1
 " " Use smartcase.
 let g:neocomplcache_enable_smart_case = 1
 " " Set minimum syntax keyword length.
  let g:neocomplcache_min_syntax_length = 3

  "---------------------------
  " Start Neobundle Settings.
  "---------------------------
  " bundleで管理するディレクトリを指定
  set runtimepath+=~/.vim/bundle/neobundle.vim/

   " Required:
    call neobundle#begin(expand('~/.vim/bundle/'))

	  " neobundle自体をneobundleで管理
	    NeoBundle 'Shougo/neobundle.vim'
		  NeoBundle 'scrooloose/nerdtree'
		    NeoBundle 'mattn/emmet-vim'
			  NeoBundle 'Shougo/unite.vim'
			    NeoBundle 'tpope/vim-rails'
				  NeoBundle 'tpope/vim-endwise'
				     NeoBundle 'nathanaelkane/vim-indent-guides'
					   NeoBundle 'tpope/vim-surround.git'
					     NeoBundle 'alpaca-tc/alpaca_powertabline'
						   NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
						     NeoBundle 'Shougo/neocomplcache'
							   NeoBundle 'django.vim'
							     NeoBundle 'VST'
								   NeoBundle 'indentpython.vim--nianyang'
								     NeoBundle 'davidhalter/jedi-vim'
									   NeoBundle 'nvie/vim-flake8'
									     NeoBundle 'hynek/vim-python-pep8-indent'

										    " 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
											        call neobundle#end()
													         " Required:
															          filetype plugin indent on
																	  " 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるよ
																	  "うにする設定
																	  " 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
																	  NeoBundleCheck
																	  "-------------------------
																	  let file_name = expand("%:p")
																	  if has('vim_starting') &&  file_name == ""
																		      autocmd VimEnter * call ExecuteNERDTree()
																			  endif

																			  " カーソルが外れているときは自動的にnerdtreeを隠す
																			  function! ExecuteNERDTree()
																			      "b:nerdstatus = 1 : NERDTree 表示中
																				      "b:nerdstatus = 2 : NERDTree 非表示中

																					      if !exists('g:nerdstatus')
																							          execute 'NERDTree ./'
																									          let g:windowWidth = winwidth(winnr())
																											          let g:nerdtreebuf = bufnr('')
																													          let g:nerdstatus = 1

																															      elseif g:nerdstatus == 1
																																          execute 'wincmd t'
																																		      execute 'vertical resize' 0
																																			          execute 'wincmd p'
																																					          let g:nerdstatus = 2
																																							      elseif g:nerdstatus == 2
																																								          execute 'wincmd t'
																																										          execute 'vertical resize' g:windowWidth
																																												          let g:nerdstatus = 1

																																														      endif
																																															  endfunction
																																															  noremap <c-e> :<c-u>:call ExecuteNERDTree()<cr>
																																															  let NERDTreeShowHidden = 1
																																															  set guifontwide=Ricty:h12
																																															  let g:acp_enableAtStartup = 0

