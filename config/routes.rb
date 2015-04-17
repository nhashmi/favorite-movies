Rails.application.routes.draw do
root 'favorites#index'
  devise_for :users, :path => 'accounts'
    resources :users do
      resources :favorites
    end
  end
