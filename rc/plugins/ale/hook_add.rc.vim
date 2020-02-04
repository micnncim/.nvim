" --------------------------------------------------------------------------------
" dense-analysis/ale

let g:ale_linters = {
	\ 'go': ['gopls'],
    \ 'rust': ['rustfmt'],
	\}

let g:ale_fixers = {
    \ '*': [],
    \ 'go': ['gofmt', 'goimports'],
    \ 'javascript': ['eslint', 'prettier'],
    \ 'rust': ['rls'],
    \}

let g:ale_set_highlights = 0

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

let g:ale_fix_on_save = 1
