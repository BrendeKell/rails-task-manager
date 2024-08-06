Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'tasks' => 'tasks#index'
  get 'up' => 'rails/health#show', as: :rails_health_check
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new'
  get 'task/:id', to: 'tasks#show', as: 'task'
  get 'task/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'task/:id', to: 'tasks#update', as: 'update_task'
  delete 'task/:id', to: 'tasks#destroy', as: :destroy_task
end
