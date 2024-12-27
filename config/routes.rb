Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "museums#index"

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  resources :recommendations, only: [:index]
  get 'recommendations/load_content', to: 'recommendations#load_content', as: 'load_content'
  resources :reviews 
  resources :museums 
  resources :museums do
    resources :reviews 
    resource :favorites, only: [:create, :destroy]
  end
  resources :museums do
    resources :cafes, only: [:index]  # 美術館に紐づいたカフェ表示
  end
  get '/favorited', to: 'museums#favorited_museums'
  get '/autocomplete', to: 'museums#autocomplete'
  # プライバシーポリシー
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  get 'rule', to: 'static_pages#rule'
  # トップページ
  get 'top', to: 'top#index'
end
