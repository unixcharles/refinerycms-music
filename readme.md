# Music engine for Refinery CMS.

## Description

This is a plugin that could help you if you need to build a website for a band.
Encourage kids to do music, build their web site for free if you can!

## Features:

Its a music section, with list of tunes, and each song view has:

- A description
- Name of the artist/song title
- player.swf from wpaudioplayer, no javascript dependancy
- A link to the MP3 file (that you can disable)

The admin interface allow you to create new song and change to colors/settings/size of the flash player.

## Install

    # Gemfile    
    gem 'refinerycms-music'

    rails generate refinerycms_music
    rake db:migrate

## Todo:

- Change Admin::MusicSettingsController to support i18n 
- Move the setting to a simple YML file?
- Integration testing

## Credit

[y0ng](https://github.com/y0ng) for porting the engine to RefineryCMS 9.9

It use the player.swf from [wpaudioplayer](http://wpaudioplayer.com/standalone)