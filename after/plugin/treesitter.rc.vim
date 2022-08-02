if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {"css","cpp","php","tsx","sql","json","html","scss","java","python","javascript"},



  highlight = {
    enable = true,
    disable={},
  },
  indent = {
    eneable =true,
    disable = {},
    },
  autotag ={
  eneable = true,
  }
}
EOF
