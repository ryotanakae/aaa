Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  devise_for :users
  root 'homes#top'
  get 'homes/about', to: 'homes#about', as: :about
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:new,  :index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
