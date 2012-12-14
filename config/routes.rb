Myapp::Application.routes.draw do
  
  match '/my/games', :controller => 'users', :action => 'games'
  match '/my/profile', :controller => 'users', :action => 'profile'
  
  match '/all_games', :controller => 'game_platforms', :action => 'index'
  match '/games/pc', :controller => 'game_platforms', :action => 'pc'
  match '/games/playstation3', :controller => 'game_platforms', :action => 'playstation3'
  match '/games/xbox360', :controller => 'game_platforms', :action => 'xbox360'
  match '/games/wii', :controller => 'game_platforms', :action => 'wii'
  match '/games/others', :controller => 'game_platforms', :action => 'others'
  
  get "pages/home"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :games, :platforms, :users, :game_retailers, :ownerships, :game_platforms

  root :to => 'pages#home'
end
