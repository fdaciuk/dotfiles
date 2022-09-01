" [TEMA] Configuração para tema ayu ------------------------------------------

" Define o tema
set termguicolors
let ayucolor="dark"
" let ayucolor="mirage"
" let ayucolor="light"
colorscheme ayu

" Tema Airline
let g:airline_theme='onehalfdark'

" Define se a cor usada pelo indentLine vai seguir o tema (0) ou o padrão do
" indentLine (1), que é cinza
let g:indentLine_setColors = 0

" Ajusta cor de fundo do highlight menu
highlight Pmenu guibg=darkblack
