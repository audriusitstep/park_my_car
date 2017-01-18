Rails.application.routes.draw do
  
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root 'welcome#index'

  post 'park_car', to: 'welcome#park_car', as: :park_car

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
