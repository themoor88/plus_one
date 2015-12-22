Rails.application.routes.draw do
  root "pages#home"
  resources :users do
    resources :reputations
  end

  resources :events do
    resources :rsvps, only: [:create, :index] do
      member do
        post "accept"
        post "decline"
        post "seen"
      end
    end
    resources :reviews
  end

  resources :friendships, only: [:new, :create, :index] do
    member do
      post "accept"
      post "decline"
      post "seen"
    end
  end

  resources :notifications

  resources :user_sessions, only: [:new, :create, :destroy]

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'my_events' => 'events#my_events'
  get 'my_friends' => 'friendships#my_friends'
end
