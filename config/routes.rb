Rails.application.routes.draw do

  get 'users', to: 'users#index'

  scope module: :site do
    root 'top#index'
    get 'mypage/:id/interests', to: 'mypage#interests', as: 'mypage_interests'
    get 'mypage/:id/favorites', to: 'mypage#favorites', as: 'mypage_favorites'
    get 'mypage/:id/recommends', to: 'mypage#recommends', as: 'mypage_recommends'
    get 'mypage/:id/histories', to: 'mypage#histories', as: 'mypage_histories'
    post 'my_interest', to: 'mypage#add_interest'
    post 'my_favorite', to: 'mypage#add_favorite'
    namespace :alcohols do
      get '', to: '#index'
      get ':alcohol_id', to: '#show', as: 'show', alcohol_id: /\d+/
      get 'reviews', to: 'review#index', as: 'review-index'
      get ':alcohol_id/reviews/new', to: 'review#new', as: 'review-new', alcohol_id: /\d+/
      get ':alcohol_id/reviews/:id/edit', to: 'review#edit', as: 'review-edit', alcohol_id: /\d+/, id: /\d+/
      post 'reviews/create/:alcohol_id', to: 'review#create', as: 'review-create', alcohol_id: /\d+/
      patch 'reviews/update/:id', to: 'review#update', as: 'review-update', id: /\d+/
      get 'search', to: '#search', as: 'search'
      get 'categories', to: 'category#index'
      get 'categories/:id', to: 'category#show', as: 'category', id: /\d+/
      get 'rankings', to: 'ranking#index'
      get 'rankings/:id', to: 'ranking#show', as: 'ranking', id: /\d+/
      get 'producing-areas', to: 'producing_area#index'
      get 'producing-areas/:id', to: 'producing_area#show',  as: 'producing_area', id: /\d+/
      get 'new-arrivals', to: 'new_arrival#index'
      get 'new-arrivals/:id', to: 'new_arrival#show', as: 'new_arrival', id: /\d+/
    end
    namespace :settings do
      get 'profile/show'
      get 'profile/edit'
      patch 'profile/update'
      get 'password/edit'
      patch 'password/update'
      get 'notification/show'
      patch 'notification/update'
    end
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
