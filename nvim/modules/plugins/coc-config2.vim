" Configuração do plugin COC -------------------------------------------------
"
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Usar o K maiúsculo para exibir a documentação
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
 if (index(['vim','help'], &filetype) >= 0)
   execute 'h '.expand('<cword>')
 elseif (coc#rpc#ready())
   call CocActionAsync('doHover')
 else
   execute '!' . &keywordprg . " " . expand('<cword>')
 endif
endfunction

" Usar Ctrl + Espaço para abrir autocomplete no modo de inserção
if has('nvim')
 inoremap <silent><expr> <c-space> coc#refresh()
else
 inoremap <silent><expr> <c-@> coc#refresh()
endif

" Atalho para abrir :CocAction
nmap <leader>ac <Plug>(coc-codeaction)

" Atalho para aplicar autofix no problema da linha selecionada
nmap <leader>qf <Plug>(coc-fix-current)

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Scroll para floating windows

nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
