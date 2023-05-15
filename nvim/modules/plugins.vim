" Plugins --------------------------------------------------------------------

call plug#begin()
  " Temas
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'NLKNguyen/papercolor-theme'

  " Prisma code highlight
  Plug 'pantharshit00/vim-prisma'

  " Caracteres especiais para indentação
  Plug 'Yggdroot/indentLine'
  " Plug 'lukas-reineke/indent-blankline.nvim'

  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes' 

  " Suporte à liguagem JavaScript
  Plug 'pangloss/vim-javascript'

  " Suporte para Styled Components
  Plug 'styled-components/vim-styled-components', { 'branch': 'develop' }

  " Adicionar syntax hightlight para várias linguagens
  Plug 'sheerun/vim-polyglot' 

  " Code highlight para astro
  Plug 'wuelnerdotexe/vim-astro'

  " Suporte para ReScript
  Plug 'rescript-lang/vim-rescript'

  " Suporte para Elixir
  Plug 'elixir-editors/vim-elixir'

  " Dicas de teclas de atalho
  Plug 'folke/which-key.nvim'

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

  " Facilitar manipulação de 'surroundings' (pares)
  Plug 'tpope/vim-surround'

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

  " Carregar CSV
  Plug 'chrisbra/csv.vim'

  " Melhorar netw
  Plug 'lambdalisue/fern.vim', { 'branch': 'main' }
  Plug 'lambdalisue/fern-hijack.vim'
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'lambdalisue/glyph-palette.vim'
call plug#end()
