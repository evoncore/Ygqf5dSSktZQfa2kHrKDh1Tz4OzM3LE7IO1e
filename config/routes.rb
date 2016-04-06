Rails.application.routes.draw do

  # Static Pages

  root 'static_pages#home'

  match '/help', to: 'static_pages#help',       via: 'get'

  match '/about', to: 'static_pages#about',     via: 'get'

  match '/contact', to: 'static_pages#contact', via: 'get'

  match '/news', to: 'static_pages#news',       via: 'get'

  # Users

  resources :users

  match '/sign_up', to: 'users#new',            via: 'get'
  match '/users', to: 'users#index',            via: 'get'

  # Sessions

  resources :sessions, only: [:new, :create, :destroy]

  match '/sign_in', to: 'sessions#new',         via: 'get'
  match '/sign_out', to: 'sessions#destroy',    via: 'delete'

end
