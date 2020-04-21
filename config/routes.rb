Rails.application.routes.draw do

  devise_for :admins

  resources :admins_entity, only: [:index]
  #resources :eventos
  resources :parceiros

  namespace :admins_backoffice do
    resources :eventos
    resources :parceiros
  end

  root "admins_entity#index"
end
