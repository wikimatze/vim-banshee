function! OpenBanshee()
  if(bufexists('banshee'))
    let bansheewin = bufwinnr('banshee')
    if(bansheewin == -1)
      execute "sbuffer" . bufnr('banshee')
    else
      execute bansheewin . 'wincmd w'
      return
    endif
  else
    exec "new banshee"
  endif
  call banshee#DisplayPlaylist()
endfunction

