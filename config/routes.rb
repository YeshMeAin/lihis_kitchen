Rails.application.routes.draw do
  devise_for :admin_users
  get "up" => "rails/health#show", as: :rails_health_check

  root 'menu#index'
  namespace :admin do
    root 'dashboard#index'

    devise_for :admin_users, skip: [:registrations, :sessions], path: '', path_names: { sign_in: 'sign_in', sign_out: 'logout' }, controllers: {
      sessions: 'admin/sessions'
    }

    as :admin_user do
      get 'sign_in', to: 'sessions#new', as: :new_admin_user_session
      post 'sign_in', to: 'sessions#create', as: :admin_user_session
      delete 'logout', to: 'sessions#destroy', as: :destroy_admin_user_session
    end
  end
end
