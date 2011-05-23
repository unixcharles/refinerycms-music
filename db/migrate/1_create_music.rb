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

    load(Rails.root.join('db', 'seeds', 'music.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "music"})

    Page.delete_all({:link_url => "/music"})

    drop_table :songs
    drop_table :music_settings
  end

end
