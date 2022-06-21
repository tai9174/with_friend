Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'pictures#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pictures do
    collection do
      post :confirm

    end
  end
end
