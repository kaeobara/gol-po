Rails.application.routes.draw do
  devise_for :users
  root "golves#index"
  resources :golves do
    resources :comments, only: [:new, :create]
    resources :messages
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
