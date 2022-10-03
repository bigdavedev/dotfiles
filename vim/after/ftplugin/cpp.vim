" YCM keybindings
nnoremap <leader>gd :YcmCompleter GoToDefinition<cr>
nnoremap <leader>gr :YcmCompleter GoToReferences<cr>
nnoremap <leader>fi :YcmCompleter FixIt<cr>
nnoremap <leader>rr :YcmCompleter RefactorRename 

let g:ycm_autoclose_preview_window_adter_completion = 1

" clang-format keybinding
nnoremap <buffer> <C-K><c-o> :py3f /usr/share/clang/clang-format-16/clang-format.py<CR>

" Make commentary use C++ style comments
setlocal commentstring=//\ %s
