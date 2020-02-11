Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get 'posts/pref1'
  get 'posts/pref2'
  get 'posts/pref3'
  get 'posts/pref4'
  get 'posts/pref5'
  resources :users, only: [:edit, :update, :index, :show]
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
end