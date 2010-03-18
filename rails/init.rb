Refinery::Plugin.register do |plugin|
  plugin.title = "Music"
  plugin.description = "Manage Music"
  plugin.version = 1.0
  plugin.menu_match = /admin\/(music|songs|music_settings)/
end
