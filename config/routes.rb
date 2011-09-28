Schock::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :chocolates
  get "home/index"
  root :to => 'home#index'
end
