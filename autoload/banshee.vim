function! banshee#DisplayPlaylist()
  let banshee = "banshee --query-album --query-artist && banshee --query-album --query-artist"
  let playlist = split(system(banshee), '\n')

  for track in playlist
    call append(line('$'), track)
  endfor
endfunction
