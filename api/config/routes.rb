Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  # sessions routes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :password_resets, only: %i[create update]
end
