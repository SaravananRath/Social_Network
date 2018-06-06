Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :friends
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :posts
  root 'posts#index'
  resources :conversations do
  resources :messages
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
