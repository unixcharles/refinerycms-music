# Music engine for Refinery CMS.

## Description
This is a plugin that could help you if you need to build a website for a band. 

Encourage kids to do music, build their web site for free if you can!

Its also an example if you want to create a plugin with a Resource/Image field.

## Features:

Its a music section, with list of tunes, and each song view has:

- A description
- Name of the artist/song title
- You can choose your player
  - dewplayer-mini.swf from dewplayer, no javascript dependancy ( settings not work actually )
  - player.swf from wpaudioplayer, no javascript dependancy ( not work for me file not found)
- A link to the MP3 file (that you can disable)

The admin interface allow you to create new song and change to colors/settings/size of the flash player.

## Todo:

- Support settings of dewplayer
- Fix wpaudioplayer bug file not found

## Change log:

- Support rails 3 and latest version of refinerycms
- Support gem Installation using Bundler
- Use i18n for multilanguage support

## Credit

Fork of the project of unixcharles (Charles Barbier)
https://github.com/unixcharles/refinerycms-music

It use the dewplayer.swf from this project:
http://www.alsacreations.fr/dewplayer-en.html

And a color picker right here:
http://www.eyecon.ro/colorpicker/

It use the player.swf from this project: 
http://wpaudioplayer.com/standalone
