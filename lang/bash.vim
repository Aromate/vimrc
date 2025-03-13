if executable('bash-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'Bash Language Server',
        \ 'cmd': {server_info->['bash-language-server', 'start']},
        \ 'allowlist': ['sh', 'bash'],
        \ })
endif
