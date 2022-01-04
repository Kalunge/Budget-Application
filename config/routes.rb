Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root to: 'groups#index', as: :authenticated_root
    end
    unauthenticated do
      root 'splash#index', as: :unauthenticated_root
    end
  end
  
  resources :groups
  resources :entities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
