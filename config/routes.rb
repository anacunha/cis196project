Myapp::Application.routes.draw do
  get "pages/home"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :games

  resources :video_game_consoles

  root :to => 'pages#home'
end
