Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  root to: 'pages#home'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'
  get 'for_businesses', to: 'pages#for_businesses'
  
  resource :dashboard, only: :show
  resource :subscription, only: :show
  
  resources :companies, only: [ :index, :show, :edit, :update ] do
    resources :reviews, only: [ :new, :create ]
  end
end
