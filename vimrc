" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 NeoBundle 'wincent/command-t'
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'tpope/vim-surround'
 NeoBundle 'scrooloose/syntastic'
 NeoBundle 'kien/ctrlp.vim'
 NeoBundle 'kchmck/vim-coffee-script'
 NeoBundle 'scrooloose/nerdcommenter'
 NeoBundle 'bling/vim-airline'
 NeoBundle 'tpope/vim-rails'
 NeoBundle 'flazz/vim-colorschemes'
 NeoBundle 'ntpeters/vim-better-whitespace'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 set smartindent
 set tabstop=2
 set shiftwidth=2
 set expandtab
 set nowrap
 set noswapfile
 colorscheme monokai
 syntax on
 let g:ctrlp_cmd = "CtrlPMixed"

 let mapleader = "m"
 map <Leader>s :vsplit<CR>

 autocmd VimEnter * ToggleStripWhitespaceOnSave

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
