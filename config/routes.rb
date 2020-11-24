Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shows
  resources :seats
  resources :bookings
  resources :movies
  get 'signup_page', to: 'admins#index'
  post 'signup', to: 'admins#create'
  post 'login', to: 'sessions#create'
  get '/', to: 'sessions#index'
end
