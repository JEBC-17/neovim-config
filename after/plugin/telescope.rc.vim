if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent> <leader>r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> <leader>7 <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <silent> <leader>t <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <silent> <leader>, <cmd>lua require('telescope.builtin').resume()<cr>
nnoremap <silent> <leader>e <cmd>lua require('telescope.builtin').diagnostics()<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF
