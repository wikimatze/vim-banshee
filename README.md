# vim-banshee

A Vim wrapper for the [banshee player](http://banshee.fm/ "banshee player"). Trying out the examples of [Ben Klein's](https://twitter.com/fifthposition "Ben Klein") book [The VimL Primer: Edit Like a Pro with Vim Plugins and Scripts](https://pragprog.com/book/bkviml/the-viml-primer "The VimL Primer: Edit Like a Pro with Vim Plugins and Scripts").


# Installation

- [vim-plug](https://github.com/junegunn/vim-plug)
  1. Add `Plug 'wikimatze/vim-banshee.vim'` to .vimrc
  2. Run `:PlugInstall`

You can also use a similar tool such [NeoBundle](https://github.com/Shougo/neobundle.vim "NeoBundle"), [Pathogen](https://github.com/tpope/vim-pathogen "Pathogen"),
[Vim-Addon-Manager](https://github.com/MarcWeber/vim-addon-manager "Vim-Addon-Manager") or [Vundle](https://github.com/gmarik/Vundle.vim "Vundle")


# Usage and functions

- `:BansheeNext`: Play the next song.
- `:BansheePrevious`: Play the previous song.
- `:BansheeRestart`: Restart the currently played song.
- `:BansheeInfo`: Print the title, composer and album of the current song.
- `:BansheePlay`: Start playing the current song.
- `:BansheePause`: Stop playing the current song.
- `:BansheeToggle`: Start/stop playing the current song.
- `:BansheeStop`: Stop playing the current song and don't save the position in the song.
- `:BansheeStopWhenFinished`: Finish the current song and when this is finished, stops playing the next one.
- `:BansheeDuration`: Shows the current and total length of the current song.
- `:BansheeSetVolume {number}`: If {number} is 100 then it's maxium and 0 stands for mute
- `:BansheeSetPosition {number}`: Set the position in seconds.
- `:BansheeSetRating {number}`: Set the rating of the current song. {number} can be from 0 (very bad) to 5 (very good)
- `:BansheeShow`: Display the banshee UI.
- `:BansheeHide`: Hide the banshee program.
- `:BansheeFullscreen`: Display the banshee UI in fullscreen.
- `:BansheeImportMedia`: Opens the dialog to import files to the local library.
- `:BansheeOpenLocation`: Opens the dialog to import a single resource.
- `:BansheePreferences`: Opens the settings of banshee.


# Run the tests

In order to run the tests you need to have [banshee](http://banshee.fm/ "banshee") and [vader.vim](https://github.com/junegunn/vader.vim "vader.vim") installed.
Start `banshee` import the songs in the `test/fixtures` folder, start playing the first song `Crystal`, start `vim` with the `banshee.vader` file and run `:Vader`.


# Credits

The songs are from [Professor Kliq](http://www.professorkliq.com/ "Professor Kliq") album [Curriculum Vitae](https://soundcloud.com/professorkliq/sets/curriculum-vitae "Curriculum Vitae").

