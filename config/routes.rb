Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Create
  get 'task/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'
  patch 'tasks/:id', to: 'tasks#update'

  # Delete
  delete 'tasks/:id', to: 'tasks#destroy', as: 'task_delete'
end
