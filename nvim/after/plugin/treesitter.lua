require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  -- TODO: checkout the languages supported https://github.com/nvim-treesitter/nvim-treesitter#readme
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "python", "scala", "bibtex", "latex" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    disable = { "tex", "bibtex", "latex" }

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    -- additional_vim_regex_highlighting = false,
  },
  matchup = {
    enable = true,             -- mandatory, false will disable the whole extension
    disable = { "c", "ruby" }, -- optional, list of language that will be disabled
    -- [options]
  },
}
