Rails.application.routes.draw do

  resource :home, only: [:index]

  resource :search, only: [:create, :show]

  devise_for :users

  root 'home#index'
end
