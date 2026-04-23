Rails.application.routes.draw do
  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Sidekiq dashboard
  mount Sidekiq::Web => "/sidekiq"

  namespace :api do
    resources :insurance_policies, only: [ :index, :show, :create ]
    post "policies/:policy_id/purchase", to: 'purchases#create'
  end
end