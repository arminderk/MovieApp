Rails.application.routes.draw do

  devise_for :users
  
  root 'movies#index'
  
  resources :movies do 
    resources :comments, only: [:create]
  end
  
  resources :theatres
  
  resources :show_times, only: [:index]
  
  match ':controller(/:action(/:id))', :via => [:get, :post]
  
end
