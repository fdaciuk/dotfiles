" Mudando o tema pra ficar do meu jeito --------------------------------------

" Função utilitária para gerar o tema

function! s:h(group, style)
 execute "highlight" a:group
  \ "guifg=" (has_key(a:style, "fg")    ? a:style.fg   : "NONE")
  \ "guibg=" (has_key(a:style, "bg")    ? a:style.bg   : "NONE")
  \ "guisp=" (has_key(a:style, "sp")    ? a:style.sp   : "NONE")
  \ "gui="   (has_key(a:style, "gui")   ? a:style      : "NONE")
endfunction

call s:h("ColorColumn", { "bg": "#444444" })
