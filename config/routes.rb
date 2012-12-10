Myapp::Application.routes.draw do
  
  match '/profile', :controller => 'users', :action => 'profile'
  
  match '/games/playstation3', :controller => 'games', :action => 'playstation3'
  match '/games/xbox360', :controller => 'games', :action => 'xbox360'
  match '/games/wii', :controller => 'games', :action => 'wii'
  match '/games/others', :controller => 'games', :action => 'others'
  
  get "pages/home"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :games, :platforms, :users, :game_retailers, :ownerships

  root :to => 'pages#home'
end
