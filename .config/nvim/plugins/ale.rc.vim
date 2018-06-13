let g:ale_linters = {
    \   'ruby': ['rubocop'],
    \   'javascript': ['eslint'],
    \ }
let g:ale_fixers = {
    \   'ruby': ['rubocomp'],
    \   'javascript': ['prettier', 'esling'],
    \ }
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_change = 'never'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_sign_column_always = 1
nnoremap <silent> <C-k> <Plug>(ale_previous_wrap)
nnoremap <silent> <C-j> <Plug>(ale_next_wrap)
