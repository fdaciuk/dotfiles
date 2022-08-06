" Configuração do ReScript ---------------------------------------------------

" Key bindings
autocmd FileType rescript nnoremap <silent> <buffer> <localleader>r :RescriptFormat<CR>
autocmd FileType rescript nnoremap <silent> <buffer> <localleader>t :RescriptTypeHint<CR>
autocmd FileType rescript nnoremap <silent> <buffer> <localleader>b :RescriptBuild<CR>
autocmd FileType rescript nnoremap <silent> <buffer> gd :RescriptJumpToDefinition<CR>

" Autocomplete
set omnifunc=rescript#Complete

" When preview is enabled, omnicomplete will display additional
" information for a selected item
set completeopt+=preview
