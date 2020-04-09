Rails.application.routes.draw do
  resources :eventos do
    member do
      get 'dias'
    end
  end
  devise_for :admins
  resources :parceiros

  root "parceiros#index"
end
