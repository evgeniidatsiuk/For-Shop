Rails.application.routes.draw do
  get 'repairs/index'
  get 'repairs/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'deliveries#index'
  resources :deliveries, only: %i[index show]
  resources :repairs,    only: %i[index show]
end
