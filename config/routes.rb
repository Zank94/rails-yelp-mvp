Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
    collection do
      get 'research', to: "restaurants#research"
    end
  end
  root to: "restaurants#index"
end
