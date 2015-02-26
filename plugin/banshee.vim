function! OpenBanshee()
  let banshee = "banshee --query-album --query-artist"
  let playlist = split(system(banshee), '\n')
  echom string(playlist)
endfunction

