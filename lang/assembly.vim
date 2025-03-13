if executable('asm-lsp')
  au User lsp_setup call lsp#register_server({
        \   'name': 'Assembly Language Server',
        \   'cmd': {server_info->['asm-lsp']},
        \   'priority': 2,
        \   'whitelist': ['asm','s', 'S'],
        \   'initialization_options': {},
        \ })
endif
