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

if(!exists(':BansheeInformation'))
  command! BansheeInformation call banshee#Information()
endif

if(!exists(':BansheePlay'))
  command! BansheePlay call banshee#Play()
endif

if(!exists(':BansheePause'))
  command! BansheePause call banshee#Pause()
endif

if(!exists(':BansheeToggle'))
  command! BansheeToggle call banshee#Toggle()
endif

if(!exists(':BansheeStop'))
  command! BansheeStop call banshee#Stop()
endif

if(!exists(':BansheeSongDuration'))
  command! BansheeSongDuration call banshee#SongDuration()
endif

if(!exists(':BansheeStopWhenFinished'))
  command! BansheeStopWhenFinished call banshee#StopWhenFinished()
endif
