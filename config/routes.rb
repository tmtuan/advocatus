Rails.application.routes.draw do

  get 'educators/index'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'educators#index'

  get 'mentors', to: 'mentors#index'

  authenticate :user do
    resources :educators, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :educators, only: [:index, :show] do
    member do
     put 'like', to: 'educators#upvote'
    end
   end

  get 'mentor_list', to:'educators#list'
  get 'mentorship', to:'educators#request_mentorship'

end
