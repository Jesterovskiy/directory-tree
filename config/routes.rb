# frozen_string_literal: true

Rails.application.routes.draw do
  root 'directories#index'

  resources :directories, except: :destroy do
    get :delete, on: :member
  end
end
