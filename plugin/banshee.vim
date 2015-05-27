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

if(!exists(':BansheeNext'))
  command! BansheeNext call banshee#PlayNextSong()
endif

if(!exists(':BansheePrevious'))
  command! BansheePrevious call banshee#PlayPreviousSong()
endif

if(!exists(':BansheeRestartOrPrevious'))
  command! BansheeRestartOrPrevious call banshee#RestartOrPreviousSong()
endif

