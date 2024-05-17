Rails.application.routes.draw do
  resources :activities
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :notes
  resources :subsoftwares
  resources :softwares
  get 'home/index'
  root "home#index"
end
