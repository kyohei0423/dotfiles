command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --line-number --no-heading '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'options': '--exact --reverse --delimiter : --nth 3..'}, 'right:50%:wrap'))

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Rgのキーバインド
noremap <Space>f :<C-u>Rg<CR>
