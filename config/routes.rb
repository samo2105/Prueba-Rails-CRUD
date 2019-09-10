Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get 'todos/list', to: 'todos#list', as: 'list'
  get 'todos/:id', to: 'todos#show'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit'
  patch 'todos/:id', to: 'todos#update', as: :todo
  delete 'todos/:id', to: 'todos#destroy'
  patch 'todos/:id/completed', to: 'completed_todos#completed', as: 'completed'
  # Método Patch para poder modificar completed como se desee
  root 'todos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
