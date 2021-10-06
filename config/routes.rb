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
  resources :items, only: [:index, :show, :edit, :update] do
    
    resource :favorites, only: [:create, :destroy]
    resources :posts, only: [:create, :destroy]
    
  end
  
  # admin
  namespace :admin do
    resources :customers, only: [:index, :show, :edit, :update, :destroy]
    resources :items, only: [:index, :show, :edit, :update, :destroy] do
     resources :posts, only: [:index, :show, :edit, :update, :destroy]
    end
  end

  get '/admin/homes/top' => 'homes#top' 

end
