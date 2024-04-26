call plug#begin()
Plug 'vim-python/python-syntax'
Plug 'petRUShka/vim-sage'
Plug 'bfrg/vim-cpp-modern'
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-markdown'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'ziglang/zig.vim'
call plug#end()
