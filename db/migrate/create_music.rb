class CreateMusic < ActiveRecord::Migration

  def self.up

    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.boolean :published, :default => true
      t.boolean :show_download_link, :default => true
      t.integer :resource_id
      t.integer :position

      t.timestamps
    end
    
    add_index :songs, :id
    add_index :songs, [:id, :published]

    create_table :music_settings do |t|
      t.string   :name
      t.boolean  :value
      t.string   :color
      t.integer   :size
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
    
    add_index :music_settings, :id
    add_index :music_settings, :name
    
    # colors
    MusicSetting.create(:name => "bg", :color => "E5E5E5", :description => "Background")
    MusicSetting.create(:name => "leftbg", :color => "CCCCCC", :description => "Speaker icon/Volume control background")
    MusicSetting.create(:name => "lefticon", :color => "333333", :description => "Speaker icon")
    MusicSetting.create(:name => "voltrack", :color => "F2F2F2", :description => "Volume track")
    MusicSetting.create(:name => "volslider", :color => "666666", :description => "Volume slider")
    MusicSetting.create(:name => "rightbg", :color => "B4B4B4", :description => "Play/Pause button background")
    MusicSetting.create(:name => "rightbghover", :color => "999999", :description => "Play/Pause button background (hover state)")
    MusicSetting.create(:name => "righticon", :color => "333333", :description => "Play/Pause icon")
    MusicSetting.create(:name => "righticonhover", :color => "FFFFFF", :description => "Play/Pause icon (hover state)")
    MusicSetting.create(:name => "loader", :color => "009900", :description => "Loading bar")
    MusicSetting.create(:name => "track", :color => "FFFFFF", :description => "Loading/Progress bar track backgrounds")
    MusicSetting.create(:name => "tracker", :color => "DDDDDD", :description => "Progress track")
    MusicSetting.create(:name => "border", :color => "CCCCCC", :description => "Progress bar border")
    MusicSetting.create(:name => "skip", :color => "666666", :description => "Previous/Next skip buttons, only if you modify the plugin to build a playlist.")
    MusicSetting.create(:name => "text", :color => "333333", :description => "Text")

    # size
    width = MusicSetting.create(:name => "width", :size => 290, :description => "Width of the player")

    # Boolean
    MusicSetting.create(:name => "autostart", :value => true, :description => "if true, player starts automatically")
    MusicSetting.create(:name => "loop_track", :value => false, :description => "if true, player loops")
    MusicSetting.create(:name => "animation", :value => false, :description => "if false, player is always open")
    MusicSetting.create(:name => "remaining", :value => false, :description => "if true, shows remaining track time rather than ellapsed time")
    MusicSetting.create(:name => "noinfo", :value => false, :description => "if true, disables the track information display")

    load(Rails.root.join('db', 'seeds', 'music.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "music"})

    Page.delete_all({:link_url => "/music"})

    drop_table :songs
    drop_table :music_settings
  end

end
