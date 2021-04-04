Rails.application.routes.draw do
  root 'sessions#new'
  resources :stories

  get 'users/new', to: 'users#new', as: 'u_n'
  post 'users/create', to: 'users#create', as: 'u_c'

  get 'sessions/new', to: 'sessions#new', as: 's_n'
  post 'sessions/create', to: 'sessions#create', as: 's_c'
  delete 'sessions/delete', to: 'sessions#destroy', as: 's_d'
  
  get 'users/show/:id', to: 'users#show', as: 'u_s'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
