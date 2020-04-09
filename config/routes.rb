Rails.application.routes.draw do
  resources :parceiros

  root "parceiros#index"
end
