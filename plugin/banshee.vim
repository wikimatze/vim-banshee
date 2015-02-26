function! OpenBanshee()
  let cmd = "banshee --query-album --query-artist"
  echomsg system(cmd)[:-2]
endfunction
