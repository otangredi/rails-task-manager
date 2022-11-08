Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix

  # Read all
  get '/tasks', to: 'tasks#index'

  # Create
  # 1. Provide the form
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # 2. Send the form
  post '/tasks', to: 'tasks#create'

  # Read one
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update
  # 1. Provide the form
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # 2. Send the form
  patch '/tasks/:id', to: 'tasks#update'

  # Destroy
  delete '/tasks/:id', to: 'tasks#destroy'
end
