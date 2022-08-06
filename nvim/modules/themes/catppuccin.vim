" [TEMA] Configuração para tema catppuccin -----------------------------------

lua << EOF
local catppuccin = require("catppuccin")
catppuccin.setup({integrations = { coc_nvim = true }})
EOF

set termguicolors
let g:catppuccin_flavour = "mocha"
colorscheme catppuccin
