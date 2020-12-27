Rails.application.routes.draw do
  devise_for :users, # この行にカンマを追加
    controllers: { registrations: 'registrations' } # この行を追加

  root 'top#index'

  resources :users, only: [:show]
end