Rails.application.routes.draw do
  devise_for :users
  resources :activities
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :notes
  resources :subsoftwares
  resources :softwares
  get 'home/index'
  # root "home#index"
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
