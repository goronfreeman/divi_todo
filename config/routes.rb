Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#home'

  get ':action' => 'static_pages#:action'
end
