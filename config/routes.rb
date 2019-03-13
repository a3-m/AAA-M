Rails.application.routes.draw do
  
  devise_for :users
  resources :songs do
    resources :comments
    resources :likes
  end


  get "songs/catogrie/:catogrie_id", to:"songs#index", as: "catogrie"
 
  root 'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
