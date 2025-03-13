if executable('asm-lsp')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'ASM Language Server',
        \ 'cmd': {server_info->['asm-lsp']},
        \ 'allowlist': ['s','asm','nasm','asmx','asmx64','asmx32','asmx86','asmx16','asmx8','asmx4','asmx2','asmx1'],
        \ })
endif
