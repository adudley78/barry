Rails.application.routes.draw do
  resources :stacks
  get 'site/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'stacks#index'
end
