Rails.application.routes.draw do
  root 'pages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :deliveries, only: %i[index show]
  resources :repairs,    only: %i[index show]
end
