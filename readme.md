# Music engine for Refinery CMS.

## Description
This is a plugin that could help you if you need to build a website for a band. 

Encourage kids to do music, build their web site for free if you can!

Its also an example if you want to create a plugin with a Resource/Image field.

## Features:

Its a music section, with list of tunes, and each song view has:

- A description
- Name of the artist/song title
- Flash player (it use dewplayer-mini.swf from dewplayer, no javascript dependancy) 
- A link to the MP3 file (that you can disable)

The admin interface allow you to create new song and change to colors/settings/size of the flash player.

## Need to know

This plugin is not finish some problem with route need to be fix

## Credit

Fork of the project of unixcharles (Charles Barbier)
https://github.com/unixcharles/refinerycms-music

It use the dewplayer.swf from this project:
http://www.alsacreations.fr/dewplayer-en.html

And a color picker right here:
http://www.eyecon.ro/colorpicker/

## How to build this engine as a gem

    cd vendor/engines/music
    gem build refinerycms-music.gempspec
    gem install refinerycms-music.gem
    
    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-music.gem
