Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :guests, only: [:show, :index] do
      resources :gifts, only: [:index]
    end
    resources :gifts, only: [:show]
    resources :invitations, only: [:index, :show]
    resources :parties, only: [:index, :show]
  end
end