Rails.application.routes.draw do
  resources :stories
  resources :stacks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'stacks#index'
end
