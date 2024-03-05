Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Get toutes les tasks (index)
  get '/tasks' => 'tasks#index'
  # Creer une task
  get '/tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create'
  # update une task
  get '/tasks/:id/edit' => 'tasks#edit', as: :tasks_edit
  patch '/tasks/:id' => 'tasks#update'
  # delete une task
  delete '/tasks/:id' => 'tasks#destroy'
  # Get une tache (show)
  get '/tasks/:id' => 'tasks#show', as: :task
end
