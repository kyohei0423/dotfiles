" nnoremap <silent> <Space>t :<C-u>Denite filetype<CR>
" nnoremap <silent> <C-p> :<C-u>Denite file_rec<CR>
" nnoremap <silent> <C-f> :<C-u>Denite -buffer-name=search -auto-highlight line<CR>

" Define mappings
autocmd FileType denite call s:denite_my_settings()

function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
