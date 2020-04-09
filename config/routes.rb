Rails.application.routes.draw do
  resources :eventos
  devise_for :admins
  resources :parceiros

  root "eventos#index"
end
