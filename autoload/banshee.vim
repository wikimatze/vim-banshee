function! banshee#DisplayPlaylist()
  let banshee = "banshee --query-album --query-artist && banshee --query-album --query-artist"
  let playlist = split(system(banshee), '\n')

  for track in playlist
    call append(line('$'), track)
  endfor
endfunction

function! banshee#PlayNextSong()
  let next_song = "banshee --next && banshee --query-title --query-artist --query-album"
  let result = split(system(next_song), '\n')
  let msg = ''
  for entry in result
    let entries = split(entry, ':')
    if(index(result, entry) == min(result))
        let msg = msg . entries[1]
    else
      let msg = msg . ' |' . entries[1]
    endif
  endfor

  let message = '[banshee] NOW PLAYING: ' . msg
  echomsg message
endfunction

function! banshee#PlayPreviousSong()
  let next_song = "banshee --previous && banshee --query-title --query-artist --query-album"
  let result = split(system(next_song), '\n')
  let msg = ''
  for entry in result
    let entries = split(entry, ':')
    if(index(result, entry) == min(result))
      let msg .= entries[1]
    else
      let msg .= ' |' . entries[1]
    endif
  endfor

  let message = '[banshee] NOW PLAYING: ' . msg
  echomsg message
endfunction

function! banshee#PlayToggle()
  let toggle = system("banshee --toggle-playing")

  let status = "banshee --query-last-state"
  let result = split(split(system(status), '\n')[0], ': ')
  if(result[1] == 'paused')
    echohl MoreMsg
    echom "Start playing"
  else
    echohl WarningMsg
    echom "Stop playing"
  endif
  echohl Normal
endfunction

function! banshee#SongDuration()
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


