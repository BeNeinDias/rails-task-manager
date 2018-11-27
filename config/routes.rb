Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # create one restaurant (need two steps)
  get '/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # edit one restaurant (need two steps)
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'
  # delete one restaurant
  delete 'tasks/:id', to: 'tasks#destroy'
end
