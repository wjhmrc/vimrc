set nu
set shortmess=atI
syntax on
set nocompatible
set nobackup
set confirm
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cindent
set autoindent
set smartindent
set hlsearch
set showmatch
set ruler
set foldenable
set fdm=syntax
set fdm=manual
nnoremap <space> @=((foldclosed(line('.')<0)?'zc':'zo'))<CR>
colorscheme solarized
set novisualbell
set laststatus=2
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set showcmd
set fillchars=vert:/
set fillchars=stl:/
set fillchars=stlnc:/
