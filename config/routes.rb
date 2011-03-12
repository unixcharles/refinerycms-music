Refinery::Application.routes.draw do
  resources :music, :as => :songs, :controller => :songs

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :music_settings, :songs
    resources :music, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
