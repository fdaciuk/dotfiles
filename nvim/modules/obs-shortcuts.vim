" OBS ------------------------------------------------------------------------

" Não permitir Ctrl + Shift + Alt + E nem Ctrl + Shift + Alt + P, pois esses 
" atalhos são usados no OBS para iniciar/finalizar e pausar uma gravação
" O uso do <Nop> é para remover atalhos internos do Vim
nnoremap <c-s-m-p> <Nop>
nnoremap <c-s-m-e> <Nop>

" Não permitir o uso dos atalhos Alt + 1, Alt + 2 e Alt + 3, pois é usado para
" a troca de cenas no OBS
nnoremap <m-0> <Nop>
nnoremap <m-1> <Nop>
nnoremap <m-2> <Nop>
nnoremap <m-3> <Nop>
