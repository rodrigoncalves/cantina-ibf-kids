Rails.application.routes.draw do
  root 'kids#index'

  resources :kids
  resources :teams

end
