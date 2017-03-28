Rails.application.routes.draw do
  resources :teams
  resources :kids
  root 'kids#index'

end
