Rails.application.routes.draw do

  root "pages#index"
  get "logout" => "sessions#destroy", as: :logout

  resources :users
  resources :sessions
end
