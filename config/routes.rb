Rails.application.routes.draw do
  authenticated :user do
    root to: 'groups#index', as: :authenticated_root
  end

  root to: "splash#index"

  devise_for :users
  resources :groups
  resources :entities
end
