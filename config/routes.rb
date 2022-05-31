# frozen_string_literal: true

Rails.application.routes.draw do
  resources :child__models
  namespace :admin do
    resources :parent_models
  end
  scope :admin do
    resources :koko
  end
  resources :examples
  resources :book
  resources :lol
  get '/bewks', to: 'book#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
