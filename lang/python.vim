if executable('pylsp')
  au User lsp_setup call lsp#register_server({
        \   'name': 'Python Language Server',
        \   'cmd': {server_info->['pylsp']},
        \   'priority': 2,
        \   'whitelist': ['python'],
        \   'initialization_options': {},
        \ })
endif
