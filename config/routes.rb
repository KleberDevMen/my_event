Rails.application.routes.draw do

  devise_for :admins

  resources :admins_entity, only: [:index]
  resources :eventos
  resources :parceiros

  root "admins_entity#index"
end
