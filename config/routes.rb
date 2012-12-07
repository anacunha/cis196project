Myapp::Application.routes.draw do
  
  match '/profile', :controller => 'users', :action => 'profile'
  
  match '/games/playstation', :controller => 'games', :action => 'playstation'
  match '/games/xbox', :controller => 'games', :action => 'xbox'
  match '/games/wii', :controller => 'games', :action => 'wii'
  match '/games/others', :controller => 'games', :action => 'others'
  
  get "pages/home"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :games, :video_game_consoles, :users

  root :to => 'pages#home'
end
