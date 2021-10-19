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
  resources :customers, only: [:show, :edit, :update, :destroy]
  resources :myitems, only: [:new, :create, :edit, :update, :destroy]
  resources :items, only: [:index, :show] do
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :contacts, only: [:new, :create]
  post 'contacts/confirm' => 'contacts#confirm'
  post 'contacts/back' => 'contacts#back'
  get 'done' => 'contacts#done'
  
  
  
  # admin
  namespace :admins do
    resources :customers, only: [:index, :show, :edit, :update, :destroy]
    resources :items, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
      resources :posts, only: [:new, :create, :edit, :update, :destroy]
    end
  end

  get '/admin/homes/top' => 'admins/homes#top'
  get '/search', to: 'searches#search'
  get '/admins/search', to: 'admins/searches#search'
  

end
