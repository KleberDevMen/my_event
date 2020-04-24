Rails.application.routes.draw do

  devise_for :admins
  namespace :admins_backoffice do
    resources :eventos
    resources :parceiros
  end

  namespace :users_backoffice do
    get 'eventos/evento'
    get 'eventos/programacao'
  end
  root "admins_backoffice/eventos#index"
end
