" UI e Layout ----------------------------------------------------------------

" Exibir uma coluna para marcar 80 espaços
set colorcolumn=80

" Marcar linha atual
set cursorline

" exibir números de linhas
set number

" exibir números de linha acima ou abaixo relativos a linha atual
" set relativenumber

" Habilita a exibição de caracteres ocultos
set list 

" Define como os símbolos ocultos serão representados
set listchars=tab:▸\
set listchars+=trail:·
set listchars+=eol:↴
set listchars+=nbsp:_

" Pode deixar o nvim lento, mas garantido que syntax highlight vai 
" sempre funcionar
autocmd BufEnter * :syntax sync fromstart

" Desabilita os caracteres do indentLine para o Terminal Mode
autocmd TermOpen * IndentLinesDisable

" Habilita o mouse no modo de inserção
" i = insert
" v = visual
" a = all (todos os modos)
set mouse=a
