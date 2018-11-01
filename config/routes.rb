Rails.application.routes.draw do
    require 'sidekiq/web'
    resources :tasks
    resources :lists
    get 'export', to: 'exportable#export'
    devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'lists#index'
    mount Sidekiq::Web => '/sidekiq'
end
