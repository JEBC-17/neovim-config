if !exists("g:loaded_zen-mode")
  finish
endif

lua << EOF
require("zen-mode").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF
