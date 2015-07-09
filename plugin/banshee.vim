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

if(!exists(':BansheeRestart'))
  command! BansheeRestart call banshee#Restart()
endif

if(!exists(':BansheeInfo'))
  command! BansheeInfo call banshee#Info()
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

if(!exists(':BansheeSetPosition'))
  command! -nargs=1 BansheeSetPosition call banshee#SetPosition(<args>)
endif

if(!exists(':BansheeSetRating'))
  command! -nargs=1 BansheeSetRating call banshee#SetRating(<args>)
endif

if(!exists(':BansheeShow'))
  command! BansheeShow call banshee#Show()
endif

if(!exists(':BansheeHide'))
  command! BansheeHide call banshee#Hide()
endif

if(!exists(':BansheeFullscreen'))
  command! BansheeFullscreen call banshee#Fullscreen()
endif

if(!exists(':BansheeImportMedia'))
  command! BansheeImportMedia call banshee#ImportMedia()
endif

if(!exists(':BansheeOpenLocation'))
  command! BansheeOpenLocation call banshee#OpenLocation()
endif

if(!exists(':BansheePreferences'))
  command! BansheePreferences call banshee#ShowPreferences()
endif

