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
map <F3> :NERDTreeToggle<CR>



map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc
