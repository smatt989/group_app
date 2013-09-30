GroupApp::Application.routes.draw do

  resources :users, only: [:show, :index]
  resources :rooms, only: [:new, :create, :index, :show, :update]
  resources :posts, only: [:create]
  resources :room_connections, only: [:create, :destroy]

  root to: 'static_pages#home'
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
  match "/rooms/:id" => "rooms#show", :as => :room
  match "rooms/new" => "rooms#new"
end
