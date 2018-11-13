nnoremap <buffer> <F5> :call VimuxRunCommand("make")<CR>
nnoremap <buffer> <F6> :call VimuxRunCommand("make test")<CR>

map <buffer> <C-K><C-o> :py3f /usr/share/clang/clang-format.py<CR>
imap <buffer> <C-K><C-o> :py3f /usr/share/clang/clang-format.py<CR>

setlocal textwidth=80
setlocal colorcolumn=80
