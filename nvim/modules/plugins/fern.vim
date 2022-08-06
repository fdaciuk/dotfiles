" Configuração do plugin Fern ------------------------------------------------

let g:fern#drawer_width = 35
let g:fern#disable_drawer_auto_resize = 0
let g:fern#default_hidden = 1
let g:fern#disable_drawer_auto_quit = 1
let g:fern#renderer = "nerdfont"

" Abrir/fechar Fern com Alt + f
noremap <silent> <A-f> :Fern . -drawer -toggle -reveal=% -width=35 <cr>

" Navegar entre buffers com Alt + wasd
" Alt + w = Navega para o buffer acima
noremap <silent> <A-w> <C-w>k
" Alt + a = Navega para o buffer à esquerda
noremap <silent> <A-a> <C-w>h
" Alt + s = Navega para o buffer abaixo
noremap <silent> <A-s> <C-w>j
" Alt + d = Navega pra o buffer à direita
noremap <silent> <A-d> <C-w>l

augroup fern-custom
  autocmd! *
  autocmd FileType fern IndentLinesDisable
augroup END

" " Preview files
" function! s:fern_preview_init() abort
"   nmap <buffer><expr>
"         \ <Plug>(fern-my-preview-or-nop)
"         \ fern#smart#leaf(
"         \   "\<Plug>(fern-action-open:edit)\<C-w>p",
"         \   "",
"         \ )
"   nmap <buffer><expr> j
"         \ fern#smart#drawer(
"         \   "j\<Plug>(fern-my-preview-or-nop)",
"         \   "j",
"         \ )
"   nmap <buffer><expr> k
"         \ fern#smart#drawer(
"         \   "k\<Plug>(fern-my-preview-or-nop)",
"         \   "k",
"         \ )
" endfunction

" augroup my-fern-preview
"   autocmd! *
"   autocmd FileType fern call s:fern_preview_init()
" augroup END
