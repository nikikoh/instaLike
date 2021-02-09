require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web, at: "/sidekiq" if Rails.env.development?

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

  resources :article
  resources :user
end
