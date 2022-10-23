Rails.application.routes.draw do
  
  
  
  devise_for :users
  #get "homes#top"
  #root to: "homes#top"
 
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  
  
  resources :users, only: [:show, :edit, :update]
  get '/', to: 'home#top'
  get 'homes/about', to: 'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
