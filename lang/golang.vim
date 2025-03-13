if executable('gopls')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'Go Language Server',
        \ 'cmd': {server_info->['gopls']},
        \ 'allowlist': ['go'],
        \ })
endif
