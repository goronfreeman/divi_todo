Rails.application.routes.draw do
  devise_for :users

  root 'lists#index'

  get ':action' => 'static_pages#:action'
  get 'home', to: 'static_pages#home', as: :home

  resources :lists
end
