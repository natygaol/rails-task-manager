Rails.application.routes.draw do
  # See all task // .all
  get 'tasks', to: 'tasks#index'
  # [GET] Create a task // new  = 1 request
  get 'tasks/new', to: 'tasks#new'
  # See details of a task // por id // se cambia porque tiene el path dinamic
  get 'tasks/:id', to: 'tasks#show', as: :task
  # [POST] the parameters to create a new task = 1 request
  post 'tasks', to: 'tasks#create'
  # Update a task // edit = 1 request
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # Update // Patch paso 1.1
  patch 'tasks/:id', to: 'tasks#update'
  # Destroy a task
  delete 'task/:id', to: 'tasks#destroy', as: :destroy_task
end
