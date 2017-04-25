Rails.application.routes.draw do
  root 'kids#index'

  resources :teams, path: 'equipes'
  resources :kids, path: 'acampantes'
end
