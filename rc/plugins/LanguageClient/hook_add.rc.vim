" --------------------------------------------------------------------------------
" autozimu/LanguageClient-neovim

" --------------------------------------------------------------------------------
" Key mapping

nnoremap [LanguageClient] <Nop>
nmap     <C-l>            [LanguageClient]

nnoremap <silent> [LanguageClient]c :call LanguageClient_textDocument_completion()<CR>
nnoremap <silent> [LanguageClient]d :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> [LanguageClient]f :call LanguageClient_textDocument_formatting()<CR>
nnoremap <silent> [LanguageClient]h :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> [LanguageClient]i :call LanguageClient_textDocument_implementation()<CR>
nnoremap <silent> [LanguageClient]r :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> [LanguageClient]n :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> [LanguageClient]t :call LanguageClient_textDocument_typeDefinition()<CR>

" --------------------------------------------------------------------------------
" Config

let g:LanguageClient_serverCommands = {
    \ 'c':          ['ccls'],
    \ 'cpp':        ['ccls'],
    \ 'Dockerfile': ['docker-langserver', '--stdio'],
    \ 'go':         ['gopls', 'serve'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'proto':      ['protocol-buffers-language-server'],
    \ 'python':     ['pyls'],
    \ 'ruby':       ['solargraph', 'stdio'],
    \ 'rust':       ['rustup', 'run', 'nightly', 'rls'],
    \ 'sh':         ['bash-language-server', 'start'],
    \ 'swift':      ['sourcekit-lsp'],
    \ 'terraform':  ['terraform-lsp'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'yaml':       ['yaml-language-server', '--stdio'],
    \ }

let g:LanguageClient_settingsPath = $XDG_CONFIG_HOME . '/nvim/lsp/settings.json'
