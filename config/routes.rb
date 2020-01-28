# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  namespace :api do
    namespace :v1 do
      # resources :posts, only: %i[index create show update destroy]
    end
  end
  root 'hello_world#index'
end
