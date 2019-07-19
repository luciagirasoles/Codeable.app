Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  # sessions routes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :change_passwords, only: %i[update]

  resources :password_resets, only: %i[create update]
  resources :modulos do
    resources :lessons do
    end
  end

  resources :sublessons do
  end

end
