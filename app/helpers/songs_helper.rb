module SongsHelper
  def player(music)
    flashvar = []

    # colors
    flashvar << "bg=#{MusicSetting.bg}" unless MusicSetting.bg == 'E5E5E5'
    flashvar << "leftbg=#{MusicSetting.bg}" unless MusicSetting.leftbg == 'CCCCCC'
    flashvar << "lefticon=#{MusicSetting.lefticon}" unless MusicSetting.lefticon == '333333'
    flashvar << "voltrack=#{MusicSetting.voltrack}" unless MusicSetting.voltrack == 'F2F2F2'
    flashvar << "volslider=#{MusicSetting.volslider}" unless MusicSetting.volslider == '666666'
    flashvar << "rightbg=#{MusicSetting.rightbg}" unless MusicSetting.rightbg == 'B4B4B4'
    flashvar << "rightbghover=#{MusicSetting.rightbghover}" unless MusicSetting.rightbghover == '999999'
    flashvar << "righticon=#{MusicSetting.righticon}" unless MusicSetting.righticon == '333333'
    flashvar << "righticonhover=#{MusicSetting.righticonhover}" unless MusicSetting.righticonhover == 'FFFFFF'
    flashvar << "righticonhover=#{MusicSetting.righticonhover}" unless MusicSetting.righticonhover == 'FFFFFF'
    flashvar << "loader=#{MusicSetting.loader}" unless MusicSetting.loader == '009900'
    flashvar << "track=#{MusicSetting.track}" unless MusicSetting.track == 'FFFFFF'
    flashvar << "tracker=#{MusicSetting.tracker}" unless MusicSetting.tracker == 'DDDDDD'
    flashvar << "border=#{MusicSetting.border}" unless MusicSetting.border == 'CCCCCC'
    flashvar << "skip=#{MusicSetting.skip}" unless MusicSetting.skip == '666666'
    flashvar << "text=#{MusicSetting.text}" unless MusicSetting.text == '333333'
    # Boolean
    flashvar << "autostart=yes" if MusicSetting.autostart == true
    flashvar << "loop=yes" if MusicSetting.loop_track == true
    flashvar << "animation=no" if MusicSetting.animation == false
    flashvar << "remaining=yes" if MusicSetting.remaining == true
    flashvar << "noinfo=yes" if MusicSetting.noinfo == true
    # size
    flashvar << "width=#{MusicSetting.width}"

    if music.respond_to? :each
      artists = []
      titles = []
      files = []
      music.each do |song|
        if song.resource
          artists << song.title
          titles << song.artist
          files << song.resource.url
        end
      end
      flashvar << "titles=#{CGI::escape titles.join(',')}"
      flashvar << "artists=#{CGI::escape artists.join(',')}"
      flashvar << "soundFile=#{CGI::escape files.join(',')}"
    else
      # file info
      flashvar << "titles=#{CGI::escape(music.title)}"
      flashvar << "artists=#{CGI::escape(music.artist)}"
      flashvar << "soundFile=#{CGI::escape(music.resource.url)}"
    end


    raw <<-EOF
    <object type="application/x-shockwave-flash" data="/player.swf" height="84px" width="#{MusicSetting.width}"> 
      <param name="movie" value="/player.swf" /> 
      <param name="FlashVars" value="#{flashvar.join('&')}" /> 
      <param name="quality" value="high" /> 
      <param name="menu" value="true" /> 
      <param name="wmode" value="transparent" /> 
    </object>
    EOF
  end
end