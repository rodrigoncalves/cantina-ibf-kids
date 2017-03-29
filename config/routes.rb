Rails.application.routes.draw do
  root 'home#index'

  resources :teams
  resources :kids

end
