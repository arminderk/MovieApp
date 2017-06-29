Rails.application.routes.draw do

  root 'new#index'
  #get 'new/index'
  
  match ':controller(/:action(:/id))', :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
