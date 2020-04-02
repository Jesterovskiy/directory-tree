# frozen_string_literal: true

Rails.application.routes.draw do
  root 'directories#index'

  resources :directories
end
