" Curly bracket indentation mappings without recursion (insert-mode)
inoremap { {}<Left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {{ {
inoremap {} {}

" Quit insert mode with "jk" / "JK"
" inoremap jk <ESC>
" inoremap JK <ESC>

" Select all with "Ctrl + a"
map <C-a> <ESC>ggVG<CR>

" Switch between windows when not in tmux
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" Vertical vim movements
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

set makeprg=g++\ -DDEBUG\ -Wfatal-errors\ -Wconversion\ -Wall\ -Wextra\ -g\ -O2\ -std=c++20\ -fsanitize=undefined,address\ -o\ %:r\ %
autocmd filetype cpp nnoremap <F8> :w <bar> make <CR>
autocmd filetype cpp nnoremap <F9> :vertical terminal ++shell ++cols=60 ./%:r<CR>

" Run python files
autocmd filetype python nnoremap <F8> :w <bar> !wt.exe cmd /t:0A /k "wsl -u ${USER} --cd ${PWD} -e python3 %:r.py" <CR><CR>

" Markdown preview toggle
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd filetype markdown nmap <F8> <Plug>MarkdownPreviewToggle

" Nerdtree
map <F7> :NERDTreeToggle<CR>

" Comment current line in normal-mode
autocmd filetype * nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

" Conquerer of Competion (coc) stuff below
" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable // THIS IS IMPORTANT
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
 inoremap <silent><expr> <TAB>
       \ coc#pum#visible() ? coc#pum#next(1) :
       \ CheckBackspace() ? "\<Tab>" :
       \ coc#refresh()
 inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
