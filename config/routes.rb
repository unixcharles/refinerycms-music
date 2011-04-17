Refinery::Application.routes.draw do
  resources :music, :as => :songs, :controller => :songs
  #resources :songs, :as => :music
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :music_settings do
      member do
        match :toggle
      end
    end
    resources :music, :as => :songs, :controller => :songs, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
