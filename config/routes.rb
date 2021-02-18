require 'sidekiq/web'

Rails.application.routes.draw do
  resources :posts
  get 'profiles/index'
  mount Sidekiq::Web, at: "/sidekiq" if Rails.env.development?

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  resources :profiles, only: [:index, :edit, :update, :show]
  resources :users

  root to: "profiles#show"
end
