class MusicSetting < ActiveRecord::Base
    
  # colors
  def self.bg
    find_or_create_by_name("bg").color
  end
  def self.leftbg
    find_or_create_by_name("leftbg").color
  end
  def self.lefticon
    find_or_create_by_name("lefticon").color
  end
  def self.voltrack
    find_or_create_by_name("voltrack").color
  end
  def self.volslider
    find_or_create_by_name("volslider").color
  end
  def self.rightbg
    find_or_create_by_name("rightbg").color
  end
  def self.rightbghover
    find_or_create_by_name("rightbghover").color
  end
  def self.righticon
    find_or_create_by_name("righticon").color
  end
  def self.righticonhover
    find_or_create_by_name("righticonhover").color
  end
  def self.loader
    find_or_create_by_name("loader").color
  end
  def self.track
    find_or_create_by_name("track").color
  end
  def self.tracker
    find_or_create_by_name("tracker").color
  end
  def self.border
    find_or_create_by_name("border").color
  end
  def self.skip
    find_or_create_by_name("skip").color
  end
  def self.text
    find_or_create_by_name("text").color
  end  
  # size  
  def self.width
    find_or_create_by_name("width").size.to_s
  end
  # Boolean
  def self.autostart
    find_or_create_by_name("autostart").value 
  end
  def self.loop_track
    find_or_create_by_name("loop_track").value
  end
  def self.animation
    find_or_create_by_name("animation").value
  end
  def self.remaining
    find_or_create_by_name("remaining").value
  end
  def self.noinfo
    find_or_create_by_name("noinfo").value
  end

end
