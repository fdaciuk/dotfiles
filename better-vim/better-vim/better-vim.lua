return {
  theme = {
    name = "catppuccin",
    catppuccin_flavour = "frappe",
    ayucolor = "dark",
    rose_pine = { variant = "moon" },
  },
  mappings = {
    leader = ",",
    custom = {
      ["<leader>t"] = { "<cmd>FloatermNew --width=0.8 --height=0.8<cr>", "Open terminal" },
      gp = { ":e#<cr>", "Switch between the lastest two buffers" },
      gd = { vim.lsp.buf.definition, " Go to definition" },
      K = { vim.lsp.buf.hover, " Show documentation" },
    },
  },
  lsps = {
    astro = {},
    -- ["rescriptls@latest-master"] = {},
    rust_analyzer = {},
    gopls = {},
    bashls = {
      allowlist = { "sh", "bash" },
    },
  },
  treesitter = "all",
  plugins = {
    "rescript-lang/vim-rescript",
    "nkrkv/nvim-treesitter-rescript",
    "devongovett/tree-sitter-highlight",
    "wakatime/vim-wakatime",
    "voldikss/vim-floaterm",
  },
  lualine = {
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
  },
  flags = {
    disable_tabs = true,
    format_on_save = true,
  },
  hooks = {
    after_setup = function()
      -- Floatterm config
      vim.g.floaterm_title = ""

      -- Vim common config
      -- vim.cmd [[ let &colorcolumn=join(range(81,999),",") ]]
    end,
  },
}
