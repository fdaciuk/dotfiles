" Plugins --------------------------------------------------------------------

call plug#begin()
  " Tema onedark. Ler documentação na parte de 'Installation' para saber dos 
  " detalhes necessários para a instalação
  Plug 'joshdick/onedark.vim' 

  " Outros temas interessantes
  Plug 'tomasr/molokai'
  Plug 'sonph/onehalf', { 'rtp': 'vim/' }

  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes' 

  " Suporte à liguagem JavaScript
  Plug 'pangloss/vim-javascript'

  " Suporte para JSX / React 
  Plug 'maxmellon/vim-jsx-pretty'

  " Suporte para Styled Components
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  " Adicionar syntax hightlight para várias linguagens
  Plug 'sheerun/vim-polyglot' 

  " === 
  " Início da instalação do fzf
  " O fzf serve para fazer buscas no estilo do sublime text, com Ctrl + P
  " Antes de instalar, leia a documentação e instale as dependências
  " necessárias.
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
  Plug 'junegunn/fzf.vim'
  " Final da instalação do fzf
  " ===

  " Adicionar comentários em várias linguagens
  Plug 'tpope/vim-commentary'

  " Wakatime (monitorar tempo de uso de cada projeto no Vim)
  Plug 'wakatime/vim-wakatime'

  " Fazer fechamento automático de pares (parênteses, colchetes, aspas, etc)
  Plug 'jiangmiao/auto-pairs'

  " Editorconfig
  Plug 'editorconfig/editorconfig-vim'  

  " Conquer of Completation - autocomplete - intelisense engine
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }

  " Suporte para Git no Vim
  Plug 'tpope/vim-fugitive'

  " Suporte para smooth scrolling
  Plug 'yuttie/comfortable-motion.vim'

  " Emmet
  Plug 'mattn/emmet-vim'
call plug#end()

" Cores e tema ---------------------------------------------------------------

" Define o tema
colorscheme onedark

" Define o background para temas escuros. Usar "light" para temas claros
set background=dark

" Habilita suporte completo a cores no Vim
" Se habilitar suporte a 24-bit com o onedark, não são exibidas as
" linhas vertical e horizontal, setadas em "set colorcolumn" e 
" "set cursorline"
set t_Co=256

" Habilita syntax highlight
syntax on

" Configurações do plugin Airline --------------------------------------------

" Tema
let g:airline_theme='onedark'

" Permitir fontes Powerline
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.notexists = ' ✗'

" Configuração do plugin vim-jsx-pretty --------------------------------------

" Desabilita polyglot para arquivos jsx 
let g:polyglot_disabled = ['jsx']
let g:vim_jsx_pretty_highlight_close_tag = 1

" Configuração do plugin de smooth scroll ------------------------------------

" Permite que o cursor acompanhe a rolagem da tela
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

" Espaços e Tabs -------------------------------------------------------------

" Define tabs como espaços
set expandtab

" Número de espaços visuais ao pressionar a tecla TAB
set tabstop=2

" Número de espaços contados em uma tabulação quando estiver editando
set softtabstop=2

" Número de espaços contados em uma tabulação em nova linha
set shiftwidth=2

" UI e Layout ----------------------------------------------------------------

" Exibir uma coluna para marcar 80 espaços
set colorcolumn=80

" Marcar linha atual
set cursorline

" exibir números de linhas
set number 

" exibir números de linha acima ou abaixo relativos a linha atual
set relativenumber 

" Habilita a exibição de caracteres ocultos
set list 

" Define como os símbolos ocultos serão representados
set listchars=tab:▸\
set listchars+=trail:·
set listchars+=eol:↴
set listchars+=nbsp:_

" Misc ----------------------------------------------------------------------

" Fazer split horizontal para baixo
set splitbelow

" Fazer split vertical para a direita
set splitright

" permite editar outros arquivos sem salvar um antes de abrir outro
set hidden 

" permite ter uma pré-visualização antes de fazer uma substituição com :%s
set inccommand=split

" Não quebrar linhas por padrão. Para definir quebra de linha, só entrar no
" arquivo e digitar :set wrap
set nowrap

" Permite copiar do clipboard para o vim e do vim para o clipboard
set clipboard+=unnamedplus

" Ignora maiúsculas e minúsculas para buscas
set ignorecase

" Sobrescreve o `ignorecase` quando houver caracteres em maísuculo na busca 
set smartcase

" Define diretório para salvar histórico de "desfazer"
set undodir=~/.config/nvim/undos

" Salva automaticamente um histórico de ações para "desfazer", ainda que o vim
" seja fechado
set undofile

" Atalhos com a tecla <leader> ----------------------------------------------

" Define a tecla "leader" como a barra de espaços
let mapleader=","

" Atalho para edição do arquivo de configuração do neovim. Só pressionar
" a tecla <leader> e digitar "ev" (edit vim) no modo normal
nnoremap <leader>ev :e ~/.config/nvim/init.vim<cr>

"Atalho para recarregar o vim após uma edição no arquivo de configuração
"(source vim) - <leader> seguido de "sv"
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" Comentar linhas usando <leader> + /
nnoremap <leader>/ :Commentary<cr>
vnoremap <leader>/ :Commentary<cr>

" Remover highlight da busca com <leader><space>
nnoremap <leader><space> :nohlsearch<cr>

" Toggle para exibir / esconder símbolos ocultos
nnoremap <leader>l :set list!<cr>

" Outros atalhos -------------------------------------------------------------

" Define o atalho Ctrl + P para utilizar o fzf 
nnoremap <c-p> :Files<cr>

" Define o atalho Ctrl + Meta(Alt) + P para utilizar o fzf com base no git
nnoremap <c-m-p> :GFiles<cr>

" Define o atalho Ctrl + N para abrir :Buffers com o fzf
nnoremap <c-o> :Buffers<cr>

" Lista todos os buffers com "go" e aceita um novo buffer como argumento
nnoremap go :ls<cr>:b

" Lista todos os buffers com "gv" e aceita um para abrir na vertical
nnoremap gv :ls<cr>:vsplit \| b

" Lista todos os buffers com "gh" e aceita um para abrir na horizontal
nnoremap gh :ls<cr>:split \| b

" Alternar entre buffers com "gp" ao invés de Ctrl + 6
nnoremap gp :e#<cr>

" Zoom in em split - [z]oom [in]
" Os comandos padrão para dar zoom em split são:
" - Ctrl + W + _ = Define o split atual com a maior altura possível
" - Ctrl + W + | = Define o split atual com a maior largura possível
" - Ctrl + W + = = Tenta definir todas as janelas com o mesmo tamanho
nnoremap zin <c-w>_ <c-w>\|

" Zoom out - [z]oom [n]ot [i]n
" não usei "zo" pq conflita com o atalho de folding
nnoremap zni <c-w>= 

" Backups --------------------------------------------------------------------

" Inicia o backup
set backup

" Define o diretório para os backups
set backupdir=~/.config/nvim/backups

" Arquivos do qual backups devem ser ignorados
set backupskip=/tmp/*

" Salva o arquivo no backup
set writebackup

" Correção de typos ----------------------------------------------------------

iabbrev lenght length
iabbrev widht width
iabbrev heigth height
