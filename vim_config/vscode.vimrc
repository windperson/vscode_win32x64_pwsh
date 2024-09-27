" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch" Show matching words during a search.
set showmatch

" Enable arrow key selection: https://stackoverflow.com/a/69002041
nmap <S-Left> <Action>(EditorLeftWithSelection)
nmap <S-Right> <Action>(EditorRightWithSelection)
nmap <S-Up> <Action>(EditorUpWithSelection)
nmap <S-Down> <Action>(EditorDownWithSelection)
imap <S-Left> <Action>(EditorLeftWithSelection)
imap <S-Right> <Action>(EditorRightWithSelection)
imap <S-Up> <Action>(EditorUpWithSelection)
imap <S-Down> <Action>(EditorDownWithSelection)
vmap <S-Left> <Action>(EditorLeftWithSelection)
vmap <S-Right> <Action>(EditorRightWithSelection)
vmap <S-Up> <Action>(EditorUpWithSelection)
vmap <S-Down> <Action>(EditorDownWithSelection)

nmap <S-Home> <Action>(EditorLineStartWithSelection)
nmap <S-End> <Action>(EditorLineEndWithSelection)
imap <S-Home> <Action>(EditorLineStartWithSelection)
imap <S-End> <Action>(EditorLineEndWithSelection)
vmap <S-Home> <Action>(EditorLineStartWithSelection)
vmap <S-End> <Action>(EditorLineEndWithSelection)