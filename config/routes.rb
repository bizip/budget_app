# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'groups#index'
  resources :groups, only: %i[index new create destroy]
  resources :entities, only: %i[index new create destroy]
end
