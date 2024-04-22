Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'homes/about', to: 'homes#about', as: :about
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:new, :create, :index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
