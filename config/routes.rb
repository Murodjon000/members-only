Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :posts, only: [:new, :create, :index]
  root 'posts#index'
end
