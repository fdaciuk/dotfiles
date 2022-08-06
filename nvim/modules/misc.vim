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

" Define diretório para salvar histórico de `desfazer`
set undodir=~/.config/nvim/undos

" Salva automaticamente um histórico de ações para `desfazer`, ainda que o vim
" seja fechado
set undofile

" Não exibe símbolos ocultos por default
set list!

" Sempre exibir a sign column (coluna com os símbolos de erro e warning)
set signcolumn=yes
highlight clear SignColumn
