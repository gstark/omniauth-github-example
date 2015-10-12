Rails.application.routes.draw do
  resources :books

  root "books#index"

  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'sessions#create'
  get    '/signin'                  => 'sessions#new',     as: :signin
  delete '/signout'                 => 'sessions#destroy', as: :signout
  get    '/auth/failure'            => 'sessions#failure'
end

