Rails.application.routes.draw do

  devise_for :admins
  namespace :admins_backoffice do
    resources :eventos do
      collection do
        get 'inscritos'
      end
    end
    resources :parceiros
  end

  namespace :users_backoffice do
    get 'eventos/evento', :defaults => { :format => :json }
    get 'eventos/programacao', :defaults => { :format => :json }
  end
  root "admins_backoffice/eventos#index"
end
