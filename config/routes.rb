Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'contents#index'
  get 'contents/pref1'
  get 'contents/pref2'
  get 'contents/pref3'
  get 'contents/pref4'
  get 'contents/pref5'
  resources :users, only: [:edit, :update, :index, :show]
  resources :contents, only: [:index, :new, :create, :show, :edit, :destroy] do
    resources :likes, only: [:create, :destroy]
  end
end