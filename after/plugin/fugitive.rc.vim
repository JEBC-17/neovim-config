" Status line
if !exists('*fugitive#statusline')
  set statusline=%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}[L%l/%L,C%03v]
  set statusline+=%=
  set statusline+=%{fugitive#statusline()}
  nnoremap <silent> <leader>ga :Git add<CR>
  nnoremap <silent> <leader>gs :Git status<CR>
  nnoremap <silent> <leader>gw :Gwrite<CR>
  nnoremap <silent> <leader>gc :Git commit<CR>
  nnoremap <silent> <leader>gd :Gdiffsplit<CR>
  nnoremap <silent> <leader>gpl :Git pull<CR>
  nnoremap <silent> <leader>gpu :Git push<CR>
endif

cnoreabbrev g Git
cnoreabbrev gopen GBrowse
