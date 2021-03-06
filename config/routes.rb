# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :states, only: %i[index show]

      resources :zip_codes, only: %i[index]

      get '/states/:id/municipalities', to: 'states#municipalities'
      resources :municipalities, only: %i[index show]

      resources :cities, only: %i[index show]
    end
  end
end
