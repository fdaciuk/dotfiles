" Atalhos com a tecla <leader> -----------------------------------------------

" Atalho para edição do arquivo de configuração do neovim. Só pressionar
" a tecla <leader> e digitar `ev` (edit vim) no modo normal
nnoremap <leader>ev :e ~/.config/nvim/init.vim<cr>

"Atalho para recarregar o vim após uma edição no arquivo de configuração
"(source vim) - <leader> seguido de `sv`
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" Comentar linhas usando <leader> + /
nnoremap <leader>/ :Commentary<cr>
vnoremap <leader>/ :Commentary<cr>

" Remover highlight da busca com <leader><space>
nnoremap <leader><space> :nohlsearch<cr>

" Toggle para exibir / esconder símbolos ocultos
nnoremap <leader>l :set list!<cr>

" Copiar caminho do arquivo atual com <leader>yf (yank filename)
" " relative path
" :let @+ = expand("%")
" " full path
" :let @+ = expand("%:p")

" " just filename
" :let @+ = expand("%:t")
nnoremap <leader>yf :let @+ = expand("%")<cr>
nnoremap <leader>yn :let @+ = expand("%:p")<cr>

" Abrir terminal com <leader>t
nnoremap <leader>t :split \| term<cr>i

" Abrir terminal na vertical com <leader>vt
nnoremap <leader>vt :vsplit \| term<cr>i
