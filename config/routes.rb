Rails.application.routes.draw do

  root 'static_pages#home'

  get '/computer', to: 'static_pages#computer'
  resources :users, only: [:show] #for user stats
  resources :leaderboards, only: [:index]#for leaderboard
  resources :matches

  resources :application, only: [:create]

  get '/signout', to: 'sessions#destroy', :as => "signout"
  get 'auth/:provider/callback', to: 'sessions#create'
  

end
