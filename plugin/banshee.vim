function! OpenBanshee()
  if(bufexists('banshee'))
    let bansheewin = bufwinnr('banshee.playlist')
    if(bansheewin == -1)
      execute "sbuffer" . bufnr('banshee.playlist')
    else
      execute bansheewin . 'wincmd w'
      return
    endif
  else
    exec "new banshee.playlist"
  endif
  call banshee#DisplayPlaylist()
endfunction

