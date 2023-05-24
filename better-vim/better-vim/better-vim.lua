local lsps = require "better-vim.lsps"
local nvim_tree = require "better-vim.nvim-tree"
local lualine = require "better-vim.lualine"
local custom_mappings = require "better-vim.custom-mappings"
local plugins = require "better-vim.plugins"

return {
  theme = {
    name = "catppuccin",
    catppuccin_flavour = "frappe",
    ayucolor = "dark",
    rose_pine = { variant = "moon" },
  },
  mappings = {
    leader = ",",
    custom = custom_mappings,
  },
  nvim_tree = nvim_tree,
  lsps = lsps,
  treesitter = "all",
  plugins = plugins,
  lualine = lualine,
  flags = {
    disable_tabs = true,
    format_on_save = true,
  },
  hooks = {
    after_setup = function()
      -- Floatterm config
      vim.g.floaterm_title = ""

      -- ftdetect
      vim.cmd [[ autocmd BufNewFile,BufRead *.mdx set filetype=markdown.jsx ]]

      -- Vim common config
      -- colorcolumn from 80 to the end of the buffer width
      vim.cmd [[ let &colorcolumn=join(range(81,999),",") ]]
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
  },
}
