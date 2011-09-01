Schock::Application.routes.draw do
  resources :chocolates
  get "home/index"
  root :to => 'home#index'
end
