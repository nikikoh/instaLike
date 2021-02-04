Rails.application.routes.draw do
  devise_for :users, :controller => {
    :sessions      => 'users/sessions',
    :registrations => 'users/registrations'
  }

  resources :article
  resources :user
end
