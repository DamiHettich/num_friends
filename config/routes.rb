Rails.application.routes.draw do
  devise_for :users
  resources :num2s

  root 'num2s#index' 

  get 'home/about'
  get 'num2s/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
