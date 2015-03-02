function! banshee#DisplayPlaylist()
  let banshee = "banshee --query-album --query-artist && banshee --query-album --query-artist"
  let playlist = split(system(banshee), '\n')

  for track in playlist
    call append(line('$'), track)
  endfor
endfunction

function! banshee#PlayNextSong()
  let next_song = "banshee --next && banshee --query-title"
  let result = split(system(next_song))
  let message = '[banshee] NOW PLAYING: ' . join(result[1:-1], ' ')
  echomsg message
endfunction

function! banshee#PlayPreviousSong()
  let next_song = "banshee --previous && banshee --query-title"
  let result = split(system(next_song))
  let message = '[banshee] NOW PLAYING: ' . join(result[1:-1], ' ')
  echomsg message
endfunction
