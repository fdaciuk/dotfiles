" Outros atalhos -------------------------------------------------------------

" Define o atalho Ctrl + P para utilizar o fzf 
nnoremap <c-p> :Files<cr>

" Define o atalho Shift + Meta(Alt) + P para utilizar o fzf com base no git
nnoremap <s-m-p> :GFiles<cr>

" Define o atalho Ctrl + N para abrir :Buffers com o fzf
nnoremap <c-o> :Buffers<cr>

" Lista todos os buffers com `go` e aceita um novo buffer como argumento
nnoremap go :ls<cr>:b

" Lista todos os buffers com `gv` e aceita um para abrir na vertical
nnoremap gv :ls<cr>:vsplit \| b

" Lista todos os buffers com `gh` e aceita um para abrir na horizontal
nnoremap gh :ls<cr>:split \| b

" Alternar entre buffers com `gp` ao invés de Ctrl + 6
nnoremap gp :e#<cr>

" Zoom in em split - [z]oom [in]
" Os comandos padrão para dar zoom em split são:
" - Ctrl + W + _ = Define o split atual com a maior altura possível
" - Ctrl + W + | = Define o split atual com a maior largura possível
" - Ctrl + W + = = Tenta definir todas as janelas com o mesmo tamanho
nnoremap zin <c-w>_ <c-w>\|

" Zoom vertical
nnoremap zv <c-w>_

" Zoom horizontal
nnoremap zh <c-w>\|

" Zoom out - [z]oom [n]ot [i]n
" não usei `zo` pq conflita com o atalho de folding
nnoremap zni <c-w>= 

" Toggle para conceallevel
" conceallevel serve para deixar algumas coisas mais "humanamente visíveis". 
" Exemplo:
" em um arquivo markdown, ao invés de exibir um link completo, que pode ficar
" ruim de ler, com o conceallevel setado para `2`, o link é exibido apenas com
" o texto, e um underline, ao invés da sintaxe completa de [texto](http://link)
" Mas temos que desabilitar se precisarmos editar o link. O conceallevel é
" usado também por outros plugins, como o indentLine para exibir as linhas de
" indentação, por isso é legal manter ele ativo, mas ter uma opção rápida para
" desabilitar quando necessário.
nnoremap coe :setlocal conceallevel=<c-r>=&conceallevel == 0 ? '2' : '0'<cr><cr>

" Salvar usando CTRL + S
nmap <c-s> :w<cr>
imap <c-s> <Esc>:w<cr>a

" Mover linha ou bloco de linhas pra cima e pra baixo (Shift+Alt+j e Shift+Alt+k)
nnoremap <S-A-j> :m .+1<CR>==
nnoremap <S-A-k> :m .-2<CR>==
inoremap <S-A-j> <Esc>:m .+1<CR>==gi
inoremap <S-A-k> <Esc>:m .-2<CR>==gi
vnoremap <S-A-j> :m '>+1<CR>gv=gv
vnoremap <S-A-k> :m '<-2<CR>gv=gv
