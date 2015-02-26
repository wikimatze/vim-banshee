function! OpenBanshee()
  let cmd = "banshee --query-album --query-artist"
  echom system(cmd)[:-2]
endfunction
