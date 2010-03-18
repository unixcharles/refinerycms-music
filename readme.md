RefineryCMS-Music
================

Description:
------------

This is a plugin that could help you if you need to build a website for a band. 

Encourage kids to do music, build their web site for free if you can!

Its also an example if you want to create a plugin with a Resource/Image field.

Features:
---------

Its a music section, with list of tunes, and each song view has:

-A description
-Name of the artist/song title
-Flash player (it use player.swf from wpaudioplayer, no javascript dependancy) 
-A link to the MP3 file (that you can disable)

The admin interface allow you to create new song and change to colors/settings/size of the flash player.

Support for MP3 only, you may want to hook another js/flash player anyway.

Installation (as a plugin)
--------------------------
> script/plugin install git@github.com:unixcharles/refinerycms-music.git

> rake refinery:music:install

& run the migration

> rake db:migrate

Credit
------

It use the player.swf from this project:
http://wpaudioplayer.com/standalone

I had a look at this code before I write the plugin:
http://github.com/GavinM/mp3_player

And a color picker right here:
http://www.eyecon.ro/colorpicker/