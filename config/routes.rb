Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :cars, only: [:index, :create, :show, :destroy]
    end
  end
end
