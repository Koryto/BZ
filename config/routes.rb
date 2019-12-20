Rails.application.routes.draw do
  get 'demo/new'
  get 'demo/show'
  get 'demo/index'
  get 'assignments/index'
  get 'assignments/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
