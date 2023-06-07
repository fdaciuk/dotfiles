local M = {}

M.theme = {
  -- name = "palenightfall",
  name = "catppuccin",
  catppuccin_flavour = "frappe",
  ayucolor = "dark",
  rose_pine = { variant = "moon" },
}

M.mappings = {
  leader = ",",
  custom = {
    ["<leader>t"] = { "<cmd>FloatermNew --width=0.8 --height=0.8<cr>", "Open terminal" },
    ["<c-\\>"] = { "<cmd>FloatermToggle!<cr>", "Toggle Terminal", mode = { "t", "n" } },
    gp = { ":e#<cr>", "Switch between the lastest two buffers" },
    gd = { "<leader>gd", " Go to definition", remap = true },
    K = { "<leader>cd", " Show documentation", remap = true },
  },
}

M.nvim_tree = {
  update_cwd = false,
  update_focused_file = {
    update_cwd = false,
  },
  view = {
    adaptive_size = false,
  },
  filters = {
    dotfiles = false,
    exclude = { "github.*" },
  },
}

M.lsps = {
  astro = {},
  prismals = {},
  tailwindcss = {},
  ["rescriptls@latest-master"] = {},
  rust_analyzer = {},
  gopls = {},
  bashls = {
    settings = {
      allowlist = { "sh", "bash" },
    },
  },
  tsserver = {
    on_attach = function(client, bufnr)
      require "twoslash-queries".attach(client, bufnr)
    end,
  },
}

M.treesitter = "all"

M.plugins = {
  "rescript-lang/vim-rescript",
  "nkrkv/nvim-treesitter-rescript",
  "devongovett/tree-sitter-highlight",
  "wakatime/vim-wakatime",
  "voldikss/vim-floaterm",
  {
    "JoosepAlviste/palenightfall.nvim",
    opts = {},
  },
  "mg979/vim-visual-multi",
  {
    "marilari88/twoslash-queries.nvim",
    opts = {
      multi_line = true,  -- to print types in multi line mode
      highlight = "Type", -- to set up a highlight group for the virtual text
    },
  }
  -- "Exafunction/codeium.vim",
}

M.lualine = {
  options = {
    -- icons:
    --           
    component_separators = { left = "", right = "" },
    section_separators = { left = " ", right = "" },
  },
  sections = {
    a = { "mode" },
    b = { "branch" },
    c = { "filename" },
    x = { "encoding", "fileformat", "filetype" },
    y = { "progress" },
    z = { "location" },
  },
}

M.noice = {
  messages = {
    view = "mini",
  },
}

M.flags = {
  disable_tabs = true,
  format_on_save = true,
}

M.hooks = {
  after_setup = function()
    -- Floatterm config
    vim.g.floaterm_title = ""

    vim.o.backupdir = "/tmp/.nvim/backup"
    vim.o.directory = "/tmp/.nvim/swap"
    vim.o.undodir = "/tmp/.nvim/undo"

    -- ftdetect
    vim.cmd [[ autocmd BufNewFile,BufRead *.mdx set filetype=markdown.jsx ]]

    -- colorcolumn from 80 to the end of the buffer width
    vim.cmd [[ let &colorcolumn=join(range(81,999),",") ]]

    -- Set relative number when in normal mode and normal number in insert mode
    -- Reference: https://vi.stackexchange.com/a/38037
    vim.cmd [[
      set number
      " Toggles relativenumber on and off based on mode
      augroup numbertoggle
        " Do not show relative number in these filetypes
        let ignore = ['dashboard', 'NvimTree', 'floaterm', 'TelescopePrompt', 'mason', 'noice']
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * if index(ignore, &ft) < 0 | set relativenumber | endif
        autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
      augroup END
    ]]
    --
    --
    --   -- Show a different background color for texts that overlength
    --   vim.cmd [[
    --     augroup vimrc_autocmds
    --     au!
    --         autocmd BufRead * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    --         autocmd BufRead * match OverLength /\%81v.*/
    --     augroup END
    -- ]]
  end,
}

return M
