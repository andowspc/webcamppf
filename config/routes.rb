Rails.application.routes.draw do
  
  # devise
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  
  
  root to: 'homes#top'
  
  get '/homes/about' => 'homes#about'
  
  # customer
  resources :customers, only: [:show, :edit, :update]
  resources :myitems, only: [:edit]
  resources :items, only: [:index, :show] do
    
    resource :favorites, only: [:create, :destroy]
    
  end
  
  # admin
  namespace :admins do
    resources :customers, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    resources :items, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
     resources :posts, only: [:new, :create, :edit, :update, :destroy]
    end
  end

  get '/admin/homes/top' => 'homes#top' 

end
