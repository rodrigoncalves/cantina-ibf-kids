Rails.application.routes.draw do
  root 'kids#index'

  get 'acampantes/novo', to: 'kids#new', as: :new_kid
  get 'acampantes/:id/editar', to: 'kids#edit', as: :edit_kid
  resources :kids, path: 'acampantes', except: ['new', 'edit']

  get 'equipes/novo', to: 'teams#new', as: :new_team
  get 'equipes/:id/editar', to: 'teams#edit', as: :edit_team
  resources :teams, path: 'equipes', except: ['new', 'edit']
end
