Rails.application.routes.draw do
  get 'educators/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'mentors#index'

  get 'mentors', to: 'mentors#index'

  resources :educators


end
