function! banshee#DisplayPlaylist()
  let cmd = "banshee --query-album --query-artist && banshee --query-album --query-artist"
  let playlist = split(system(cmd), '\n')

  for track in playlist
    call append(line('$'), track)
  endfor
endfunction

function! banshee#PlayNextSong()
  let next_song = "banshee --next"
  let result = system(next_song)
  call banshee#Information("PLAYING NEXT SONG")
endfunction

function! banshee#PlayPreviousSong()
  let cmd = "banshee --previous"
  let result = system(cmd)
  call banshee#Information("PLAYING PREVIOUS SONG")
endfunction

function! banshee#Restart()
  let cmd = "banshee --restart-or-previous"
  let result = system(cmd)
  call banshee#Information('')
endfunction

function! banshee#Info()
  let cmd = "banshee --query-title --query-artist --query-album"
  let result = split(system(cmd), '\n')
  let msg = ''
  for entry in result
    let entries = split(entry, ':')
    if(index(result, entry) == min(result))
      let msg .= entries[1]
    else
      let msg .= ' |' . entries[1]
    endif
  endfor

  echohl ErrorMsg
  echomsg msg
endfunction

function! banshee#Information(text)
  return 1
endfunction

function! banshee#Play()
  let cmd = "banshee --play"
  let result = system(cmd)
  echohl MoreMsg
  call banshee#Information('Start playing')
endfunction

function! banshee#Pause()
  let cmd = "banshee --pause"
  let result = system(cmd)
  echohl WarningMsg
  echom "Pause playing"
  echohl Normal
endfunction

function! banshee#Toggle()
  let toggle = system("banshee --toggle-playing")

  let status = "banshee --query-last-state"
  let result = split(split(system(status), '\n')[0], ': ')
  if(result[1] == 'paused')
    echohl MoreMsg
    call banshee#Information('Start playing')
  else
    echohl WarningMsg
    echom "Stop playing"
  endif
  echohl Normal
endfunction

function! banshee#Stop()
  let cmd = "banshee --stop"
  let result = system(cmd)
  echohl WarningMsg
  echom "Stop playing"
  echohl Normal
endfunction

function! banshee#StopWhenFinished()
  let cmd = "banshee --stop-when-finished"
  let result = system(cmd)
  echomsg "banshee will stop after finishing the current song"
endfunction

function! banshee#Duration()
  let playtime = "banshee --query-position --query-duration"
  let result = split(system(playtime), '\n')
  for information in result
    let informationEntry = split(information, ':')
    if(informationEntry[0] == 'position')
      let time = informationEntry[1]
    else
      let duration = informationEntry[1]
    endif
  endfor
  echom "Current playtime: " . str2nr(time) . "/" . str2nr(duration)
endfunction

function! banshee#SetVolume(level)
  let cmd = "banshee --set-volume=" . a:level
  let result = system(cmd)
  echomsg "Set volume to " . a:level
endfunction


function! banshee#test()
  echomsg "Test"
  return 'Test'
endfunction

function! banshee#SetPosition(position)
  let cmd = "banshee --set-position=" . a:position
  let result = system(cmd)
endfunction

function! banshee#SetRating(rating)
  let cmd = "banshee --set-rating=" . a:rating
  let result = system(cmd)
  echomsg "[banshee] Set rating to " . a:rating
endfunction

function! banshee#Show()
  let cmd = "banshee --show"
  let result = system(cmd)
endfunction

function! banshee#Hide()
  let cmd = "banshee --hide"
  let result = system(cmd)
endfunction

function! banshee#Fullscreen()
  let cmd = "banshee --fullscreen"
  let result = system(cmd)
endfunction

function! banshee#ImportMedia()
  let cmd = "banshee --show-import-media"
  let result = system(cmd)
endfunction

function! banshee#OpenLocation()
  let cmd = "banshee --show-open-location"
  let result = system(cmd)
endfunction

function! banshee#ShowPreferences()
  let cmd = "banshee --show-preferences"
  let result = system(cmd)
endfunction
