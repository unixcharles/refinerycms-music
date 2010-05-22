ActionController::Routing::Routes.draw do |map|
  map.resources :songs, :as => 'music'

  map.namespace(:admin, :path_prefix => 'refinery') do |admin|
    admin.resources :songs, :as => 'music'
    admin.resources :music_settings
  end
end
