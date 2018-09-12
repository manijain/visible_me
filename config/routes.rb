Rails.application.routes.draw do
  
  resources :communities, except: [:index] do 
    resources :posts, except: [:index]
  end
 
  post 'home/search', to: 'home#search_user', as: :search_user

  get 'friends/index'

  delete ':id/destroy', to: 'friends#destroy', as: :friends_destroy

  resources :friend_requests
  post ':user_id/follow_user', to: 'relationships#follow_user', as: :follow_user
  post ':user_id/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user

  get 'users/:user_id/profile', to: 'profiles#show', as: :profile

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', password: 'password', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'new' }
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
